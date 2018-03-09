<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> Default College Timing
        <small>Edit College Timing</small>
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
                    <br>
                    <form class="form-horizontal" action="<?php echo base_url()?>update_default_time" method="post">
                      <div class="form-group">

                        <label for="sel1" class="control-label col-sm-2 col-xs-4">Select Cadre:</label>
                        <div class="col-sm-4 col-xs-6">
                        <select class="form-control" id="cadre"  name="cadre">
                          <option value="<?php echo $datas[0]->cadre?>"><?php echo $datas[0]->cadre?></option>
                          <option value="T">Teaching</option>
                          <option value="NT">Non-Teaching</option>
                        </select>
                      </div>
                      </div>

                      <div class="form-group" >
                          <label for="date" class="control-label col-sm-2 col-xs-4">In_time (24Hrs):&nbsp;</label>
                          <div class="col-sm-4 col-xs-6">
                          <input type="time" class="form-control" value="<?php echo $datas[0]->in_time?>" name="in_time">
                        </div>
                        </div>


                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Out_time (24 Hrs):&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="time" class="form-control" value="<?php echo $datas[0]->out_time?>" name="out_time">
                          </div>
                        </div>


                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Half working Hour:</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="time" class="form-control" id="reason" value="<?php echo $datas[0]->half_wrk?>" name="half_wrk">
                          </div>
                        </div>

                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">Full working Hour:</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="time" class="form-control" id="reason" value="<?php echo $datas[0]->full_wrk?>" name="full_wrk">
                          </div>
                        </div>

                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-success">Edit Default time</button>
                        </div>
                      </div>
                      <br></br>
                    </form>
                  </div>




                    </div><!-- /.box-body -->


            </div>
        </div>
    </section>


</div>
