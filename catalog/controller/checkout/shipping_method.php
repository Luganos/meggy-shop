<?php
class ControllerCheckoutShippingMethod extends Controller {
    
    
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

		// Validate if shipping is required. If not the customer should not have reached this page.
		if (!$this->cart->hasShipping()) {
			$json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
		}

		// Validate if shipping address has been set.
		if (!isset($this->session->data['shipping_address'])) {
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

		if (!isset($this->request->post['pickup'])) {
			$json['error']['warning'] = $this->language->get('error_shipping');
		} else {
                        if (intval($this->request->post['pickup']) == 1) {
                            
                            $shipping = "Самовывоз из Новой Почты";
                        } else if (intval($this->request->post['pickup']) == 2) {
                            
                            $shipping = "Самовывоз из точки выдачи";
                        } else if (intval($this->request->post['pickup']) == 3) {
                            
                            $shipping = "Курьер Мист Экспресс";
                        }
                        

			if (!isset($shipping)) {
				$json['error']['warning'] = $this->language->get('error_shipping');
			}
		}

		if (!$json) {
			$this->session->data['shipping_method'] = $this->validateDataFromForm($shipping);

			$this->session->data['comment'] = '';
                        
                        $json['success'] = 1;
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}