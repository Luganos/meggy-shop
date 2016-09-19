<?php
class ControllerModuleNewgoods extends Controller {
	public function index($setting) {
            
                static $module = 0;
                
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
                
                $check_data = (isset($this->request->get['actions_goods']))? intval($this->request->get['actions_goods']): 0;
                
                //For actions goods
                if (($this->request->server['REQUEST_METHOD'] == 'GET') && $this->validate($check_data)) {
			if (isset($check_data) && $check_data == 1) {
				
                            
                           $query = $this->db->query("SELECT A.product_id FROM " . DB_PREFIX . "product A INNER JOIN " . DB_PREFIX . "product_special B ON A.product_id =  B.product_id  WHERE status = 1 AND quantity >= 1 ORDER BY date_added ASC LIMIT " . (int)$setting['limit']); 
                            
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
			
			
			              if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
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
                if (($this->request->server['REQUEST_METHOD'] == 'GET') && $this->validate($check_data)) {
			if (isset($check_data) && $check_data == 2) {
				
                            
                           $query = $this->db->query("SELECT A.product_id FROM " . DB_PREFIX . "product A INNER JOIN " . DB_PREFIX . "product_discount B ON A.product_id =  B.product_id  WHERE status = 1 ORDER BY date_added ASC LIMIT " . (int)$setting['limit']);
                            
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
			
			
			              if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
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
			              );
                                      $count++;
		              }
                
  
			      if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/discountgoods.tpl')) {
				  return $this->load->view($this->config->get('config_template') . '/template/module/discountgoods.tpl', $data);
			      } else {
			         return $this->load->view('default/template/module/discountgoods.tpl', $data);
		              }
	                   }
	              }

		}

		
		$query = $this->db->query("SELECT product_id FROM " . DB_PREFIX . "product WHERE status = 1 AND quantity >= 1 ORDER BY date_added ASC LIMIT " . (int)$setting['limit']);
		
		
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
			
			
			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
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
        
}
