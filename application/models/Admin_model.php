<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Admin_model extends CI_Model
{

/*Permission Section */
function add_permission($datas)
{
  $this->db->insert('permission',$datas);
}

function viewall_permission()
{
  if($res=$this->db->get('permission'))
  {
    return $res->result();
  }
  else {
    return false;
  }
}
function fetch_permission($staff_id,$date)
{
  $this->db->select('*');
  $this->db->from('permission');
  $this->db->where('staff_id',$staff_id);
  $this->db->where('date',$date);
  $res=$this->db->get();
  return $res->result();
}

function update_permission($staff_id,$date,$data)
{
  $this->db->where('staff_id',$staff_id);
  $this->db->where('date',$date);
  $this->db->update('permission',$data);
}

function delete_permission($staff_id,$date)
{
  $this->db->delete('permission',array('staff_id'=>$staff_id,'date'=>$date));
}

/*Permission Section End */

  /*
  Default Time section
  */
  function view_default_time()
  {
    if($res=$this->db->get('default_time'))
      return $res->result();
    else {
      return false;
    }
  }

  function fetch_default_time($cadre)
  {
    $this->db->select('*');
    $this->db->from('default_time');
    $this->db->where('cadre',$cadre);
    $res=$this->db->get();
    return $res->result();
  }

  function update_default_time($cadre,$datas)
  {
    $this->db->where('cadre',$cadre);
    $this->db->update('default_time',$datas);
  }
  /*
  Default Time section End
  */


  //edit Attendence section
  public function view_attendence()
  {
    if($res=$this->db->get('temp_entry'))
    {
        return $res->result();
    }
    else {
      return false;
    }

  }
  public function add_attendence($datas)
  {
    $this->db->insert('temp_entry',$datas);
  }

  public function fetch_attendence($staff_id,$date)
  {
    $this->db->select('*');
    $this->db->from('temp_entry');
    $this->db->where('staff_id',$staff_id);
    $this->db->where('date',$date);
    $res=$this->db->get();
    return $res->result();
  }

  public function update_attendence($staff_id,$date,$data)
  {
    $this->db->where('staff_id',$staff_id);
    $this->db->where('date',$date);
    $this->db->update('temp_entry',$data);
  }

  public function delete_attendence($staff_id,$date)
  {
    $this->db->delete('temp_entry',array('staff_id'=>$staff_id,'date'=>$date));
  }
  public function search_attencence($searchtext)
  {
    $this->db->select('*');
    $this->db->from('temp_entry');
    if(!empty($searchtext)) {
        $likeCriteria = "(name  LIKE '%".$searchtext."%'
                        OR  dept  LIKE '%".$searchtext."%'
                        OR  cadre  LIKE '%".$searchtext."%'
                        OR  staff_id LIKE '%".$searchtext."%'
                        OR  date  LIKE '%".$searchtext."%')";
        $this->db->where($likeCriteria);
    }
    if($query = $this->db->get())
      return $query->result();
    else {
      return false;
      }
  }

  //end of edit Attendence


  //function to view fingerPrints
  public function view_fingerprints($staff_id)
  {
  $this->db->select('*');
  $this->db->from('fingerprint_details');
  $this->db->where('staff_id',$staff_id);
  if($res=$this->db->get())
    return $res->result();
  else {
    return false;
  }

  }
//function to fetch fingerprint
  public function fetch_fingerprint($staff_id,$finger_code)
  {
    $this->db->select('*');
    $this->db->from('fingerprint_details');
    $this->db->where('staff_id',$staff_id);
    $this->db->where('finger_code',$finger_code);

    return $this->db->get()->result();
  }
  //update fingerprint
  public function update_fingerprint($datas,$staff_id,$finger_code)
{
  $this->db->where('staff_id',$staff_id);
  $this->db->where('finger_code',$finger_code);
  $this->db->update('fingerprint_details',$datas);
}
  //delete fingerPrint
  function delete_fingerprint($staff_id,$finger_code)
  {
    $this->db->delete('fingerprint_details',array('staff_id'=>$staff_id,'finger_code'=>$finger_code));
  }


  //function for controller
  public function view_counter()
  {
    if($res=$this->db->get('counter'))
    {
      return $res->result();
    }
    else {
      false;
    }

  }

  //add counter  in counter table

  public function add_counter($datas)
  {
    $this->db->insert('counter',$datas);
  }
  //fetch counter values to update
  public function fetch_counter($staff_id)
  {
    $res=$this->db->get_where('counter',array('staff_id'=>$staff_id));
    return $res->result();
  }
  //update counter table
  public function update_counter($staff_id,$datas)
  {
  $this->db->where('staff_id',$staff_id);
  $this->db->update('counter',$datas);
  }
  //delete counter
  public function delete_counter($staff_id)
{
  $this->db->delete('counter',array('staff_id'=>$staff_id));
}
  //retrieves all the altered time
  public function view_altered_time()
  {
    if($res=$this->db->get('altered_time'))
    {
      return $res->result();
    }
    else {
      return false;
    }
  }

  //add new time view
  public function add_edit_altered_time($date,$cadre)
  {
      $res=$this->db->get_where('altered_time',array('date'=>$date,'cadre'=>$cadre));
      return $res->result();
  }

  public function add_altered_time($data)
  {
    $this->db->insert('altered_time',$data);
  }

//upate the altered time
  public function update_altered_time($data,$date,$cadre)
  {
    $this->db->where('date',$date);
    $this->db->where('cadre',$cadre);
    $this->db->update('altered_time',$data);
  }

  //deleting the altered time
  public function delete_altered_time($data)
  {
    $this->db->delete('altered_time',$data);
  }
}
