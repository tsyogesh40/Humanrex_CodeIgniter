<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Admin_model extends CI_Model
{
  public function request_permission()
  {

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
