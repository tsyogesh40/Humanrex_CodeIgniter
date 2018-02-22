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
    public function staff_history_view()
    {

      $this->global['pageTitle'] = 'HumanRex: Fetch Staff History ';
      $this->loadViews("hod/history",$this->global,NULL,NULL);
    }

    public function staff_history()
    {
      $this->global['pageTitle'] = 'HumanRex: History Page';
      $staff_id=$this->session->userdata('staff_id');

      //hod/history.php form inputs
      $cadre=$this->input->post('cadre');
      $from_date=$this->input->post('from_date');
      $to_date=$this->input->post('to_date');

      $datas=array('cadre'=>$cadre,'from'=>$from_date,'to'=>$to_date);
      $dept=$this->hod_model->view_dept($staff_id);
      $result=$this->hod_model->staff_history($dept['department'],$cadre,$from_date,$to_date);
      //to get unique dates for printing table header
      $unique_dates=$this->hod_model->view_dates($dept['department'],$cadre,$from_date,$to_date);
      $unique_id=$this->hod_model->view_id($dept['department'],$cadre);
      if($result!=false)
      {
        $data['history']=$result;
        $data['info']=$datas;
        $data['dates']=$unique_dates;
        $data['staff_id']=$unique_id;
      }
      else {
        $data['history']='No Records Found !';
      }
      $this->loadViews("hod/history_result", $this->global,$data, NULL);
    }

  }
