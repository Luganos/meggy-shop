<?php

class ControllerModuleNewslettersubscribe extends Controller {

  public function index() {
    static $module = 0;

    $this->language->load('module/newslettersubscribe');

    $data['heading_title'] = $this->language->get('heading_title');

    $data['entry_name']  = $this->language->get('entry_name');
    $data['entry_email'] = $this->language->get('entry_email');

    $data['entry_button'] = $this->language->get('entry_button');

    $data['entry_unbutton'] = $this->language->get('entry_unbutton');

    $data['option_unsubscribe'] = $this->config->get('newslettersubscribe_option_unsubscribe');

    $data['option_fields'] = $this->config->get('newslettersubscribe_option_field');

    $data['option_fields1'] = $this->config->get('newslettersubscribe_option_field1');
    $data['option_fields2'] = $this->config->get('newslettersubscribe_option_field2');
    $data['option_fields3'] = $this->config->get('newslettersubscribe_option_field3');
    $data['option_fields4'] = $this->config->get('newslettersubscribe_option_field4');
    $data['option_fields5'] = $this->config->get('newslettersubscribe_option_field5');
    $data['option_fields6'] = $this->config->get('newslettersubscribe_option_field6');

    $data['text_subscribe'] = $this->language->get('text_subscribe');

    $data['module'] = $module++;

    if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/newslettersubscribe.tpl')) {
      return $this->load->view($this->config->get('config_template') . '/template/module/newslettersubscribe.tpl', $data);
    } else {
      return $this->load->view('default/template/module/newslettersubscribe.tpl', $data);
    }
  }

  public function subscribe() {
    $this->language->load('module/newslettersubscribe');

    $this->load->model('account/newslettersubscribe');
    
    $this->model_account_newslettersubscribe->check_db();

    if (isset($this->request->post['subscribe_email']) && filter_var($this->request->post['subscribe_email'], FILTER_VALIDATE_EMAIL)) {

      if ($this->config->get('newslettersubscribe_registered') and $this->model_account_newslettersubscribe->checkRegisteredUser($this->request->post)) {
        $this->model_account_newslettersubscribe->UpdateRegisterUsers($this->request->post, 1);

        echo json_encode(array('status' => true, 'message' => $this->language->get('subscribe')));

      } else if (!$this->model_account_newslettersubscribe->checkmailid($this->request->post)) {

        $this->model_account_newslettersubscribe->subscribe($this->request->post);

        echo json_encode(array('status' => true, 'message' => $this->language->get('subscribe')));

        if ($this->config->get('newslettersubscribe_mail_status')) {

          $subject = $this->language->get('mail_subject');

          $subscribe_email = $this->request->post['subscribe_email'];
          $subscribe_name  = false;
          if (isset($this->request->post['subscribe_name'])) {
            $subscribe_name = $this->request->post['subscribe_name'];
          }

          $message = '<table width="60%" cellpadding="2"  cellspacing="1" border="0">
				  	         <tr>
							   <td> Email </td>
							   <td> ' . $subscribe_email . ' </td>';
          if ($subscribe_name) {
            $message .= '</tr>
				  	         <tr>
							   <td> Name  </td>
							   <td> ' . $subscribe_name . ' </td>
							 </tr>';
          }

          $message .= '</table>';

          $mail                = new Mail();
          $mail->protocol      = $this->config->get('config_mail_protocol');
          $mail->parameter     = $this->config->get('config_mail_parameter');
          $mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
          $mail->smtp_username = $this->config->get('config_mail_smtp_username');
          $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
          $mail->smtp_port     = $this->config->get('config_mail_smtp_port');
          $mail->smtp_timeout  = $this->config->get('config_mail_smtp_timeout');

          $mail->setTo($this->config->get('config_email'));
          $mail->setFrom($this->config->get('config_email'));
          $mail->setSender($this->config->get('config_name'));
          $mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
          $mail->setHtml($message);
          $mail->send();
        }
      } else {
        echo json_encode(array('status' => false, 'message' => $this->language->get('alreadyexist')));
      }
    } else {
      echo json_encode(array('status' => false, 'message' => $this->language->get('error_invalid')));
    }
  }

  public function unsubscribe() {
    $this->language->load('module/newslettersubscribe');
    $this->load->model('account/newslettersubscribe');
    
    $this->model_account_newslettersubscribe->check_db();

    if (isset($this->request->post['subscribe_email']) and filter_var($this->request->post['subscribe_email'], FILTER_VALIDATE_EMAIL)) {
      if ($this->config->get('newslettersubscribe_registered') and $this->model_account_newslettersubscribe->checkRegisteredUser($this->request->post)) {
        $this->model_account_newslettersubscribe->UpdateRegisterUsers($this->request->post, 0);

        echo json_encode(array('status' => true, 'message' => $this->language->get('unsubscribe')));
      } else if (!$this->model_account_newslettersubscribe->checkmailid($this->request->post)) {
        echo json_encode(array('status' => false, 'message' => $this->language->get('notexist')));
      } else {
        if ($this->config->get('newslettersubscribe_option_unsubscribe')) {
          $this->model_account_newslettersubscribe->unsubscribe($this->request->post);

          echo json_encode(array('status' => true, 'message' => $this->language->get('unsubscribe')));
        }
      }
    } else {
      echo json_encode(array('status' => false, 'message' => $this->language->get('error_invalid')));
    }
  }
}
