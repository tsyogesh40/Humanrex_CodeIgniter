<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class User_model extends CI_Model
{
//permission Status
public function permission_status($staff_id)
{
  $this->db->select('*');
  $this->db->from('permission');
  $this->db->where('staff_id',$staff_id);
  if($res=$this->db->get())
  {
    return $res->result();
  }
  else {
    return false;
  }

}


// model for dashboard datas
public function dashboard_data($staff_id)
{
  $this->db->select('*');
  $this->db->from('overall_presence');
  $this->db->where('staff_id',$staff_id);
  if($res=$this->db->get())
    return $res->result();
  else {
    return false;
  }
}
public function get_role($staff_id)
{
  $this->db->select('roleId');
  $this->db->from('tbl_users');
  $this->db->where('staff_id',$staff_id);
  if($res=$this->db->get())
    return $res->result();
  else {
    return false;
  }
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



  //----------------------login model-----------------------------
  //updating the profile in staff page
  public function edit_profile($staff_id,$data)
  {
    $this->db->where('staff_id',$staff_id);
    $this->db->update('staff_details',$data);

  }
  //Intializing the Overall presence table
  public function overall_presence($datas)
  {

    $this->db->trans_start();
    $this->db->insert('overall_presence',$datas);

    $insert_id3 = $this->db->insert_id();

    $this->db->trans_complete();

    return $insert_id3;
  }

  //fetching attendence details
  public function staff_entry($staff_id)
  {
    $date= date('Y-m-d');
    $this->db->select('*');
    $this->db->from('temp_entry');
    $this->db->where('staff_id',$staff_id);
    $this->db->where('date',$date);
    if($res=$this->db->get())
    {
      return $res->row_array();
    }
    else {
      return false;
    }
  }
//select by date
public function select_id($dept,$date,$staff_id)
{
  $table=$this->select_dept_table($dept);
  $this->db->select('*');
  $this->db->from($table);
  $this->db->where('staff_id',$staff_id);
  $this->db->where('date',$date);
  if($res=$this->db->get())
  {
    return $res->result();
  }
  else {
    return false;
  }
}

//select by range
public function select_range($dept,$staff_id,$from,$to)
{
  //$this->db->query('select * from temp_entry where staff_id='.$staff_id.' and (date between '.$from.' and '.$to.')');
  $table=$this->select_dept_table($dept);
  $condition="date between"."'".$from."'"."and"."'".$to."'";
  $this->db->select('*');
  $this->db->from($table);
  $this->db->where('staff_id',$staff_id);
  $this->db->where($condition);
  if($history=$this->db->get())
  {
    return $history->result();
  }else {
    return false();
  }
}

  //login verify model
  public function fetch_details($staff_id)
  {
    $this->db->select('*');
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

  //checking for existing staff id
  public function staff_id_check($staff_id)
  {
    $this->db->select('*');
    $this->db->from('staff_details');
    $this->db->where('staff_id',$staff_id);
    $query=$this->db->get();
    if($query->num_rows>0)
    {
      return false;
    }
    else {
      return true;
    }
  }




    //----------------------------login model end----------------

    function userListingCount($searchText = '')
    {
        $this->db->select('BaseTbl.userId,BaseTbl.dept,BaseTbl.cadre,BaseTbl.staff_id, BaseTbl.email, BaseTbl.name, BaseTbl.mobile, Role.role');
        $this->db->from('tbl_users as BaseTbl');
        $this->db->join('tbl_roles as Role', 'Role.roleId = BaseTbl.roleId','left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.email  LIKE '%".$searchText."%'
                            OR  BaseTbl.name  LIKE '%".$searchText."%'
                            OR  BaseTbl.dept  LIKE '%".$searchText."%'
                            OR  BaseTbl.staff_id LIKE '%".$searchText."%'
                            OR  BaseTbl.mobile  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.roleId !=', 1);
        $query = $this->db->get();

        return $query->num_rows();
    }

    /**
     * This function is used to get the user listing count
     * @param string $searchText : This is optional search text
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function userListing($searchText = '', $page, $segment)
    {
        $this->db->select('BaseTbl.userId,BaseTbl.dept,BaseTbl.cadre,BaseTbl.staff_id, BaseTbl.email, BaseTbl.name, BaseTbl.mobile, Role.role');
        $this->db->from('tbl_users as BaseTbl');
        $this->db->join('tbl_roles as Role', 'Role.roleId = BaseTbl.roleId','left');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.email  LIKE '%".$searchText."%'
                            OR  BaseTbl.name  LIKE '%".$searchText."%'
                            OR  BaseTbl.dept  LIKE '%".$searchText."%'
                            OR  BaseTbl.staff_id LIKE '%".$searchText."%'
                            OR  BaseTbl.mobile  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.isDeleted', 0);
        $this->db->where('BaseTbl.roleId !=', 1);
        $this->db->limit($page, $segment);
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }

    /**
     * This function is used to get the user roles information
     * @return array $result : This is result of the query
     */
    function getUserRoles()
    {
        $this->db->select('roleId, role');
        $this->db->from('tbl_roles');
        $this->db->where('roleId !=', 1);
        $query = $this->db->get();

        return $query->result();
    }

    /**
     * This function is used to check whether email id is already exist or not
     * @param {string} $email : This is email id
     * @param {number} $userId : This is user id
     * @return {mixed} $result : This is searched result
     */
    function checkEmailExists($email, $userId = 0)
    {
        $this->db->select("email");
        $this->db->from("tbl_users");
        $this->db->where("email", $email);
        $this->db->where("isDeleted", 0);
        if($userId != 0){
            $this->db->where("userId !=", $userId);
        }
        $query = $this->db->get();

        return $query->result();
    }


    /**
     * This function is used to add new user to system
     * @return number $insert_id : This is last inserted id
     */
    function addNewUser($userInfo)
    {
        $this->db->trans_start();
        $this->db->insert('tbl_users', $userInfo);

        $insert_id1 = $this->db->insert_id();

        $this->db->trans_complete();

        return $insert_id1;
    }
    //intializing counter table
    function counter_init($counter_data)
    {
      $this->db->trans_start();
      $this->db->insert('counter', $counter_data);

      $insert_id2 = $this->db->insert_id();

      $this->db->trans_complete();
      return $insert_id2;
    }

    //register new staff (table:staff_details)
    public function user_register($data)
    {

      $this->db->trans_start();
      $this->db->insert('staff_details',$data);

      $insert_id3 = $this->db->insert_id();

      $this->db->trans_complete();

      return $insert_id3;

    }
    /**
     * This function used to get user information by id
     * @param number $userId : This is user id
     * @return array $result : This is user information
     */
    function getUserInfo($userId)
    {
        $this->db->select('userId, staff_id,dept,name, email, mobile, roleId');
        $this->db->from('tbl_users');
        $this->db->where('isDeleted', 0);
		$this->db->where('roleId !=', 1);
        $this->db->where('userId', $userId);
        $query = $this->db->get();

        return $query->result();
    }
    function getstaffinfo($staff_id)
    {
      $this->db->select('*');
      $this->db->from('staff_details');
      $this->db->where('staff_id',$staff_id);
      if($res=$this->db->get())
      {
        return $res->result();
      }
      else {
        return false;
      }
    }

    /**
     * This function is used to update the user information
     * @param array $userInfo : This is users updated information
     * @param number $userId : This is user id
     */
    function editUser($userInfo, $userId,$staff_id,$data)
    {
        $this->db->where('userId', $userId);
        $this->db->update('tbl_users', $userInfo);

        //this is used to update the user in the staff_details table
        $this->db->where('staff_id',$staff_id);
        $this->db->update('staff_details',$data);

        return TRUE;
    }


    /**
     * This function is used to delete the user information
     * @param number $userId : This is user id
     * @return boolean $result : TRUE / FALSE
     */
    function deleteUser($userId, $userInfo)
    {
        $this->db->where('userId', $userId);
        $this->db->update('tbl_users', $userInfo);

        return $this->db->affected_rows();
    }


    /**
     * This function is used to match users password for change password
     * @param number $userId : This is user id
     */
    function matchOldPassword($userId, $oldPassword)
    {
        $this->db->select('userId, password');
        $this->db->where('userId', $userId);
        $this->db->where('isDeleted', 0);
        $query = $this->db->get('tbl_users');

        $user = $query->result();

        if(!empty($user)){
            if(verifyHashedPassword($oldPassword, $user[0]->password)){
                return $user;
            } else {
                return array();
            }
        } else {
            return array();
        }
    }

    /**
     * This function is used to change users password
     * @param number $userId : This is user id
     * @param array $userInfo : This is user updation info
     */
    function changePassword($userId, $userInfo)
    {
        $this->db->where('userId', $userId);
        $this->db->where('isDeleted', 0);
        $this->db->update('tbl_users', $userInfo);

        return $this->db->affected_rows();
    }


    /**
     * This function is used to get user login history
     * @param number $userId : This is user id
     */
    function loginHistoryCount($userId, $searchText, $fromDate, $toDate)
    {
        $this->db->select('BaseTbl.userId, BaseTbl.sessionData, BaseTbl.machineIp, BaseTbl.userAgent, BaseTbl.agentString, BaseTbl.platform, BaseTbl.createdDtm');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.email  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        if(!empty($fromDate)) {
            $likeCriteria = "DATE_FORMAT(BaseTbl.createdDtm, '%Y-%m-%d' ) >= '".date('Y-m-d', strtotime($fromDate))."'";
            $this->db->where($likeCriteria);
        }
        if(!empty($toDate)) {
            $likeCriteria = "DATE_FORMAT(BaseTbl.createdDtm, '%Y-%m-%d' ) <= '".date('Y-m-d', strtotime($toDate))."'";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.userId', $userId);
        $this->db->from('tbl_last_login as BaseTbl');
        $query = $this->db->get();

        return $query->num_rows();
    }

    /**
     * This function is used to get user login history
     * @param number $userId : This is user id
     * @param number $page : This is pagination offset
     * @param number $segment : This is pagination limit
     * @return array $result : This is result
     */
    function loginHistory($userId, $searchText, $fromDate, $toDate, $page, $segment)
    {
        $this->db->select('BaseTbl.userId, BaseTbl.sessionData, BaseTbl.machineIp, BaseTbl.userAgent, BaseTbl.agentString, BaseTbl.platform, BaseTbl.createdDtm');
        $this->db->from('tbl_last_login as BaseTbl');
        if(!empty($searchText)) {
            $likeCriteria = "(BaseTbl.email  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        if(!empty($fromDate)) {
            $likeCriteria = "DATE_FORMAT(BaseTbl.createdDtm, '%Y-%m-%d' ) >= '".date('Y-m-d', strtotime($fromDate))."'";
            $this->db->where($likeCriteria);
        }
        if(!empty($toDate)) {
            $likeCriteria = "DATE_FORMAT(BaseTbl.createdDtm, '%Y-%m-%d' ) <= '".date('Y-m-d', strtotime($toDate))."'";
            $this->db->where($likeCriteria);
        }
        $this->db->where('BaseTbl.userId', $userId);
        $this->db->order_by('BaseTbl.id', 'DESC');
        $this->db->limit($page, $segment);
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }

    /**
     * This function used to get user information by id
     * @param number $userId : This is user id
     * @return array $result : This is user information
     */
    function getUserInfoById($userId)
    {
        $this->db->select('userId, name, email, mobile, roleId');
        $this->db->from('tbl_users');
        $this->db->where('isDeleted', 0);
        $this->db->where('userId', $userId);
        $query = $this->db->get();

        return $query->row();
    }

}
