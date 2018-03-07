<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> Edit - Permission
        <small>Alter Permission </small>
      </h1>
    </section>

  <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-10">
              <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header">
                      <h3 class="box-title">Permission Form </h3>
                      <div class="box-tools">
                        <div class="row">
                            <div class="col-xs-12 text-right">
                                <div class="form-group">

                                </div>
                            </div>
                        </div>

                    </div>


                    </div><!-- /.box-header -->

                    <div class="container">
                      <!--<h3>Please Provide the Details to apply permission</h3><br>-->
                      <br>
                      <form class="form-horizontal" action="<?php echo base_url()?>update-permission" method="post">


                          <div class="form-group">
                              <label for="date" class="control-label col-sm-2 col-xs-4">Date:&nbsp;</label>
                              <div class="col-sm-4 col-xs-6">
                              <input type="date" class="form-control" id="date1" name="date" value="<?php echo $datas[0]->date; ?>">
                              </div>
                            </div>

                            <div class="form-group">
                                <label for="date" class="control-label col-sm-2 col-xs-4">Name:&nbsp;</label>
                                <div class="col-sm-4 col-xs-6">
                                <input type="text" class="form-control" id="date1" name="name" value="<?php echo $datas[0]->name; ?>">
                                </div>
                              </div>

                              <input type="hidden" class="form-control" id="nm" name="staff_id_org" value="<?php echo $datas[0]->staff_id; ?>">
                              <input type="hidden" class="form-control" id="date" name="date_org" value="<?php echo $datas[0]->date; ?>">

                            <div class="form-group">
                                <label for="date" class="control-label col-sm-2 col-xs-4">Staff ID:&nbsp;</label>
                                <div class="col-sm-4 col-xs-6">
                                <input type="text" class="form-control" id="staffid" name="staff_id" value="<?php echo $datas[0]->staff_id; ?>">
                                </div>
                            </div>


                            <div class="form-group">
                                <label for="sel1" class="control-label col-sm-2 col-xs-4">Cadre:</label>
                                <div class="col-sm-4 col-xs-6">
                                <select class="form-control" id="select" name="cadre">
                                  <option value="<?php echo $datas[0]->cadre; ?>"> <?php echo $datas[0]->cadre; ?></option>
                                  <option value="T">Teaching</option>
                                  <option value="NT">Non Teaching</option>

                                </select>
                              </div>
                              </div>


                            <div id="text">
                              <div class="form-group" >
                                  <label for="date" class="control-label col-sm-2 col-xs-4">In_Time(In 24 Hrs):&nbsp;</label>
                                  <div class="col-sm-4 col-xs-6">
                                  <input type="time" class="form-control" id="date2" value="<?php echo $datas[0]->in_time; ?>" name="in_time">
                                </div>
                              </div>

                              <div class="form-group">
                                  <label for="date" class="control-label col-sm-2 col-xs-4">Out_Time (In 24 Hrs):&nbsp;</label>
                                    <div class="col-sm-4 col-xs-6">
                                  <input type="time" class="form-control" id="date2" name="out_time" value="<?php echo $datas[0]->out_time; ?>">
                                </div>
                              </div>
                            </div>

                        <div class="form-group">
                          <label for="sel1" class="control-label col-sm-2 col-xs-4">Type:</label>
                          <div class="col-sm-4 col-xs-6">
                          <select class="form-control" id="select" name="type">
                            <option value="<?php echo $datas[0]->p_value; ?>"> <?php echo $datas[0]->p_value; ?></option>
                            <option value="0">Leave</option>
                            <option value="-2">On Duty</option>
                            <option value="-1" >Permission</option>
                          </select>
                        </div>
                        </div>


                          <div class="form-group">
                              <label for="date" class="control-label col-sm-2 col-xs-4">Reason:&nbsp;</label>
                              <div class="col-sm-4 col-xs-6">
                              <input type="textarea" class="form-control" id="reason" value="<?php echo $datas[0]->reason; ?>" name="reason">
                            </div>
                          </div>

                          <div class="form-group">
                            <label for="sel1" class="control-label col-sm-2 col-xs-4">Physical Presence:</label>
                            <div class="col-sm-4 col-xs-6">
                            <select class="form-control" id="select" name="physical_presence" value="<?php echo $datas[0]->physical_presence; ?>">
                              <option value="<?php echo $datas[0]->physical_presence; ?>"> <?php echo $datas[0]->physical_presence; ?></option>
                              <option value="Y">Yes</option>
                              <option value="N">No</option>
                            </select>
                          </div>
                          </div>

                        <div class="form-group">
                          <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-success">Edit permission</button>
                          </div>
                        </div>
                      </form>
                    </div>




                    </div><!-- /.box-body -->


            </div>
        </div>
    </section>


</div>
