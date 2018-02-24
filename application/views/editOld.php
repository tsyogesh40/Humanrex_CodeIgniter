<?php

$userId = '';
$name = '';
$email = '';
$mobile = '';
$roleId = '';
$staff_id='';
$dept='';
if(!empty($userInfo))
{
    foreach ($userInfo as $uf)
    {
        $userId = $uf->userId;
        $name = $uf->name;
        $dept=$uf->dept;
        $staff_id=$uf->staff_id;
        $email = $uf->email;
        $mobile = $uf->mobile;
        $roleId = $uf->roleId;
    }
    foreach($info as $val)
    {
      $store_id=$val->store_id;
      $finger_preference=$val->finger_preference;
      $cadre=$val->cadre;
      $designation=$val->designation;
      $gender=$val->gender;
      $doj=$val->DOJ;
    }
}

?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">

      <h1>
        <i class="fa fa-users"></i> User Management
        <small>Add / Edit User</small>
      </h1>
    </section>

    <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-10">
              <!-- general form elements -->
              
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Enter User Details</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->

                    <form role="form" action="<?php echo base_url() ?>editUser" method="post" id="editUser" role="form">
                        <div class="box-body">
                          <!--row 1-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="fname">Full Name</label>
                                        <input type="text" class="form-control" id="fname" placeholder="Full Name" name="fname" value="<?php echo $name; ?>" maxlength="128">
                                        <input type="hidden" value="<?php echo $userId; ?>" name="userId" id="userId" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="email">Email address</label>
                                        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value="<?php echo $email; ?>" maxlength="128">
                                    </div>
                                </div>
                            </div>

                            <!--row 2-->

                            <div class="row">
                              <div class="col-md-6">
                                <fieldset >
                                  <div class="form-group">
                                      <label for="staff_id">Staff ID</label>
                                      <input type="text" class="form-control required" id="staff_id" value="<?php echo $staff_id; ?>" name="staff_id" maxlength="15" readonly>
                                  </div>
                                </fieldset>
                              </div>

                              <div class="col-md-6">
                                  <div class="form-group">
                                      <label for="store_id">Store ID</label>
                                      <input type="text" class="form-control required" id="store_id" value="<?php echo $store_id;?>" name="store_id" maxlength="5">
                                  </div>
                              </div>

                            </div>

                            <!--row 3-->
                            <div class="row">
                              <div class="col-md-6">
                                  <div class="form-group">
                                      <label for="finger_preference">Finger Preference</label>

                                            <select class="form-control" name="finger_preference">
                                                  <option value="LI">LEFT_INDEX</option>
                                                  <option value="RI">RIGHT_INDEX</option>
                                                  <option value="LT">LEFT_THUMB</option>
                                                  <option value="RT">RIGHT_THUMB</option>
                                                  <option value="LM">LEFT_MID</option>
                                                  <option value="RM">RIGHT_MID</option>
                                            </select>
                                  </div>
                              </div>

                              <div class="col-md-6">
                                  <div class="form-group">
                                      <label for="dept">Select Department :</label>
                                            <select class="form-control" name="dept">
                                                  <option value="<?php echo $dept;?>"><?php echo $dept;?></option>
                                                  <option value="IT">IT</option>
                                                  <option value="CSE">CSE</option>
                                                  <option value="ECE">ECE</option>
                                                  <option value="EEE">EEE</option>
                                                  <option value="MECH">MECH</option>
                                                  <option value="PHYSICS">PHYSICS</option>
                                                  <option value="CHEMSITRY">CHEMISTRY</option>
                                                  <option value="MATHS">MATHS</option>
                                                  <option value="ENGLISH">ENGLISH</option>
                                                  <option value="OFFICE">OFFICE</option>

                                                </select>
                                          </div>
                                      </div>
                                    </div>


                              <!--row 4-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="password" class="form-control" id="password" placeholder="Password" name="password" maxlength="20">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="cpassword">Confirm Password</label>
                                        <input type="password" class="form-control" id="cpassword" placeholder="Confirm Password" name="cpassword" maxlength="20">
                                    </div>
                                </div>
                            </div>

                            <!--row 5-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="mobile">Mobile Number</label>
                                        <input type="text" class="form-control" id="mobile" placeholder="Mobile Number" name="mobile" value="<?php echo $mobile; ?>" maxlength="10">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="role">Role</label>
                                        <select class="form-control" id="role" name="role">
                                            <option value="0">Select Role</option>
                                            <?php
                                            if(!empty($roles))
                                            {
                                                foreach ($roles as $rl)
                                                {
                                                    ?>
                                                    <option value="<?php echo $rl->roleId; ?>" <?php if($rl->roleId == $roleId) {echo "selected=selected";} ?>><?php echo $rl->role ?></option>
                                                    <?php
                                                }
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <!--row 6-->
                            <div class="row">

                                      <div class="col-md-6">
                                          <div class="form-group">
                                              <label for="cadre">Select Cadre :</label>
                                                    <select class="form-control" name="cadre">
                                                        <option value="<?php echo $cadre;?>"><?php echo $cadre;?></option>
                                                          <option value="T">Teaching</option>
                                                          <option value="NT">Non- Teaching</option>
                                                    </select>
                                          </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="desg">Select Designation :</label>
                                                      <select class="form-control" name="desg">
                                                        <option value="<?php echo $designation;?>"><?php echo $designation;?></option>
                                                            <option value="Professor">Professor</option>
                                                            <option value="Associate Professor">Associate Professor</option>
                                                            <option value="AP-I">AP - I</option>
                                                            <option value="AP-II">AP- II</option>
                                                            <option value="AP-III">AP - III</option>
                                                            <option value="TA">TA</option>
                                                            <option value="SYSTEM ADMIN">System Admin</option>
                                                            <option value="LAB INSTRUCTOR">Lab INSTRUCTOR</option>
                                                            <option value="LAB ATTENDER">Lab ATTENDER</option>

                                                      </select>
                                            </div>
                                    </div>

                              </div>

                              <!--row 7 -->
                              <div class="row">
                                        <div class="col-md-6">
                                          <div class="form-group">
                                              <label for="gender">Select Gender :</label>
                                                    <select class="form-control" name="gender">
                                                      <option value="<?php echo $gender;?>"><?php echo $gender;?></option>
                                                          <option value="M">Male</option>
                                                          <option value="F">Female</option>
                                                    </select>
                                          </div>
                                        </div>

                                      <div class="col-md-6">
                                        <div class="form-group">
                                              <label for="doj">Date Of Joining:</label>
                                              <input type="date" value="<?php echo $doj;?>" class="form-control" placeholder="DOJ" id="doj" name="doj" value="<?php ?>">
                                          </div>
                                      </div>
                                  </div>
                        </div><!-- /.box-body -->

                        <div class="box-footer">
                            <input type="submit" class="btn btn-primary" value="Submit" />
                            <input type="reset" class="btn btn-default" value="Reset" />
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-4">
                <?php
                    $this->load->helper('form');
                    $error = $this->session->flashdata('error');
                    if($error)
                    {
                ?>
                <div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <?php echo $this->session->flashdata('error'); ?>
                </div>
                <?php } ?>
                <?php
                    $success = $this->session->flashdata('success');
                    if($success)
                    {
                ?>
                <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <?php echo $this->session->flashdata('success'); ?>
                </div>
                <?php } ?>

                <div class="row">
                    <div class="col-md-12">
                        <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<script src="<?php echo base_url(); ?>assets/js/editUser.js" type="text/javascript"></script>
