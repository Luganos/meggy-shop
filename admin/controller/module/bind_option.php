<?php

	class ControllerModuleBindOption extends Controller {
	
	
	   public function index() {
	   
	   
	        $this->language->load('module/bind_option');
	        $this->document->setTitle($this->language->get('heading_title'));
	   }

	    public function install() {

               	 $this->load->model('module/bind_option');
	         $this->model_module_bind_option->install();

	    }

	     

	    public function uninstall() {

                 $this->load->model('module/bind_option');
	         $this->model_module_bind_option->uninstall();

	    }

	     

	}
