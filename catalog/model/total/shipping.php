<?php
class ModelTotalShipping extends Model {
	public function getTotal(&$total_data, &$total, &$taxes) {
		if ($this->cart->hasShipping() && isset($this->session->data['shipping_method'])) {
			$total_data[] = array(
				'code'       => 'shipping',
				'title'      => 'Доставка',
				'value'      => 'Бесплатная',
				'sort_order' => '1'
			);


			$total += 0;
		}
	}
}