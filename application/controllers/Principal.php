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

    public function history()
    {
      $this->global['pageTitle'] = 'HumanRex: Staffs History';
      $cadre=$this->input->post('cadre');
      $dept=$this->input->post('dept');
      $from=$this->input->post('from_date');
      $to=$this->input->post('to_date');
      $info=array('cadre'=>$cadre,'dept'=>$dept,'from'=>$from,'to'=>$to);
      $unique_dates=$this->principal_model->unique_dates($from,$to);
      $unique_names=$this->principal_model->unique_names();
      if($cadre=='TNT')
      {

        $data=$this->principal_model->fetch_T_and_NT($dept,$from,$to);
        if($data!=false)
         {
           $result['data']=$data;
           $result['info']=$info;
           $result['dates']=$unique_dates;
           $result['names']=$unique_names;
         }
         else {
           $result['data']='No record found !';
           $result['info']=$info;
         }

        $this->loadViews("principal/history_t_and_nt_result", $this->global,$result, NULL);
      }
      else {

        $data=$this->principal_model->fetch_T_or_NT($cadre,$dept,$from,$to);
        if($data!=false)
         {
           $result['data']=$data;
           $result['info']=$info;
         }
         else {
           $result['data']='No record found !';
           $result['info']=$info;
         }

        $this->loadViews("principal/history_t_or_nt_result", $this->global,$result, NULL);
      }

    }



    //Loads history.php in the views/principal
    public function history_view()
    {
      $this->global['pageTitle'] = 'HumanRex: Staffs History';
      $this->loadViews("principal/history", $this->global,NULL, NULL);
    }



    //loads today details in the page views/today_overview
    public function today($dept=NULL)
    {
      $this->global['pageTitle'] = 'HumanRex: Today Details';

      $data=$this->principal_model->view_today();

     if($data!=false)
      {
        $result['today']=$data;
      }
      else {
        $result['today']='No record found !';
      }

      if($dept==NULL)
      {
          $this->loadViews("principal/today_overview", $this->global,$result, NULL);
      }
      else
      {
          $res=$this->principal_model->view_department_today($dept);
          $info=array('dept'=>$dept,'date'=>date('d-m-Y'),'time'=>date('h:i:sa'));
          if($res!=false)
          {
            $result['today']=$res;
            $result['info']=$info;
          }
          else {
            $result['today']='No record found !';
          }

          $this->loadViews("principal/today_dept_wise", $this->global,$result, NULL);
      }

    }

  }
