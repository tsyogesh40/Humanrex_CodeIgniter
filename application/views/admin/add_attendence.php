
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> Add Attendence
        <small>Add new Attendence Entry</small>
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
                    </div><!-- /.box-header -->

                    <form class="form-horizontal" action="<?php echo base_url()?>add-attendence" method="post">

                      <div class="form-group">
                          <label for="date" class="control-label col-sm-2 col-xs-4">Date:&nbsp;</label>
                          <div class="col-sm-4 col-xs-6">
                          <input type="date" class="form-control" id="date1" name="date">
                          </div>
                        </div>

                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Name:&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="text" class="form-control" id="name" name="name">
                            </div>
                          </div>

                        <div class="form-group">
                          <label for="sel1" class="control-label col-sm-2 col-xs-4">Select Cadre:</label>
                          <div class="col-sm-4 col-xs-6">
                          <select class="form-control" id="cadre" name="cadre">
                            <option value="T">Teaching</option>
                            <option value="NT">Non-Teaching</option>
                          </select>
                        </div>
                        </div>

                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Staff ID:&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="text" class="form-control" id="staffid" name="staff_id">
                            </div>
                          </div>

                          <div class="form-group">
                              <label for="date" class="control-label col-sm-2 col-xs-4">Store ID:&nbsp;</label>
                              <div class="col-sm-4 col-xs-6">
                              <input type="number" class="form-control" id="storeid" name="store_id">
                              </div>
                          </div>

                          <div class="form-group">
                              <label for="date" class="control-label col-sm-2 col-xs-4">Department:&nbsp;</label>
                              <div class="col-sm-4 col-xs-6">
                                <select class="form-control" name="dept">
                                      <option value="IT">IT</option>
                                      <option value="CSE">CSE</option>
                                      <option value="CIVIL">CIVIL</option>
                                      <option value="ECE">ECE</option>
                                      <option value="EEE">EEE</option>
                                      <option value="MECH">MECH</option>
                                      <option value="PHYSICS">PHYSICS</option>
                                      <option value="CHEMISTRY">CHEMISTRY</option>
                                      <option value="MATHS">MATHS</option>
                                      <option value="ENGLISH">ENGLISH</option>
                                      <option value="OFFICE">OFFICE</option>
                                    </select>
                              </div>
                          </div>

                        <div class="form-group" >
                            <label for="date" class="control-label col-sm-2 col-xs-4">In_time (24Hrs):&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="time" class="form-control"  name="in_time">
                          </div>
                        </div>


                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Out_time (24 Hrs):&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="time" class="form-control" name="out_time">
                          </div>
                        </div>

                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Present Value:&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                              <select class="form-control" name="p_value">
                                    <option value="0">Leave</option>
                                    <option value="-1">Permission</option>
                                    <option value="-2">OnDuty</option>
                                    <option value="1">HalfDay Leave</option>
                                    <option value="2">FullDay Leave</option>
                                  </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">No Of Entry:&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="number" class="form-control" id="entry" name="no_of_entry">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Status:&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                              <select class="form-control" name="status">
                                    <option value="ONTIME">On Time</option>
                                    <option value="LATE">Late</option>
                                  </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Semester:&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                              <select class="form-control" name="semester">
                                    <option value="ODD">Odd</option>
                                    <option value="EVEN">Even</option>
                                  </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Year:&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="number" class="form-control" id="entry" name="year">
                            </div>
                        </div>


                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-success">Add New Entry</button>
                        </div>
                      </div>
                    </form>
                    <br><br><br>
                  </div>

                    </div><!-- /.box-body -->

            </div>
        </div>
    </section>


</div>
