<?php	

class ModelModuleBindOption extends Model {
 
   //Function that get image for product
   public function getProductBySku($sku) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_bind_image WHERE `sku_bind` = '" .$this->db->escape($sku) . "'");

		return $query->row;
   }
   
} 

