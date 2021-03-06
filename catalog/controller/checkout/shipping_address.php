<?php
class ControllerCheckoutShippingAddress extends Controller {
    
    
    /**
     * Prerare data before use
     * @mix $input - raw input data
    */
    public function validateDataFromForm($input)
    {
 
        if(is_array($input)){
            
           return array_map(__METHOD__, $input);
        }

        if(!empty($input) && is_string($input)){
            return str_replace(array('\\', "\0", "\n", "\r", "'", '"', "\x1a"), array('\\\\', '\\0', '\\n', '\\r', "\\'", '\\"', '\\Z'), $input);
        }

        return $input;
 
    }

	public function save() {
		$this->load->language('checkout/checkout');

		$json = array();
                
                $post = array();
                
		// Validate if customer is logged in or he is guest.
		if (!$this->customer->isLogged() && !isset($this->session->data['account'])) {
			$json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
		}

		// Validate if shipping is required. If not the customer should not have reached this page.
		if (!$this->cart->hasShipping()) {
			$json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
		}

		// Validate cart has products and has stock.
		if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
			$json['redirect'] = $this->url->link('checkout/cart');
		}

		// Validate minimum quantity requirements.
		$products = $this->cart->getProducts();

		foreach ($products as $product) {
			$product_total = 0;

			foreach ($products as $product_2) {
				if ($product_2['product_id'] == $product['product_id']) {
					$product_total += $product_2['quantity'];
				}
			}

			if ($product['minimum'] > $product_total) {
				$json['redirect'] = $this->url->link('checkout/cart');

				break;
			}
		}
                
                if ((utf8_strlen(trim($this->request->post['street'])) < 1) || (utf8_strlen(trim($this->request->post['street'])) > 50)) {
		    $json['error']['street'] = $this->language->get('error_street');
		}

		if ((utf8_strlen(trim($this->request->post['house'])) < 1) || (utf8_strlen(trim($this->request->post['house'])) > 5) || !is_numeric($this->request->post['house'])) {
		     $json['error']['house'] = $this->language->get('error_house');
		}

		if ((utf8_strlen(trim($this->request->post['flat'])) < 1) || (utf8_strlen(trim($this->request->post['flat'])) > 5) || !is_numeric($this->request->post['flat'])) {
		    $json['error']['flat'] = $this->language->get('error_flat');
		}

		if (!$json) {
		
			      unset($this->session->data['shipping_method']);
			      unset($this->session->data['shipping_methods']);

                                
                                if ($this->customer->isLogged()) {
                                
                                          $address_id = $this->customer->getAddressId();
                    
                                          // Default Shipping Address
		                          $this->load->model('account/address');
                    
                                          $path = $this->model_account_address->getAddress($address_id);
                                          
                                          $control_path = explode(" ", strval($path['address_1'])); 
                                          
                                          if(empty($control_path[0]) && empty($this->request->post['street'])) {
                                              
                                              $json['error']['street'] = $this->language->get('error_street');
                                          } else if (!empty($this->request->post['street'])){
                                              
                                              $street = $this->validateDataFromForm(trim($this->request->post['street']));
                                          }
                                          
                                                                               
                                          if(empty($control_path[1]) && empty($this->request->post['house'])) {
                                              
                                              $json['error']['house'] = $this->language->get('error_house');
                                          } else if (!empty($this->request->post['house'])){
                                              
                                              $house = $this->validateDataFromForm(trim($this->request->post['house']));
                                          }
                                          
                                                                               
                                          if(empty($control_path[2]) && empty($this->request->post['flat'])) {
                                              
                                              $json['error']['flat'] = $this->language->get('error_flat');
                                          } else if (!empty($this->request->post['flat'])){
                                              
                                             $flat = $this->validateDataFromForm(trim($this->request->post['flat']));
                                          }
                                          
                                          
                                } else {
                                    
                                   //Get shipping address id
			           if (isset($this->session->data['shipping_address']['address_id'])) {
			              $post['address_id'] = $this->session->data['shipping_address']['address_id'];
		                   } else {
			               $post['address_id'] = $this->customer->getAddressId();
		                   }
                                    
                                    // Default Shipping Address
				    $this->load->model('account/address');

				    $this->session->data['shipping_address'] = $this->model_account_address->getAddress($post['address_id']);

				    unset($this->session->data['shipping_method']);
			            unset($this->session->data['shipping_methods']);
                                    
                                    $street = $this->validateDataFromForm(trim($this->request->post['street']));
                                    
                                    $house = $this->validateDataFromForm(trim($this->request->post['house']));
                                    
                                    $flat = $this->validateDataFromForm(trim($this->request->post['flat']));
                                    
                                    $path['firstname'] = $this->session->data['payment_address']['firstname'];
                                    $path['lastname'] = $this->session->data['payment_address']['firstname'];
                                    $path['city'] = $this->session->data['payment_address']['city'];
                                    $path['zone_id'] = $this->session->data['shipping_address']['zone_id'];
                                    $path['zone'] = $this->session->data['shipping_address']['zone'];
                                    $path['country'] = $this->session->data['shipping_address']['country'];
                                }

                                if (isset($this->session->data['shipping_address']['country_id'])) {
			             $post['country_id'] = $this->session->data['shipping_address']['country_id'];
		                } else {
			             $post['country_id'] = $this->config->get('config_country_id');
		                }
                                 
                                if (isset($this->session->data['shipping_address']['postcode'])) {
			              $post['postcode'] = $this->session->data['shipping_address']['postcode'];
		                } else {
			              $post['postcode'] = '';
		                } 
                                
                                if (isset($this->session->data['shipping_address']['zone_id'])) {
			               $post['zone_id'] = $this->session->data['shipping_address']['zone_id'];
		                } else {
			               $post['zone_id'] = $path['zone_id'];
		                }
                                
                                $post['city'] = $path['city'];
                                
                                $post['custom_field'] = '';
                                
                                $post['firstname'] = $path['firstname'];
                                
                                $post['lastname'] = $path['lastname'];
                                
                                $post['company'] = '';
                                
                                $post['zone'] = $path['zone'];
                                
                                $post['country'] = $path['country'];
                                
                                $post['address_format'] = '';
                                
                                $post['address_1'] = $street . ' ' . $house . ' ' . $flat;
                                
                                $post['address_2'] = (isset($this->request->post['department']))? $this->validateDataFromForm(trim($this->request->post['department'])) : '';
                                
                                //Get data for customer country
				$this->load->model('localisation/country');

				$country_info = $this->model_localisation_country->getCountry($post['country_id']);



				if (!$json) {
                                    
                                      //Set address for current user
                                      if ($this->customer->isLogged()) {
                                          
                                          if (!empty($path)) {
                                              
                                              $customer_path = explode(" ", strval($path['address_1'])); 
                                              $customer_path[0] = (empty($customer_path[0]))? ' ': $customer_path[0];
                                              $customer_path[1] = (empty($customer_path[1]))? ' ': $customer_path[1];
                                              $customer_path[2] = (empty($customer_path[2]))? ' ': $customer_path[2];
                                              
                                              if ((trim($this->request->post['street']) !== trim($customer_path[0])) || (trim($this->request->post['house']) !== trim($customer_path[1])) || (trim($this->request->post['flat']) !== trim($customer_path[2]))){
                                                  
                                                  // Default Shipping Address
					           $address_id = $this->model_account_address->addAddress($post);

					           $this->session->data['shipping_address'] = $this->model_account_address->getAddress($address_id);
                                                   
                                                   $this->load->model('account/activity');

					          $activity_data = array(
						                      'customer_id' => $this->customer->getId(),
						                      'name'        => $this->customer->getFirstName() . ' ' . $this->customer->getLastName()
					          );
                                             
                                                   $this->model_account_activity->addActivity('address_add', $activity_data);
                                              } else {
                                                  
                                                  $this->session->data['shipping_address'] = $post;
                                              }
                                          } else {
                                             
                                              $this->session->data['shipping_address'] = $post;
                                              
                                          }
                                          
                                      } else {
                                          
                                          $this->session->data['shipping_address'] = $post;
                                          
                                      }
                                        
					unset($this->session->data['shipping_method']);
					unset($this->session->data['shipping_methods']);

                                        $json['success'] = 1;
				}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}