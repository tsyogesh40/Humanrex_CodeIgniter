<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class Hod extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('hod_model');
        $this->isLoggedIn();
    }

    //for viewing details of current day
     public function staff_today()
    {
      $this->global['pageTitle'] = 'HumanRex: Staff History';
      $staff_id=$this->session->userdata('staff_id');
      //view Dept of HOD
      $dept=$this->hod_model->view_dept($staff_id);
      $data=$this->hod_model->staff_today($dept['department']);
      if($data!=false)
      {
        $result['today']=$data;
      }
      else {
        $result['today']='No record found !';
      }
      $this->loadViews("hod/today", $this->global, $result, NULL);
    }

    //for viewing details of staffs history
    public function staff_history()
    {
      $this->global['pageTitle'] = 'HumanRex: Staff History';
      $staff_id=$this->session->userdata('staff_id');

      $user_details=$this->hod_model->fetch_details($dept['department']);
      $this->loadViews("hod/today", $this->global, $user_details, NULL);
    }

  }
