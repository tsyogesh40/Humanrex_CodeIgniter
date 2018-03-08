<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="ion ion-person-add"></i> My Profile
        <small>View or Edit Profile</small>
      </h1>
    </section>

  <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
              <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title"> </h3>
                        <h3 class="head text-center">
                          My Profile
                        </h3>
                    </div><!-- /.box-header -->
                    <br><br><br>
                  <div class="container text-center">
                    <div class="table-responsive ">
                        <div class="col-*">
                              <table class="table text-center table-bordered table-striped table-dark table-condensed">
                                <tbody>
                                  <tr>
                                    <td><strong>Name<strong></td>
                                    <td><?php echo $this->session->userdata('name');?></td>
                                  </tr>
                                  <tr>
                                    <td><strong>Staff ID<strong></td>
                                    <td><?php echo $this->session->userdata('staff_id');?></td>
                                  </tr>
                                  <tr>
                                    <td><strong>Designation:</strong></td>
                                    <td><?php echo $this->session->userdata('designation');?></td>
                                  </tr>
                                  <tr>
                                    <td><strong>Phone Number:</strong></td>
                                    <td><?php echo $this->session->userdata('phone');?></td>
                                  </tr>
                                  <tr>
                                    <td><strong>Email ID:</strong></td>
                                    <td><?php echo $this->session->userdata('email')?></td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            </div>
                          </div>
                          <br>
                          <div class="box-footer">
                            <div class="head text-center">
                              <button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#edit_profile">Edit Profile</button>

                              <!-- Modal -->
                              <div id="edit_profile" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                  <!-- Modal content-->
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      <h4 class="modal-title">Edit Profile</h4>
                                    </div>
                                    <div class="modal-body">
                                      <form action="<?php echo base_url()?>edit-profile" class="form-inline" method="post">
                                        <div class="form-group">
                                          <label for="phone">Phone:&nbsp;&nbsp;&nbsp;</label>
                                            <input type="text" class="form-control" id="phone" name="phone" value="<?php echo $phone;?>">
                                        </div>
                                        <br><br>
                                        <button type="submit" class="btn btn-danger">Update Profile</button>
                                      </form>
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                  </div>
                                </div>

                              </div>
                            </div>


                            </div>
                          </div>
                          <br><br><br><br><br>
                    </div><!-- /.box-body -->


            </div>
        </div>
    </section>


</div>
