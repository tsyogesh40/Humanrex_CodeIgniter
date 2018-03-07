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
/*
Permission section
*/
public function permission_view()
{
  $this->global['pageTitle'] = 'HumanRex: Request Permission ';
  $this->loadViews("admin/request_permission_view",$this->global,NULL,NULL);
}

public function add_permission()
{
$this->global['pageTitle'] = 'HumanRex: Add Permission ';
$data=array(
  'date'=>$this->input->post('date'),
  'name'=>$this->input->post('name'),
  'staff_id'=>$this->input->post('staff_id'),
  'cadre'=>$this->input->post('cadre'),
  'in_time'=>$this->input->post('in_time'),
  'out_time'=>$this->input->post('out_time'),
  'p_value'=>$this->input->post('type'),
  'reason'=>$this->input->post('reason'),
  'physical_presence'=>$this->input->post('physical_presence')
);
$this->admin_model->add_permission($data);
redirect('request-permission');
}

function viewall_permission()
{
$this->global['pageTitle'] = 'HumanRex: Permission List ';
$res=$this->admin_model->viewall_permission();
if($res!=false)
{
  $result['datas']=$res;
}
else {
  $result['datas']="No records found!";
}
$this->loadViews("admin/view_permission",$this->global,$result,NULL);
}

function edit_permission($staff_id,$date)
{
  $this->global['pageTitle'] = 'HumanRex: Edit Permission ';
  $res['datas']=$this->admin_model->fetch_permission($staff_id,$date);
  $this->loadViews("admin/edit_permission",$this->global,$res,NULL);

}

public function update_permission()
{
  $this->global['pageTitle'] = 'HumanRex: Update Permission ';
  $staff_id=$this->input->post('staff_id_org');
  $date=$this->input->post('date_org');
  $data=array(
    'date'=>$this->input->post('date'),
    'name'=>$this->input->post('name'),
    'staff_id'=>$this->input->post('staff_id'),
    'cadre'=>$this->input->post('cadre'),
    'in_time'=>$this->input->post('in_time'),
    'out_time'=>$this->input->post('out_time'),
    'p_value'=>$this->input->post('type'),
    'reason'=>$this->input->post('reason'),
    'physical_presence'=>$this->input->post('physical_presence')
  );
  $this->admin_model->update_permission($staff_id,$date,$data);
  redirect('view-permission');


 function delete_per($staff_id,$date)
{
  $this->global['pageTitle'] = 'HumanRex: Delete Permission ';
  $this->admin_model->delete_per($staff_id,$date);
  redirect('view-permission');
}

}

/*
permission Section - End
*/
    //edit attendence section
    public function view_attendence()
    {
      $this->global['pageTitle'] = 'HumanRex: View Attendence';
      $res=$this->admin_model->view_attendence();
      $searchtext='';
      if($res!=false)
      {
        $result['datas']=$res;
        $result['searchtext']=$searchtext;
      }
      else {
        $result['datas']="No records found!";

      }
      $this->loadViews("admin/edit_attendence_view",$this->global,$result,NULL);
    }

    public function add_edit_attendence($staff_id=NULL,$date=NULL)
    {
      if($staff_id==NULL&&$date==NULL)
      {
        $this->global['pageTitle'] = 'HumanRex: Add attendence entry';
        $this->loadViews("admin/add_attendence",$this->global,NULL,NULL);
      }
      else {
        $this->global['pageTitle'] = 'HumanRex: Edit Attendence';
        $res['data']=$this->admin_model->fetch_attendence($staff_id,$date);
        $this->loadViews("admin/edit_attendence",$this->global,$res,NULL);
      }
    }

    public function add_attendence()
    {
      $this->global['pageTitle'] = 'HumanRex: Add Attendence';
      $data=array(
      'date'=>$this->input->post('date'),
      'name'=>$this->input->post('name'),
      'cadre'=>$this->input->post('cadre'),
      'staff_id'=>$this->input->post('staff_id'),
      'store_id'=>$this->input->post('store_id'),
      'dept'=>$this->input->post('dept'),
      'in_time'=>$this->input->post('in_time'),
      'out_time'=>$this->input->post('out_time'),
      'p_value'=>$this->input->post('p_value'),
      'no_of_entry'=>$this->input->post('no_of_entry'),
      'status'=>$this->input->post('status'),
      'semester'=>$this->input->post('semester'),
      'year'=>$this->input->post('year')
    );
    $this->admin_model->add_attendence($data);
    redirect('view-attendence');
    }

    public function edit_attendence()
    {
      $this->global['pageTitle'] = 'HumanRex: Edit Attendence';
        $staff_id=$this->input->post('staff_id');
        $date=$this->input->post('date');
        $data=array(
        'date'=>$this->input->post('date'),
        'name'=>$this->input->post('name'),
        'cadre'=>$this->input->post('cadre'),
        'staff_id'=>$this->input->post('staff_id'),
        'store_id'=>$this->input->post('store_id'),
        'dept'=>$this->input->post('dept'),
        'in_time'=>$this->input->post('in_time'),
        'out_time'=>$this->input->post('out_time'),
        'p_value'=>$this->input->post('p_value'),
        'no_of_entry'=>$this->input->post('no_of_entry'),
        'status'=>$this->input->post('status'),
        'semester'=>$this->input->post('semester'),
        'year'=>$this->input->post('year')
      );
      $this->admin_model->update_attendence($staff_id,$date,$data);
      redirect('view-attendence');
    }

    public function delete_attendence($staff_id,$date)
    {
      $this->global['pageTitle'] = 'HumanRex: Delete Attendence';
      $this->admin_model->delete_attendence($staff_id,$date);
      redirect('view-attendence');
    }

    public function attendence_listing()
    {
      $this->global['pageTitle'] = 'HumanRex: Search Attendence';
    $searchtext = $this->security->xss_clean($this->input->post('searchtext'));
    $res['data']=$this->admin_model->search_attencence($searchtext);
    if($res!=false)
    {
      $result['datas']=$res['data'];
      $result['searchtext']=$searchtext;
    }
    else {
      $result['datas']="No records found!";
    }
    $this->loadViews("admin/edit_attendence_view",$this->global,$result,NULL);
    }


  //end of edit attendence section

    //select staff ID to view fingerprints
    public function select_fingerprints()
    {
      $this->global['pageTitle'] = 'HumanRex: Staffs fingerPrints ';
      $this->loadViews("admin/select_fingerprints",$this->global,NULL,NULL);
    }

    //view the Fingerprints
    public function view_fingerprints()
    {
      $staff_id=$this->input->post('staff_id');
      $this->global['pageTitle'] = 'HumanRex: Staffs fingerPrints ';
      $res=$this->admin_model->view_fingerprints($staff_id);
      if($res!=false)
      {
        $result['datas']=$res;
      }
      else {
        $result['datas']="No records found!";
      }
      $this->loadViews("admin/view_fingerprints",$this->global,$result,NULL);
    }

    //edit_fingerprint
    function edit_fingerprint($staff_id,$finger_code)
    {
      $this->global['pageTitle'] = 'HumanRex: Update fingerprint';
      $res['fingerprint']=$this->admin_model->fetch_fingerprint($staff_id,$finger_code);
      $this->loadViews("admin/edit_fingerprint",$this->global,$res,NULL);
    }
    //update fingerPrints
    function update_fingerprint()
    {
      $this->global['pageTitle'] = 'HumanRex: Update fingerprint';
      $staff_id=$this->input->post('staff_id');
      $name=$this->input->post('name');
      $store_id=$this->input->post('store_id');
      $finger_name=$this->input->post('finger_name');
      $finger_code=$this->input->post('finger_code');
      $datas=array('staff_id'=>$staff_id,'name'=>$name,'store_id'=>$store_id,'finger_name'=>$finger_name,'finger_code'=>$finger_code);
      $this->admin_model->update_fingerprint($datas,$staff_id,$finger_code);
      //redirect('select-fingerprints');
      $res=$this->admin_model->view_fingerprints($staff_id);
      if($res!=false)
      {
        $result['datas']=$res;
      }
      else {
        $result['datas']="No records found!";
      }
      $this->loadViews("admin/view_fingerprints",$this->global,$result,NULL);
    }
    //delete fingerPrints
    function delete_fingerprint($staff_id,$finger_code)
    {
      $this->admin_model->delete_fingerprint($staff_id,$finger_code);
      redirect('select-fingerprints');
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

/*
Default Time section
*/

  public function view_default_time()
  {
    $this->global['pageTitle'] = 'HumanRex: View Default Time';
    $res=$this->admin_model->view_default_time();
    if($res!=false)
    {
      $result['datas']=$res;
    }
    else {
      $result['datas']="No records found!";
    }
    $this->loadViews("admin/default_time_view",$this->global,$result,NULL);
  }

  public function edit_default_time($cadre)
  {
    $this->global['pageTitle'] = 'HumanRex: Edit Default Time';
    $res['datas']=$this->admin_model->fetch_default_time($cadre);
    $this->loadViews("admin/edit_default_time",$this->global,$res,NULL);
  }
  public function update_default_time()
  {
    $cadre=$this->input->post('cadre');
    $in_time=$this->input->post('int_time');
    $out_time=$this->input->post('out_time');
    $half_wrk=$this->input->post('half_wrk');
    $full_wrk=$this->input->post('full_wrk');
    $data=array('cadre'=>$cadre,'in_time'=>$in_time,'out_time'=>$out_time,'half_wrk'=>$half_wrk,'full_wrk'=>$full_wrk);
    $this->admin_model->update_default_time($cadre,$data);
    redirect('view-default-time');
  }

/*
Default Time section End
*/

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
