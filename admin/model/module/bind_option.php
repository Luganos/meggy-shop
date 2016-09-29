<?php	

class ModelModuleBindOption extends Model {


   //Function that create DB during install module
    public function install() {
	   
	    $sql = "CREATE TABLE `".DB_PREFIX."product_to_bind_image` (id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,";
            $sql .= "`product_id` INT(10),";
            $sql .= "`sku_bind` VARCHAR(64),";
	    $sql .= "`image_for_bind` TEXT(1024))";
	    $this->db->query( $sql );
			    
   }
	
   //Function that drop  DB during uninstall module
   public function uninstall() {
   
	   $sql = "DROP TABLE `".DB_PREFIX."product_to_bind_image` ";
	   $this->db->query($sql);
   }
   
   
   //Function that add image of colour for product
   public function addImageForColour($product_id, $request_data) {
       
       $this->db->query("DELETE FROM `" . DB_PREFIX . "product_to_bind_image` WHERE product_id = " . (int)$product_id);
       
       $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_bind_image SET product_id = '" . (int)$product_id . "', image_for_bind = '" . $this->db->escape($request_data['image_for_colour']['image']) . "', sku_bind = '" . $this->db->escape($request_data['sku']) . "'");
       
   }
   
   //Function that get image for product
   public function getProduct($product_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_bind_image WHERE product_id = '" . (int)$product_id . "'");

		return $query->row;
   }
   
}  
