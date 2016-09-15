<?php
class ControllerCheckoutPaymentMethod extends Controller {

	public function save() {
		$this->load->language('checkout/checkout');

		$json = array();

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

		if (!isset($this->request->post['payment_method'])) {
			$json['error']['warning'] = $this->language->get('error_payment');
		}
                
                if (intval($this->request->post['payment_method']) == 1) {
                            
                            $payment = "Оплата наличными";
                } else if (intval($this->request->post['payment_method']) == 2) {
                            
                            $payment = "Оплата безналичными";
                } else if (intval($this->request->post['payment_method']) == 3) {
                            
                            $payment = "Оплата Visa/MasterCard";
                }

		if (!$json) {
			$this->session->data['payment_method'] = $payment;

			$this->session->data['comment'] = '';
                        
                        $json['success'] = 1;
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
