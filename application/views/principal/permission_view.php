<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-plane"></i> Staffs prior Permission Reports
        <small>Leave /Permission< / OD / Late</small>
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
                    <div class="container">
                      <h3>Choose Date and Cadre</h3><br>
                      <form class="form-horizontal" action="<?php echo base_url()?>permission" method="post">
                        <div class="form-group">
                          <label for="sel1" class="control-label col-sm-2 col-xs-4">Select Cadre:</label>
                          <div class="col-sm-4 col-xs-6">
                          <select class="form-control" id="sel1" name="cadre">
                            <option value="TNT">Both Teaching & Non- Teaching</option>
                            <option value="T">Teaching</option>
                            <option value="NT">Non-Teaching</option>
                          </select>
                        </div>
                        </div>

                        <div class="form-group">
                          <label for="sel1" class="control-label col-sm-2 col-xs-4">Select Department:</label>
                          <div class="col-sm-4 col-xs-6">
                          <select class="form-control" id="sel1" name="dept">
                            <option value="ALL">ALL Departments</option>
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

                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2 col-xs-4">From:&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="date" class="form-control" id="date" name="date">
                            </div>
                          </div>
                        <div class="form-group">
                          <div class="col-sm-offset-2 col-sm-10 col-xs-4">
                            <button type="submit" class="btn btn-success">Fetch</button>
                          </div>
                        </div>
                      </form>
                    </div>



                    </div><!-- /.box-body -->


            </div>
        </div>
    </section>


</div>
