<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Hod_model extends CI_Model
{
  // This Model is used to view the History about the staffs! In HOD panel

  public function view_dept($staff_id)
  {
      $this->db->select('department');
      $this->db->from('staff_details');
      $this->db->where('staff_id',$staff_id);
      if($res=$this->db->get())
      {
        return $res->row_array();
      }
      else {
        return false;
      }
  }
  public function staff_today($dept)
  {
      $date=date('Y-m-d');
    $this->db->select('*');
    $this->db->from('temp_entry');
    $this->db->where('dept',$dept);
    $this->db->where('date',$date);

    if($res=$this->db->get())
    {
      return $res->result();
    }
    else {
      return false;
    }
  }
  public function staff_history($dept)
  {

  }

}
