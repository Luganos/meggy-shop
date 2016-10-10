<?php
class ControllerModuleNewgoods extends Controller {
	public function index($setting) {
            
                static $module = 0;
                
                $customer = $this->customer->getGroupName();
                $customer = strtolower($customer);
                
		$this->load->language('module/newgoods');
                $this->document->addScript('catalog/view/javascript/home_scroll.js');
		
		$data['heading_title'] = $this->language->get('heading_title');
		
		$data['text_tax'] = $this->language->get('text_tax');
		
		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
		
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image');
                
                $data['newgoods'] = 'newgoods' . $module++;
		
		$data['products'] = array();		

		$product_data = array();
                
                $news = (isset($this->request->get['news']))? intval($this->request->get['news']): 0;
                $actions = (isset($this->request->get['actions']))? intval($this->request->get['actions']): 0;
                $discounts = (isset($this->request->get['discounts']))? intval($this->request->get['discounts']): 0;
                
                //For actions goods
                if (($this->request->server['REQUEST_METHOD'] == 'GET') && $this->validate($actions)) {
			if (isset($actions) && $actions == 1) {
				
                            
                           $query = $this->db->query("SELECT A.product_id FROM " . DB_PREFIX . "product A INNER JOIN " . DB_PREFIX . "product_special B ON (A.product_id =  B.product_id)  WHERE status = 1 AND quantity >= 1 AND ((B.date_start = '0000-00-00' OR B.date_start < NOW()) AND (B.date_end = '0000-00-00' OR B.date_end > NOW())) AND customer_group_id = '" . (int)$this->config->get('config_customer_group_id') . "' ORDER BY date_added ASC LIMIT " . (int)$setting['limit']); 
                            
                           foreach ($query->rows as $result) { 
                               
			          $product_data[$result['product_id']] = $this->model_catalog_product->getProduct($result['product_id']);
 
                           }
					 	 		
		            $results = $product_data;
		
                            $count = 1;
                
		            if ($results) {
		              foreach ($results as $result) {
			             if ($result['image']) {
				        $image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
			             } else {
				         $image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
			             }
			
   		
			               if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || (!$this->config->get('config_customer_price'))) {
		                          $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
                                       } else {
		                          $price = false;
			               }
					
			              if ((float)$result['special']) {
				          $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			              } else {
				          $special = false;
			              }	
			
			              if ($this->config->get('config_tax')) {
				         $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
			              } else {
				         $tax = false;
			              }
			
			
			              if ($this->config->get('config_review_status')) {
				         $rating = $result['rating'];
			              } else {
				          $rating = false;
			              }
							
			              $data['products'][$count] = array(
				          'product_id'   => $result['product_id'],
				          'thumb'   	   => $image,
				          'name'         => $result['name'],
				          'description'  => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
				          'price'   	   => $price,
				          'special' 	   => $special,
				          'tax'          => $tax,
				          'rating'       => $rating,
				          'href'         => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				          'reviews'      => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
                                          'sku'          => $result['sku'],
                                          'size'         => $this->OptionForNewGoods($result['product_id'])
			              );
                                      $count++;
		              }
                
  
			      if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/actiongoods.tpl')) {
				  return $this->load->view($this->config->get('config_template') . '/template/module/actiongoods.tpl', $data);
			      } else {
			         return $this->load->view('default/template/module/actiongoods.tpl', $data);
		              }
	                   }
	              }

		}
                
                //For discount goods
                if (($this->request->server['REQUEST_METHOD'] == 'GET') && $this->validate($discounts)) {
			if (isset($discounts) && $discounts == 1) {
                            
                           $query = $this->db->query("SELECT product_id FROM " . DB_PREFIX . "product_discount WHERE quantity = 1 AND ((date_start = '0000-00-00' OR date_start < NOW()) AND (date_end = '0000-00-00' OR date_end > NOW())) AND customer_group_id = '" . (int)$this->config->get('config_customer_group_id') . "' LIMIT " . (int)$setting['limit']);
                           
                           foreach ($query->rows as $result) { 
                               
                            $product_data[$result['product_id']] = $this->model_catalog_product->getProduct($result['product_id']);
		           
                            
                           }
					 	 		
		            $results = $product_data;
		
                            $count = 1;
                
		            if ($results) {
		              foreach ($results as $result) {
			             if ($result['image']) {
				        $image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
			             } else {
				         $image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
			             }
			
		
			             $discounts = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_discount WHERE product_id = '" . (int)$result['product_id'] . "' AND customer_group_id = '" . (int)$this->config->get('config_customer_group_id') . "' AND quantity = 1 AND ((date_start = '0000-00-00' OR date_start < NOW()) AND (date_end = '0000-00-00' OR date_end > NOW())) ORDER BY quantity ASC, priority ASC, price ASC");
		                     $discount_customer = NULL;
                                     
                                     if (!empty($discounts->row['price'])) {
                                         
                                       $discount_customer = $discounts->row['price'];  
                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
			             if (!empty($discount_customer)) {
		                        $discount = $this->currency->format($this->tax->calculate($discount_customer, $result['tax_class_id'], $this->config->get('config_tax')));
                                     } else if (empty($discount_customer) && !empty($result['price'])) {
                                         $discount = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
                                     } else {
		                        $discount = false;
			             }
					
			              if ((float)$result['special']) {
				          $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			              } else {
				          $special = false;
			              }	
			
			              if ($this->config->get('config_tax')) {
				         $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
			              } else {
				         $tax = false;
			              }
			
			
			              if ($this->config->get('config_review_status')) {
				         $rating = $result['rating'];
			              } else {
				          $rating = false;
			              }
							
			              $data['products'][$count] = array(
				          'product_id'   => $result['product_id'],
				          'thumb'   	   => $image,
				          'name'         => $result['name'],
				          'description'  => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
				          'discount'   	   => $discount,
				          'special' 	   => $special,
				          'tax'          => $tax,
				          'rating'       => $rating,
				          'href'         => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				          'reviews'      => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
                                          'sku'          => $result['sku'],
                                          'size'         => $this->OptionForNewGoods($result['product_id'])
			              );
                                      $count++;
		              }
                
  

	                   }
                           
                              if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/discountgoods.tpl')) {
				  return $this->load->view($this->config->get('config_template') . '/template/module/discountgoods.tpl', $data);
			      } else {
			         return $this->load->view('default/template/module/discountgoods.tpl', $data);
		              }
	              }

		}

		
		$query = $this->db->query("SELECT product_id FROM " . DB_PREFIX . "product WHERE status = 1 ORDER BY date_added ASC LIMIT " . (int)$setting['limit']);
		
		
		foreach ($query->rows as $result) { 		
			$product_data[$result['product_id']] = $this->model_catalog_product->getProduct($result['product_id']);       
                }
					 	 		
		$results = $product_data;
		
                $count = 1;
                
		if ($results) {
		foreach ($results as $result) {
			if ($result['image']) {
				$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
			} else {
				$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
			}
                        
						
			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || (!$this->config->get('config_customer_price'))) {
		            $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
                        } else {
		            $price = false;
			}
					
			if ((float)$result['special']) {
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$special = false;
			}	
			
			if ($this->config->get('config_tax')) {
				$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
			} else {
				$tax = false;
			}
			
			
			if ($this->config->get('config_review_status')) {
				$rating = $result['rating'];
			} else {
				$rating = false;
			}
                        
							
			$data['products'][$count] = array(
				'product_id'   => $result['product_id'],
				'thumb'   	   => $image,
				'name'         => $result['name'],
				'description'  => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
				'price'   	   => $price,
				'special' 	   => $special,
				'tax'          => $tax,
				'rating'       => $rating,
				'href'         => $this->url->link('product/product', 'product_id=' . $result['product_id']),
				'reviews'      => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
                                'sku'          => $result['sku'],
                                'size'         => $this->OptionForNewGoods($result['product_id'])
			);
                        $count++;
		}
                
  
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/newgoods.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/newgoods.tpl', $data);
			} else {
			return $this->load->view('default/template/module/newgoods.tpl', $data);
		   }
	    }
	}
        
        protected function validate($check_data) {
            
               $status = TRUE;
  
		if (($check_data < 1) || ($check_data > 2)) {
			$status = FALSE;
		}
		
		return $status;
	}
        
        protected function OptionForNewGoods($product_id) {
            
            $options = array();
            
            $this->load->model('catalog/product');
            
            foreach ($this->model_catalog_product->getProductOptions($product_id) as $option) {
		   $product_option_value_data = array();
				foreach ($option['product_option_value'] as $option_value) {
					if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
			
			              		$product_option_value_data[] = array(
							'product_option_value_id' => $option_value['product_option_value_id'],
							'option_value_id'         => $option_value['option_value_id'],
							'name'                    => $option_value['name']
						);
					}
				}

				$options['options'][] = array(
					'product_option_id'    => $option['product_option_id'],
					'product_option_value' => $product_option_value_data,
					'option_id'            => $option['option_id'],
					'name'                 => $option['name'],
					'type'                 => $option['type'],
					'value'                => $option['value'],
					'required'             => $option['required']
				);
	    }
            return $options;
        }
        
}
