<?php
class ControllerCheckoutGuest extends Controller {
    
    
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

		// Validate if customer is logged in.
		if ($this->customer->isLogged()) {
			$json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
		}

		// Validate cart has products and has stock.
		if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
			$json['redirect'] = $this->url->link('checkout/cart');
		}

		// Check if guest checkout is available.
		if (!$this->config->get('config_checkout_guest') || $this->config->get('config_customer_price') || $this->cart->hasDownload()) {
			$json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
		}

		if (!$json) {
			if ((utf8_strlen(trim($this->request->post['firstname'])) < 1) || (utf8_strlen(trim($this->request->post['firstname'])) > 32)) {
				$json['error']['firstname'] = $this->language->get('error_firstname');
			}

			if ((utf8_strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*.[a-z]{2,15}$/i', $this->request->post['email'])) {
				$json['error']['email'] = $this->language->get('error_email');
			}

                        if ((utf8_strlen($this->request->post['telephone']) < 7) || (utf8_strlen($this->request->post['telephone']) > 32)) {
				$json['error']['telephone'] = $this->language->get('error_telephone');
			}


			if ((utf8_strlen(trim($this->request->post['city'])) < 2) || (utf8_strlen(trim($this->request->post['city'])) > 128)) {
				$json['error']['city'] = $this->language->get('error_city');
			}


		}
                
                if (isset($this->session->data['guest']['customer_group_id'])) {
			$customer_group_id = $this->session->data['guest']['customer_group_id'];
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}

		if (!$json) {
			$this->session->data['account'] = 'guest';

			$this->session->data['guest']['customer_group_id'] = $customer_group_id;
			$this->session->data['guest']['firstname'] = $this->validateDataFromForm($this->request->post['firstname']);
			$this->session->data['guest']['email'] = $this->validateDataFromForm($this->request->post['email']);
			$this->session->data['guest']['telephone'] = $this->validateDataFromForm($this->request->post['telephone']);
                        $this->session->data['guest']['fax'] = '';
                        $this->session->data['guest']['lastname'] = '';
                        $this->session->data['guest']['custom_field'] = '';

			$this->session->data['payment_address']['firstname'] = $this->validateDataFromForm($this->request->post['firstname']);
			$this->session->data['payment_address']['city'] = $this->validateDataFromForm($this->request->post['city']);
                        $this->session->data['shipping_address']['country_id'] = $this->config->get('config_country_id');
			$this->session->data['shipping_address']['zone_id'] = $this->config->get('config_zone_id');
                        $this->session->data['payment_address']['country_id'] = $this->config->get('config_country_id');
			$this->session->data['payment_address']['zone_id'] = $this->config->get('config_zone_id');


			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);
                        
                        $json['redirect'] = $this->url->link('checkout/checkout', '', 'SSL');
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
