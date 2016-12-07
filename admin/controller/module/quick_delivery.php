<?php
 
class ControllerModuleQuickDelivery extends Controller {
	
	
	   public function index() {
	       
	       
	        $this->language->load('module/quick_delivery');
	        $this->document->setTitle($this->language->get('heading_title'));
		
		$data['heading_title'] = $this->language->get('heading_title');
		
		$data['error_warning'] = NULL;
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);
		
                $data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/quick_delivery', 'token=' . $this->session->data['token'], 'SSL')
	        );
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/quick_delivery.tpl', $data));
	   }

	    public function install() {

               	 $this->load->model('module/quick_delivery');
	         $this->model_module_quick_delivery->install();

	    }

	     

	    public function uninstall() {

                 $this->load->model('module/quick_delivery');
	         $this->model_module_quick_delivery->uninstall();

	    }
	    
	    public function create() {
  
                return $this;
            }
	    
	    public function getQuickShippingFeature($product_id) {
		
		 $this->load->model('module/quick_delivery');
		 
		 if ($this->model_module_quick_delivery->tableExist()) {
		 
	            $delivery = $this->model_module_quick_delivery->getProductFeatureQuickShipping($product_id);
		
		    if (empty($delivery)) {
		     
		        return NULL;
		    } else {
		     
		        return TRUE;
		    }
		 }
	    }
	    
	    public function editQuickShippingFeature($product_id, $request_data) {
		
		 $this->load->model('module/quick_delivery');
		 
		 if ($this->model_module_quick_delivery->tableExist()) {
		     
		    $this->model_module_quick_delivery->editQuickShippingFeature($product_id, $request_data); 
		 }
	         
		
		
		
	    }
	    
	    public function deleteQuickShippingFeature($product_id) {
		
		 $this->load->model('module/quick_delivery');
		 
		  if ($this->model_module_quick_delivery->tableExist()) {
		 
	              $this->model_module_quick_delivery->deleteProductFeatureQuickShipping($product_id);
		  }
	    }

	     
 }

