<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Principal_model extends CI_Model
{
public function permission_T_or_NT($cadre,$dept,$date)
{
  if($dept=='ALL')
  {
    $IT=$this->db->get_where('IT_entry',array('cadre'=>$cadre,'date'=>$date));
    $CSE=$this->db->get_where('CSE_entry',array('cadre'=>$cadre,'date'=>$date));
    $EEE=$this->db->get_where('EEE_entry',array('cadre'=>$cadre,'date'=>$date));
    $ECE=$this->db->get_where('ECE_entry',array('cadre'=>$cadre,'date'=>$date));
    $MECH=$this->db->get_where('MECH_entry',array('cadre'=>$cadre,'date'=>$date));
    $CIVIL=$this->db->get_where('CIVIL_entry',array('cadre'=>$cadre,'date'=>$date));
    $PHYSICS=$this->db->get_where('PHYSICS_entry',array('cadre'=>$cadre,'date'=>$date));
    $CHEMISTRY=$this->db->get_where('CHEMISTRY_entry',array('cadre'=>$cadre,'date'=>$date));
    $MATHS=$this->db->get_where('MATHS_entry',array('cadre'=>$cadre,'date'=>$date));
    $ENGLISH=$this->db->get_where('ENGLISH_entry',array('cadre'=>$cadre,'date'=>$date));
    $OFFICE=$this->db->get_where('OFFICE_entry',array('cadre'=>$cadre,'date'=>$date));

    $res=array(
      'IT'=>$IT->result(),
      'CSE'=>$CSE->result(),
      'EEE'=>$EEE->result(),
      'MECH'=>$MECH->result(),
      'ECE'=>$ECE->result(),
      'CIVIL'=>$CIVIL->result(),
      'PHYSICS'=>$PHYSICS->result(),
      'CHEMISTRY'=>$CHEMISTRY->result(),
      'MATHS'=>$MATHS->result(),
      'ENGLISH'=>$ENGLISH->result(),
      'OFFICE'=>$OFFICE->result()
    );

    return $res;
  }
  else {
    $table=$this->select_dept_table($dept);
    $this->db->select('*');
    $this->db->from($table);
    $this->db->where('cadre',$cadre);
    $this->db->where('date',$date);
    if($res=$this->db->get())
    {
      $data=array($dept=>$res->result());
      return $data;
    }
    else {
        return false;
    }

  }
}


//permissions for both teaching and non teaching staffs
  public function permission_T_and_NT($dept,$date)
  {
    if($dept=='ALL')
    {
      $IT=$this->db->get_where('IT_entry',array('date'=>$date));
      $CSE=$this->db->get_where('CSE_entry',array('date'=>$date));
      $EEE=$this->db->get_where('EEE_entry',array('date'=>$date));
      $ECE=$this->db->get_where('ECE_entry',array('date'=>$date));
      $MECH=$this->db->get_where('MECH_entry',array('date'=>$date));
      $CIVIL=$this->db->get_where('CIVIL_entry',array('date'=>$date));
      $PHYSICS=$this->db->get_where('PHYSICS_entry',array('date'=>$date));
      $CHEMISTRY=$this->db->get_where('CHEMISTRY_entry',array('date'=>$date));
      $MATHS=$this->db->get_where('MATHS_entry',array('date'=>$date));
      $ENGLISH=$this->db->get_where('ENGLISH_entry',array('date'=>$date));
      $OFFICE=$this->db->get_where('OFFICE_entry',array('date'=>$date));

      $res=array(
        'IT'=>$IT->result(),
        'CSE'=>$CSE->result(),
        'EEE'=>$EEE->result(),
        'MECH'=>$MECH->result(),
        'ECE'=>$ECE->result(),
        'CIVIL'=>$CIVIL->result(),
        'PHYSICS'=>$PHYSICS->result(),
        'CHEMISTRY'=>$CHEMISTRY->result(),
        'MATHS'=>$MATHS->result(),
        'ENGLISH'=>$ENGLISH->result(),
        'OFFICE'=>$OFFICE->result()
      );

      return $res;
    }
    else {
      $table=$this->select_dept_table($dept);
      $this->db->select('*');
      $this->db->from($table);
      $this->db->where('date',$date);
      if($res=$this->db->get())
      {
        $data=array($dept=>$res->result());
        return $data;
      }
      else {
          return false;
      }

    }
  }

  //function to find the total days
  public function total_days($dept,$cadre,$from,$to)
  {
    if($dept=='ALL')
      $table='IT_entry';
    else
      $table=$this->select_dept_table($dept);

    if($cadre=='TNT')
      $cadre='T';

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


  //generating unique names in the history Page
  public function unique_names()
  {
    if($res=$this->db->get('staff_details'))
      return $res->result();
    else
      return false;
  }

  //generating unique dates in the header for the history Page
  public function unique_dates($from,$to)
  {
    $this->db->select('date');
    $this->db->distinct('date');
    $this->db->from('IT_entry');
    $this->db->where('date>=',$from);
    $this->db->where('date<=',$to);
    $this->db->order_by('date ASC');
    if($res=$this->db->get())
      return $res->result();
    else {
      return false;
    }
  }

  //function to fetch details for both teaching or Non-Teaching Staffs
  public function fetch_T_or_NT($cadre,$dept,$from,$to)
  {
    if($dept=='ALL')
    {
      $IT=$this->db->get_where('IT_entry',array('cadre'=>$cadre,'date>='=>$from,'date<='=>$to));
      $CSE=$this->db->get_where('CSE_entry',array('cadre'=>$cadre,'date>='=>$from,'date<='=>$to));
      $EEE=$this->db->get_where('EEE_entry',array('cadre'=>$cadre,'date>='=>$from,'date<='=>$to));
      $ECE=$this->db->get_where('ECE_entry',array('cadre'=>$cadre,'date>='=>$from,'date<='=>$to));
      $MECH=$this->db->get_where('MECH_entry',array('cadre'=>$cadre,'date>='=>$from,'date<='=>$to));
      $CIVIL=$this->db->get_where('CIVIL_entry',array('cadre'=>$cadre,'date>='=>$from,'date<='=>$to));
      $PHYSICS=$this->db->get_where('PHYSICS_entry',array('cadre'=>$cadre,'date>='=>$from,'date<='=>$to));
      $CHEMISTRY=$this->db->get_where('CHEMISTRY_entry',array('cadre'=>$cadre,'date>='=>$from,'date<='=>$to));
      $MATHS=$this->db->get_where('MATHS_entry',array('cadre'=>$cadre,'date>='=>$from,'date<='=>$to));
      $ENGLISH=$this->db->get_where('ENGLISH_entry',array('cadre'=>$cadre,'date>='=>$from,'date<='=>$to));
      $OFFICE=$this->db->get_where('OFFICE_entry',array('cadre'=>$cadre,'date>='=>$from,'date<='=>$to));

      $res=array(
        'IT'=>$IT->result(),
        'CSE'=>$CSE->result(),
        'EEE'=>$EEE->result(),
        'MECH'=>$MECH->result(),
        'ECE'=>$ECE->result(),
        'CIVIL'=>$CIVIL->result(),
        'PHYSICS'=>$PHYSICS->result(),
        'CHEMISTRY'=>$CHEMISTRY->result(),
        'MATHS'=>$MATHS->result(),
        'ENGLISH'=>$ENGLISH->result(),
        'OFFICE'=>$OFFICE->result()
      );

      return $res;

    }
    else {
      $table=$this->select_dept_table($dept);
      $this->db->select('*');
      $this->db->from($table);
      $this->db->where('cadre',$cadre);
      $this->db->where('date>=',$from);
      $this->db->where('date<=',$to);
      if($res=$this->db->get())
      {
        $data=array($dept=>$res->result());
        return $data;
      }
      else {
          return false;
      }
    }
  }

  //function to fetch details for both teaching and Non-Teaching Staffs
  public function fetch_T_and_NT($dept,$from,$to)
  {
    if($dept=='ALL')
    {
      $IT=$this->db->get_where('IT_entry',array('date>='=>$from,'date<='=>$to));
      $CSE=$this->db->get_where('CSE_entry',array('date>='=>$from,'date<='=>$to));
      $EEE=$this->db->get_where('EEE_entry',array('date>='=>$from,'date<='=>$to));
      $ECE=$this->db->get_where('ECE_entry',array('date>='=>$from,'date<='=>$to));
      $MECH=$this->db->get_where('MECH_entry',array('date>='=>$from,'date<='=>$to));
      $CIVIL=$this->db->get_where('CIVIL_entry',array('date>='=>$from,'date<='=>$to));
      $PHYSICS=$this->db->get_where('PHYSICS_entry',array('date>='=>$from,'date<='=>$to));
      $CHEMISTRY=$this->db->get_where('CHEMISTRY_entry',array('date>='=>$from,'date<='=>$to));
      $MATHS=$this->db->get_where('MATHS_entry',array('date>='=>$from,'date<='=>$to));
      $ENGLISH=$this->db->get_where('ENGLISH_entry',array('date>='=>$from,'date<='=>$to));
      $OFFICE=$this->db->get_where('OFFICE_entry',array('date>='=>$from,'date<='=>$to));

      $res=array(
        'IT'=>$IT->result(),
        'CSE'=>$CSE->result(),
        'EEE'=>$EEE->result(),
        'MECH'=>$MECH->result(),
        'ECE'=>$ECE->result(),
        'CIVIL'=>$CIVIL->result(),
        'PHYSICS'=>$PHYSICS->result(),
        'CHEMISTRY'=>$CHEMISTRY->result(),
        'MATHS'=>$MATHS->result(),
        'ENGLISH'=>$ENGLISH->result(),
        'OFFICE'=>$OFFICE->result()
      );
      if($res)
        return $res;
      else {
        return false;
      }
    }
    else
     {
        $table=$this->select_dept_table($dept);
        $this->db->select('*');
        $this->db->from($table);
        $this->db->where('date>=',$from);
        $this->db->where('date<=',$to);
        if($res=$this->db->get())
        {
          $data=array($dept=>$res->result());
          return $data;
        }
        else {
          return false;
        }
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
      else if($dept=='PHYSICS')
      {
        $table='PHYSICS_entry';
      }
      else if($dept=='CHEMISTRY')
      {
        $table='CHEMISTRY_entry';
      }
      else if($dept=='MATHS')
      {
        $table='MATHS_entry';
      }
      else if($dept=='ENGLISH')
      {
          $table='ENGLISH_entry';
      }
      else if($dept=='OFFICE')
      {
          $table='OFFICE_entry';
      }

      return $table;
  }


  //lists the todays attendence details in the form of table
  public function view_today()
  {
    $date=date('Y-m-d');
    $this->db->select('*');
    $this->db->from('temp_entry');
    $this->db->where('date',$date);
    if($res=$this->db->get())
      return $res->result();
    else
      return false;
  }

  //lists the todays attendence details in detail
  public function view_department_today($dept)
  {
    $date=date('Y-m-d');
    $this->db->select('*');
    $this->db->from('temp_entry');
    $this->db->where('dept',$dept);
    $this->db->where('date',$date);
    if($res=$this->db->get())
      return $res->result();
    else
      return false;
  }

}
