<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> Staff's History
        <small>History for Teaching and Non - Teaching staff</small>
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
                      <form class="form-horizontal" action="<?php echo base_url()?>staff-history" method="post">
                        <div class="form-group">
                          <label for="sel1" class="control-label col-sm-2">Select Cadre:</label>
                          <div class="col-sm-4 col-xs-10">
                          <select class="form-control" id="sel1" name="cadre">
                            <option value="T">Teaching</option>
                            <option value="NT">Non-Teaching</option>
                          </select>
                        </div>
                        </div>
                        <div class="form-group">
                            <label for="date" class="control-label col-sm-2">From:&nbsp;</label>
                            <div class="col-sm-4 col-xs-10">
                            <input type="date" class="form-control" id="date1" name="from_date">
                            </div>
                          </div>
                          <div class="form-group">
                              <label for="date" class="control-label col-sm-2">To:&nbsp;</label>
                              <div class="col-sm-4 col-xs-10">
                              <input type="date" class="form-control" id="date2" name="to_date">
                            </div>
                          </div>

                        <div class="form-group">
                          <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-success">Fetch History</button>
                          </div>
                        </div>
                      </form>
                    </div>


                    </div><!-- /.box-body -->


            </div>
        </div>
    </section>


</div>
