<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

class Principal extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('principal_model');
        $this->isLoggedIn();
    }

    public function today()
    {
      $this->global['pageTitle'] = 'HumanRex: Staff History';
      $staff_id=$this->session->userdata('staff_id');

      $dept=$this->hod_model->view_dept($staff_id);
      $data=$this->hod_model->staff_today($dept['department']);
      if($data!=false)
      {
        $result['today']=$data;
      }
      else {
        $result['today']='No record found !';
      }
      $this->loadViews("principal/today", $this->global, $result, NULL);

    }

  }
