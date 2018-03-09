<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> Request - Permission
        <small>Please submit Letter Before Applying </small>
      </h1>
    </section>

  <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
              <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header">
                      <h3 class="box-title">Permission Form </h3>
                      <div class="box-tools">
                        <div class="row">
                            <div class="col-xs-12 text-right">
                                <div class="form-group">
                                    <a class="btn btn-primary" href="<?php echo base_url(); ?>view_permission"><i class="fa fa-file"></i> view All</a>
                                </div>
                            </div>
                        </div>

                    </div>


                    </div><!-- /.box-header -->

                    <div class="container">
                      <!--<h3>Please Provide the Details to apply permission</h3><br>-->
                      <br>
                      <form class="form-horizontal" action="<?php echo base_url()?>add_permission" method="post">



                          <div class="form-group">
                              <label for="date" class="control-label col-sm-2 col-xs-4">Date:&nbsp;</label>
                              <div class="col-sm-4 col-xs-6">
                              <input type="date" class="form-control" id="date1" name="date">
                              </div>
                            </div>

                            <div class="form-group">
                                <label for="date" class="control-label col-sm-2 col-xs-4">Name:&nbsp;</label>
                                <div class="col-sm-4 col-xs-6">
                                <input type="text" class="form-control" id="date1" name="name">
                                </div>
                              </div>

                            <div class="form-group">
                                <label for="date" class="control-label col-sm-2 col-xs-4">Staff ID:&nbsp;</label>
                                <div class="col-sm-4 col-xs-6">
                                <input type="text" class="form-control" id="staffid" name="staff_id">
                                </div>
                            </div>


                            <div class="form-group">
                                <label for="sel1" class="control-label col-sm-2 col-xs-4">Cadre:</label>
                                <div class="col-sm-4 col-xs-6">
                                <select class="form-control" id="select" name="cadre">
                                  <option value="T">Teaching</option>
                                  <option value="NT">Non Teaching</option>

                                </select>
                              </div>
                              </div>


                            <div id="text">
                              <div class="form-group" >
                                  <label for="date" class="control-label col-sm-2 col-xs-4">In_Time(In 24 Hrs):&nbsp;</label>
                                  <div class="col-sm-4 col-xs-6">
                                  <input type="time" class="form-control" id="date2" name="in_time">
                                </div>
                              </div>

                              <div class="form-group">
                                  <label for="date" class="control-label col-sm-2 col-xs-4">Out_Time (In 24 Hrs):&nbsp;</label>
                                    <div class="col-sm-4 col-xs-6">
                                  <input type="time" class="form-control" id="date2" name="out_time">
                                </div>
                              </div>
                            </div>

                        <div class="form-group">
                          <label for="sel1" class="control-label col-sm-2 col-xs-4">Type:</label>
                          <div class="col-sm-4 col-xs-6">
                          <select class="form-control" id="select" name="type">
                            <option value="0">Leave</option>
                            <option value="-2">On Duty</option>
                            <option value="-1" >Permission</option>
                          </select>
                        </div>
                        </div>


                          <div class="form-group">
                              <label for="date" class="control-label col-sm-2 col-xs-4">Reason:&nbsp;</label>
                              <div class="col-sm-4 col-xs-6">
                              <input type="textarea" class="form-control" id="reason" name="reason">
                            </div>
                          </div>

                          <div class="form-group">
                            <label for="sel1" class="control-label col-sm-2 col-xs-4">Physical Presence:</label>
                            <div class="col-sm-4 col-xs-6">
                            <select class="form-control" id="select" name="physical_presence">
                              <option value="Y">Yes</option>
                              <option value="N">No</option>
                            </select>
                          </div>
                          </div>

                        <div class="form-group">
                          <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-success">Apply permission</button>
                          </div>
                        </div>
                      </form>
                    </div>




                    </div><!-- /.box-body -->


            </div>
        </div>
    </section>


</div>
