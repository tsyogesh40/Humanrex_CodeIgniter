<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-line-chart"></i> FingerPrint Management
        <small>Select Staff ID</small>
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
                      <h3>Enter Staff ID</h3><br>
                      <form class="form-horizontal" action="<?php echo base_url()?>view-fingerprints" method="post">


                        <div class="form-group">
                            <label for="date" class="control-label  col-xs-4 col-sm-2">Staff ID:&nbsp;</label>
                            <div class="col-sm-4 col-xs-6">
                            <input type="text" class="form-control" id="staff_id" name="staff_id">
                            </div>
                          </div>

                        <div class="form-group">
                          <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-success">Fetch Fingerprints</button>
                          </div>
                        </div>
                      </form>
                    </div>


                    </div><!-- /.box-body -->


            </div>
        </div>
    </section>


</div>
