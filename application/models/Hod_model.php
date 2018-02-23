<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Hod_model extends CI_Model
{

  //function for staff_permission in hod_panel
  public function staff_permission($dept,$cadre,$date)
  {
    $table=$this->select_dept_table($dept);
    $condition = "cadre =" . "'" . $cadre . "'";
    $this->db->select('*');
    $this->db->from($table);
    $this->db->where($condition);
    $this->db->where('date',$date);
    if($res=$this->db->get())
    {
      return $res->result();
    }
    else {
      return false;
    }
  }

  //function to find the total days
  public function total_days($dept,$cadre,$from,$to)
  {
    $table=$this->select_dept_table($dept);
    $condition = "cadre =" . "'" . $cadre . "'";
    $this->db->select('date');
    $this->db->distinct('date');
    $this->db->from($table);
    $this->db->where($condition);
    $this->db->where('date >=',$from);
    $this->db->where('date <=',$to);
    if($res=$this->db->get())
    {
      return $res->num_rows();
    }

  }

  //HOD Consolidated views
  public function staff_consolidated($dept,$cadre,$from,$to)
  {
    $table=$this->select_dept_table($dept);
    $condition = "cadre =" . "'" . $cadre . "'";
    $this->db->select('*');
    $this->db->from($table);
    $this->db->where($condition);
    $this->db->where('date >=',$from);
    $this->db->where('date <=',$to);
    $this->db->order_by('date ASC');

    if($res=$this->db->get())
    {
      return $res->result();
    }
    else {
      return false;
    }

  }

  //Switches various dept table
  public function select_dept_table($dept)
  {
    if($dept=='IT')
    {
      $table='IT_entry';
    }
    else if($dept=='CSE')
    {
      $table='CSE_entry';
    }
    else if($dept=='EEE')
    {
      $table='EEE_entry';
    }
    else if($dept=='ECE')
    {
      $table='ECE_entry';
    }
    else if($dept=='MECH')
    {
      $table='MECH_entry';
    }
    else if($dept=='CIVIL')
    {
      $table='CIVIL_entry';
    }
    return $table;
  }

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
  //This is used to view the unique staff_ids from the staff_details
  public function view_id($dept,$cadre)
  {
      $this->db->select('name,staff_id');
      $this->db->from('staff_details');
      $this->db->where('department',$dept);
      $this->db->where('cadre',$cadre);
      $this->db->order_by('name ASC');
      if($res=$this->db->get())
      {
        return $res->result();
      }
      else {
        return false;
      }
  }

// THis is used to view the unique dates
  public function view_dates($dept,$cadre,$from,$to)
  {
    $table=$this->select_dept_table($dept);
    //Condition base on cadre
    $condition = "cadre =" . "'" . $cadre . "'";
    $this->db->select('date');
    $this->db->distinct('date');
    $this->db->from($table);
    $this->db->where($condition);
    $this->db->where('date >=',$from);
    $this->db->where('date <=',$to);
    $this->db->order_by('date ASC');

    if($res=$this->db->get())
    {
      return $res->result();
    }
    else {
      return false;
    }

  }
  public function staff_history($dept,$cadre,$from,$to)
  {
    //this is used to select tables
    $table=$this->select_dept_table($dept);
    //Condition base on cadre
    $condition = "cadre =" . "'" . $cadre . "'";
    $this->db->select('*');
    $this->db->from($table);
    $this->db->where($condition);
    $this->db->where('date >=',$from);
    $this->db->where('date <=',$to);
    if($res=$this->db->get())
    {
      return $res->result();
    }
    else {
      return false;
    }

  }

}
