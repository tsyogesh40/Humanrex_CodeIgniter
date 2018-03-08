<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';


class User extends BaseController
{
    /**
     * This is default constructor of the class
     */

    public function __construct()
    {
        parent::__construct();
        $this->load->model('user_model');
        $this->isLoggedIn();
    }

    /**
     * This function used to load the first screen of the user  6380116472
     */
    public function index()
    {
        $this->global['pageTitle'] = 'HumanRex: Dashboard';
        $staff_id=$this->session->userdata('staff_id');
        $res['info']=$this->user_model->dashboard_data($staff_id);
        $res['role']=$this->user_model->get_role($staff_id);
        $this->loadViews("dashboard", $this->global, $res , NULL);
    }

    //This function is used to display the profile details
    public function profile()
    {
        $this->global['pageTitle'] = 'HumanRex: My profile';
        $staff_id=$this->session->userdata('staff_id');
        $user_details=$this->user_model->fetch_details($staff_id);
        $this->loadViews("profile", $this->global, $user_details, NULL);

    }
    //this controller is for Update the user profile in staff page
    public function edit_profile()
    {
      $this->global['pageTitle'] = 'HumanRex: Profile Updation';
      $staff_id=$this->session->userdata('staff_id');
      $data=array('phone'=>$this->input->post('phone'));
      $update_result=$this->user_model->edit_profile($staff_id,$data);
      $user_details=$this->user_model->fetch_details($staff_id);
      $this->loadviews("profile",$this->global,$user_details,NULL);

    }

    //Below function is used to display the select page
    public function select()
    {
      $this->global['pageTitle'] = 'HumanRex: Select Date';
      $this->loadviews("select_date",$this->global,NULL,NULL);
    }


    //select by ID
  public function select_by_id()
  {
    $this->global['pageTitle'] = 'HumanRex: History';
    $date=$this->input->post('date');
    $staff_id=$this->session->userdata('staff_id');
    $dept=$this->user_model->view_dept($staff_id);
    $result=$this->user_model->select_id($dept['department'],$date,$staff_id);
    if($result!=false)
    {
      $data['history']=$result;
    }
    else {
      $data['history'] = "No record found !";
    }
      //$this->load->view('history',$data);
    $this->loadviews("history",$this->global,$data,NULL);
    //  print_r($data);
  }

  //select my range
  public function select_by_range()
  {
    $this->global['pageTitle'] = 'HumanRex: History';
    $from=$this->input->post('from_date');
    $to=$this->input->post('to_date');
    $staff_id=$this->session->userdata('staff_id');
    $dept=$this->user_model->view_dept($staff_id);
    $result=$this->user_model->select_range($dept['department'],$staff_id,$from,$to);
    if($result!=false)
    {
      $data['history']=$result;
    }
    else {
      $data['history'] = "No record found !";
    }
    $this->loadviews("history",$this->global,$data,NULL);

  }

    /**
     * This function is used to load the user list
     */
    function userListing()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $searchText = $this->security->xss_clean($this->input->post('searchText'));
            $data['searchText'] = $searchText;

            $this->load->library('pagination');

            $count = $this->user_model->userListingCount($searchText);

			$returns = $this->paginationCompress ( "userListing/", $count, 10 );

            $data['userRecords'] = $this->user_model->userListing($searchText, $returns["page"], $returns["segment"]);

            $this->global['pageTitle'] = 'HumanRex : User Listing';

            $this->loadViews("users", $this->global, $data, NULL);
        }
    }

    /**
     * This function is used to load the add new form
     */
    function addNew()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->load->model('user_model');
            $data['roles'] = $this->user_model->getUserRoles();

            $this->global['pageTitle'] = 'HumanRex : Add New User';

            $this->loadViews("addNew", $this->global, $data, NULL);
        }
    }

    /**
     * This function is used to check whether email already exist or not
     */
    function checkEmailExists()
    {
        $userId = $this->input->post("userId");
        $email = $this->input->post("email");

        if(empty($userId)){
            $result = $this->user_model->checkEmailExists($email);
        } else {
            $result = $this->user_model->checkEmailExists($email, $userId);
        }

        if(empty($result)){ echo("true"); }
        else { echo("false"); }
    }

    /**
     * This function is used to add new user to the system
     */
    function addNewUser()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->load->library('form_validation');

            $this->form_validation->set_rules('fname','Full Name','trim|required|max_length[128]');
            $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
            $this->form_validation->set_rules('staff_id','Staff ID','trim|required|max_length[128]');
            $this->form_validation->set_rules('store_id','Store ID','trim|required|max_length[5]');
            $this->form_validation->set_rules('password','Password','required|max_length[20]');
            $this->form_validation->set_rules('cpassword','Confirm Password','trim|required|matches[password]|max_length[20]');
            $this->form_validation->set_rules('role','Role','trim|required|numeric');
            $this->form_validation->set_rules('mobile','Mobile Number','required|min_length[10]');
            $this->form_validation->set_rules('doj','Date Of Joining','required');


            if($this->form_validation->run() == FALSE)
            {
                $this->addNew();
            }
            else
            {
                $name = ucwords(strtolower($this->security->xss_clean($this->input->post('fname'))));
                $email = $this->security->xss_clean($this->input->post('email'));
                $staff_id= $this->security->xss_clean($this->input->post('staff_id'));
                $store_id= $this->security->xss_clean($this->input->post('store_id'));
                $password = $this->input->post('password');
                $roleId = $this->input->post('role');
                $finger_preference=$this->input->post('finger_preference');
                $desg=$this->input->post('desg');
                $dept=$this->input->post('dept');
                $cadre=$this->input->post('cadre');
                $gender=$this->input->post('gender');
                $doj=$this->input->post('doj');
                $mobile = $this->security->xss_clean($this->input->post('mobile'));


                $userInfo = array('staff_id'=>$staff_id,'dept'=>$dept,'cadre'=>$cadre,'email'=>$email, 'password'=>getHashedPassword($password), 'roleId'=>$roleId, 'name'=> $name,
                                    'mobile'=>$mobile, 'createdBy'=>$this->vendorId, 'createdDtm'=>date('Y-m-d H:i:s'));
                $data = array(
                    'name' =>$name,
                    'staff_id'=>$staff_id,
                    'store_id'=>$store_id,
                    'finger_preference'=>$finger_preference,
                    'department'=>$dept,
                    'designation'=>$desg,
                    'cadre'=>$cadre,
                    'gender'=>$gender,
                    'phone'=>$mobile,
                    'email'=>$email,
                    'DOJ'=>$doj
                              );

                $counter=array('staff_id'=>$staff_id,'name'=>$name,'count'=>0,'late_days'=>0);

                $presence=array('name'=>$name,'staff_id'=>$staff_id,'dept'=>$dept);
                $this->load->model('user_model');
                //inserting datas
                $result_details=$this->user_model->user_register($data);
                $result_counter=$this->user_model->counter_init($counter);
                //inserting data into table overall_presence
                $result_overall_presence=$this->user_model->overall_presence($presence);
                //inserting user credentials
                $result = $this->user_model->addNewUser($userInfo);

                if($result !=' ')
                {
                    $this->session->set_flashdata('success', 'New User created successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'User creation failed');
                }

                redirect('addNew');
            }
        }
    }


    /**
     * This function is used load user edit information
     * @param number $userId : Optional : This is user id
     */
    function editOld($userId = NULL)
    {
        if($this->isAdmin() == TRUE || $userId == 1)
        {
            $this->loadThis();
        }
        else
        {
            if($userId == null)
            {
                redirect('userListing');
            }

            $data['roles'] = $this->user_model->getUserRoles();
            $data['userInfo'] = $this->user_model->getUserInfo($userId);
            //print_r($data);
            $data['info']=$this->user_model->getstaffinfo($data['userInfo'][0]->staff_id);
            $this->global['pageTitle'] = 'HumanRex : Edit User';

            $this->loadViews("editOld", $this->global, $data, NULL);
        }
    }


    /**
     * This function is used to edit the user information
     */
    function editUser()
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $this->load->library('form_validation');

            $userId = $this->input->post('userId');

            $this->form_validation->set_rules('fname','Full Name','trim|required|max_length[128]');
            $this->form_validation->set_rules('email','Email','trim|required|valid_email|max_length[128]');
            $this->form_validation->set_rules('password','Password','matches[cpassword]|max_length[20]');
            $this->form_validation->set_rules('cpassword','Confirm Password','matches[password]|max_length[20]');
            $this->form_validation->set_rules('role','Role','trim|required|numeric');
            $this->form_validation->set_rules('mobile','Mobile Number','required|min_length[10]');
            $this->form_validation->set_rules('staff_id','Staff ID','trim|required|max_length[128]');
            $this->form_validation->set_rules('store_id','Store ID','trim|required|max_length[5]');
            $this->form_validation->set_rules('mobile','Mobile Number','required|min_length[10]');
            $this->form_validation->set_rules('doj','Date Of Joining','required');


            if($this->form_validation->run() == FALSE)
            {
                $this->editOld($userId);
            }
            else
            {
                $name = ucwords(strtolower($this->security->xss_clean($this->input->post('fname'))));
                $email = $this->security->xss_clean($this->input->post('email'));
                $password = $this->input->post('password');
                $roleId = $this->input->post('role');
                $mobile = $this->security->xss_clean($this->input->post('mobile'));
                $staff_id= $this->security->xss_clean($this->input->post('staff_id'));
                $store_id= $this->security->xss_clean($this->input->post('store_id'));
                $finger_preference=$this->input->post('finger_preference');
                $desg=$this->input->post('desg');
                $dept=$this->input->post('dept');
                $cadre=$this->input->post('cadre');
                $gender=$this->input->post('gender');
                $doj=$this->input->post('doj');


                $userInfo = array();

                if(empty($password))
                {
                    $userInfo = array('staff_id'=>$staff_id,'dept'=>$dept,'cadre'=>$cadre,'email'=>$email, 'roleId'=>$roleId, 'name'=>$name,
                                    'mobile'=>$mobile, 'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));

                }
                else
                {
                    $userInfo = array('staff_id'=>$staff_id,'dept'=>$dept,'cadre'=>$cadre,'email'=>$email, 'password'=>getHashedPassword($password), 'roleId'=>$roleId,
                        'name'=>ucwords($name), 'mobile'=>$mobile, 'updatedBy'=>$this->vendorId,
                        'updatedDtm'=>date('Y-m-d H:i:s'));
                }

                $data = array(
                    'name' =>$name,
                    //'staff_id'=>$staff_id,
                    'store_id'=>$store_id,
                    'finger_preference'=>$finger_preference,
                    'department'=>$dept,
                    'designation'=>$desg,
                    'cadre'=>$cadre,
                    'gender'=>$gender,
                    'phone'=>$mobile,
                    'email'=>$email,
                    'DOJ'=>$doj
                              );

                $result = $this->user_model->editUser($userInfo, $userId,$staff_id,$data);
                //$result_staff_details=$this->user_model->editstaff_details($staff_id,$data);
                if($result == true)
                {
                    $this->session->set_flashdata('success', 'User updated successfully');
                }
                else
                {
                    $this->session->set_flashdata('error', 'User updation failed');
                }

                redirect('userListing');
            }
        }
    }


    /**
     * This function is used to delete the user using userId
     * @return boolean $result : TRUE / FALSE
     */
    function deleteUser()
    {
        if($this->isAdmin() == TRUE)
        {
            echo(json_encode(array('status'=>'access')));
        }
        else
        {
            $userId = $this->input->post('userId');
            $userInfo = array('isDeleted'=>1,'updatedBy'=>$this->vendorId, 'updatedDtm'=>date('Y-m-d H:i:s'));

            $result = $this->user_model->deleteUser($userId, $userInfo);

            if ($result > 0) { echo(json_encode(array('status'=>TRUE))); }
            else { echo(json_encode(array('status'=>FALSE))); }
        }
    }

    /**
     * This function is used to load the change password screen
     */
    function loadChangePass()
    {
        $this->global['pageTitle'] = 'HumanRex : Change Password';

        $this->loadViews("changePassword", $this->global, NULL, NULL);
    }


    /**
     * This function is used to change the password of the user
     */
    function changePassword()
    {
        $this->load->library('form_validation');

        $this->form_validation->set_rules('oldPassword','Old password','required|max_length[20]');
        $this->form_validation->set_rules('newPassword','New password','required|max_length[20]');
        $this->form_validation->set_rules('cNewPassword','Confirm new password','required|matches[newPassword]|max_length[20]');

        if($this->form_validation->run() == FALSE)
        {
            $this->loadChangePass();
        }
        else
        {
            $oldPassword = $this->input->post('oldPassword');
            $newPassword = $this->input->post('newPassword');

            $resultPas = $this->user_model->matchOldPassword($this->vendorId, $oldPassword);

            if(empty($resultPas))
            {
                $this->session->set_flashdata('nomatch', 'Your old password not correct');
                redirect('loadChangePass');
            }
            else
            {
                $usersData = array('password'=>getHashedPassword($newPassword), 'updatedBy'=>$this->vendorId,
                                'updatedDtm'=>date('Y-m-d H:i:s'));

                $result = $this->user_model->changePassword($this->vendorId, $usersData);

                if($result > 0) { $this->session->set_flashdata('success', 'Password updation successful'); }
                else { $this->session->set_flashdata('error', 'Password updation failed'); }

                redirect('loadChangePass');
            }
        }
    }

    /**
     * Page not found : error 404
     */
    function pageNotFound()
    {
        $this->global['pageTitle'] = 'HumanRex : 404 - Page Not Found';

        $this->loadViews("404", $this->global, NULL, NULL);
    }

    /**
     * This function used to show login history
     * @param number $userId : This is user id
     */
    function loginHistoy($userId = NULL)
    {
        if($this->isAdmin() == TRUE)
        {
            $this->loadThis();
        }
        else
        {
            $userId = ($userId == NULL ? $this->session->userdata("userId") : $userId);

            $searchText = $this->input->post('searchText');
            $fromDate = $this->input->post('fromDate');
            $toDate = $this->input->post('toDate');

            $data["userInfo"] = $this->user_model->getUserInfoById($userId);

            $data['searchText'] = $searchText;
            $data['fromDate'] = $fromDate;
            $data['toDate'] = $toDate;

            $this->load->library('pagination');

            $count = $this->user_model->loginHistoryCount($userId, $searchText, $fromDate, $toDate);

            $returns = $this->paginationCompress ( "login-history/".$userId."/", $count, 5, 3);

            $data['userRecords'] = $this->user_model->loginHistory($userId, $searchText, $fromDate, $toDate, $returns["page"], $returns["segment"]);

            $this->global['pageTitle'] = 'HumanRex : User Login History';

            $this->loadViews("loginHistory", $this->global, $data, NULL);
        }
    }
}

?>
