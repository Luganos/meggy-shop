<?php	

class ModelModuleQuickDelivery extends Model {


   //Function that create DB during install module
    public function install() {
	   
	    $sql = "CREATE TABLE `".DB_PREFIX."product_to_quick_delivery` (id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,";
            $sql .= "`product_id` INT(10))";
	    $this->db->query( $sql );
			    
   }
	
   //Function that drop  DB during uninstall module
   public function uninstall() {
   
	   $sql = "DROP TABLE `".DB_PREFIX."product_to_quick_delivery` ";
	   $this->db->query($sql);
   }
   
   
   //Function that update feature of quick shipping for product
   public function editQuickShippingFeature($product_id, $request_data) {
       
       if (isset($request_data['quick_delivery'])) {
	   
	   if ((int)$request_data['quick_delivery'] == 1) {
	   
	       $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_quick_delivery SET product_id = " . (int)$product_id); 
           } else {
	        $this->db->query("DELETE FROM `" . DB_PREFIX . "product_to_quick_delivery` WHERE product_id = " . (int)$product_id); 
           }
       }
   }
   
   //Function that get feature of quick shipping for product
   public function getProductFeatureQuickShipping($product_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_quick_delivery WHERE product_id = " . (int)$product_id);

		return $query->row;
   }
   
   //Function that delete feature of quick shipping for product
   public function deleteProductFeatureQuickShipping($product_id) {
       
	       $this->db->query("DELETE FROM `" . DB_PREFIX . "product_to_quick_delivery` WHERE product_id = " . (int)$product_id);
   }
   
   public function tableExist() {
       
       $result = $this->db->query("SHOW TABLES LIKE '" . DB_PREFIX . "product_to_quick_delivery'");
       
       if($result->num_rows > 0) {

	   return TRUE;
        } else {
	    
	    return FALSE;
	}
   }
   
}  
