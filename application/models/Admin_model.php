<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Admin_model extends CI_Model
{
  public function request_permission()
  {

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
