<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> Alter College Timings
        <small>This is used to alter the college timings</small>
      </h1>
    </section>

  <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-8">
              <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title"> </h3>
                    </div><!-- /.box-header -->

                    <h3>Enter the details to alter the college timings</h3><br>
                    <form class="form-horizontal" action="<?php echo base_url()?>update_altered_time" method="post">
                      <div class="form-group">
                          <label for="date" class="control-label col-sm-2 col-xs-4">Date:&nbsp;</label>
                          <div class="col-sm-4 col-xs-6">
                          <input type="date" class="form-control" value="<?php echo $data[0]->date;?>" id="date1" name="date">
                          </div>
                        </div>



                        <div class="form-group" >
                            <label for="date" class="control-label col-sm-2 col-xs-4">In_time (24Hrs):&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="time" class="form-control" value="<?php echo $data[0]->in_time;?>" name="in_time">
                          </div>
                        </div>


                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Out_time (24 Hrs):&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="time" class="form-control" value="<?php echo $data[0]->out_time;?>" name="out_time">
                          </div>
                        </div>


                        <div class="form-group">
                          <label for="sel1" class="control-label col-sm-2 col-xs-4">Cadre:</label>
                          <div class="col-sm-4 col-xs-6">
                          <select class="form-control" id="cadre" name="cadre">
                            <option value="<?php echo $data[0]->cadre;?>"><?php echo $data[0]->cadre;?></option>
                            <option value="T">Teaching</option>
                            <option value="NT">Non-Teaching</option>
                          </select>
                        </div>
                      </div>

                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Half working Hour:</label>
                            <div class="col-sm- col-xs-6">
                            <input type="time" class="form-control" id="reason" value="<?php echo $data[0]->half_wrk;?>"name="half_wrk">
                          </div>
                        </div>

                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Full working Hour:</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="time" class="form-control" id="reason" value="<?php echo $data[0]->full_wrk;?>" name="full_wrk">
                          </div>
                        </div>

                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-success">Update timings</button>
                          <br><br>
                        </div>
                      </div>
                    </form>
                  </div>




                    </div><!-- /.box-body -->


            </div>
        </div>
    </section>


</div>
