<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

class Admin extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('admin_model');
        $this->isLoggedIn();
    }


    public function request_permission_view()
    {
      $this->global['pageTitle'] = 'HumanRex: Request Permission ';
      $this->loadViews("admin/request_permission_view",$this->global,NULL,NULL);
    }

    //counter start

    public function view_counter()
    {
      $this->global['pageTitle'] = 'HumanRex: Counter OverView';
      $res=$this->admin_model->view_counter();
      if($res!=false)
      {
        $result['datas']=$res;
      }
      else {
        $result['datas']="No records found!";
      }

      $this->loadViews("admin/view_counter",$this->global,$result,NULL);
    }

    //add counter view
    public function add_counter()
    {
      $this->global['pageTitle'] = 'HumanRex: Add counter';
      $staff_id=$this->input->post('staff_id');
      $name=$this->input->post('name');
      $count=$this->input->post('count');
      $late_days=$this->input->post('late_days');
      $datas=array('staff_id'=>$staff_id,'name'=>$name,'count'=>$count,'late_days'=>$late_days);
      $this->admin_model->add_counter($datas);
      redirect('view-counter');
    }

    //update counter
    public function update_counter()
    {
      $this->global['pageTitle'] = 'HumanRex: Update counter';
      $staff_id=$this->input->post('staff_id');
      $name=$this->input->post('name');
      $count=$this->input->post('count');
      $late_days=$this->input->post('late_days');
      $datas=array('staff_id'=>$staff_id,'name'=>$name,'count'=>$count,'late_days'=>$late_days);
      $this->admin_model->update_counter($staff_id,$datas);
      redirect('view-counter');
    }
    //deleting Counter
    public function delete_counter($staff_id=NULL)
    {
      $this->global['pageTitle'] = 'HumanRex: Delete counter';
    if($staff_id!=NULL)
    {
      $this->admin_model->delete_counter($staff_id);
    }
    redirect('view-counter');
    }
    public function add_edit_counter($staff_id=NULL)
    {

      if($staff_id==NULL)
      {
        $this->global['pageTitle'] = 'HumanRex: Add counter';
        $this->loadViews("admin/add_counter",$this->global,NULL,NULL);
      }
      else {
        $this->global['pageTitle'] = 'HumanRex: Edit Counter';
        $res['counter']=$this->admin_model->fetch_counter($staff_id);
        $this->loadViews("admin/update_counter",$this->global,$res,NULL);
      }
    }


    //counter end

    //view all altered time from the altered time table
    public function view_altered_time()
    {
      $this->global['pageTitle'] = 'HumanRex: View Altered Time';
      $res=$this->admin_model->view_altered_time();
      if($res!=false)
      {
        $result['datas']=$res;
      }
      else {
        $result['datas']="No records found!";
      }
      $this->loadViews("admin/altered_time_view",$this->global,$result,NULL);
    }


    //add or edit altered time view
    public function add_edit_altered_time($date=NULL,$cadre=NULL)
    {
      $this->global['pageTitle'] = 'HumanRex: View Altered Time';

      if($date==NULL &&$cadre==NULL)
      {

          $this->loadViews("admin/add_altered_time",$this->global,NULL,NULL);
      }
      else {
        $res['data']=$this->admin_model->add_edit_altered_time($date,$cadre);
          $this->loadViews("admin/edit_altered_time",$this->global,$res,NULL);
      }

    }

    public function add_altered_time()
    {
      $this->global['pageTitle'] = 'HumanRex: Add Altered Time';
      $date=$this->input->post('date');
      $in_time=$this->input->post('in_time');
      $out_time=$this->input->post('out_time');
      $cadre=$this->input->post('cadre');
      $half_wrk=$this->input->post('half_wrk');
      $full_wrk=$this->input->post('full_wrk');

      $datas=array('date'=>$date,'in_time'=>$in_time,'out_time'=>$out_time,'cadre'=>$cadre,'half_wrk'=>$half_wrk,'full_wrk'=>$full_wrk);
      $this->admin_model->add_altered_time($datas);
      redirect('view-altered-time');
    }

    //update altered time
    public function update_altered_time()
    {
      $this->global['pageTitle'] = 'HumanRex: Add Altered Time';
      $date=$this->input->post('date');
      $in_time=$this->input->post('in_time');
      $out_time=$this->input->post('out_time');
      $cadre=$this->input->post('cadre');
      $half_wrk=$this->input->post('half_wrk');
      $full_wrk=$this->input->post('full_wrk');

      $datas=array('date'=>$date,'in_time'=>$in_time,'out_time'=>$out_time,'cadre'=>$cadre,'half_wrk'=>$half_wrk,'full_wrk'=>$full_wrk);
      $this->admin_model->update_altered_time($datas,$date,$cadre);
      redirect('view-altered-time');
    }

    //delete the altered time
    public function delete_altered_time($date,$cadre)
    {
      $this->global['pageTitle'] = 'HumanRex: Altered Time deleted';
      $data=array('date'=>$date,'cadre'=>$cadre);
      $this->admin_model->delete_altered_time($data);
      //$this->view_altered_time();
      redirect('view-altered-time');
    }

}
