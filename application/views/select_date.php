<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> View History
        <small>For a date or Range of Dates</small>
      </h1>
    </section>

  <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
              <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Please select Dates! </h3>
                    </div><!-- /.box-header -->
                    <br><br><br><br><br>
                    <form class="form-inline text-center" action="<?=base_url()?>history"  method="post">
                          <div class="form-group">
                              <label for="date">Select Date:&nbsp;</label>
                              <input type="date" class="form-control" id="date" name="date">
                            </div>
                              <button type="submit" class="btn btn-primary">select</button>
                            </form><br>
                            <h4 class="narrow text-center">------------------(or)------------------<br>   </h4>
                            <br><p class="narrow text-center"><b>Select by range of dates<br>   </b></p>
                            <form class="form-inline text-center"  method="post" action="<?=base_url()?>history_all">
                              <div class="form-group">
                                  <label for="date">From:&nbsp;</label>
                                  <input type="date" class="form-control" id="date1" name="from_date">
                                </div>
                                <div class="form-group">
                                    <label for="date">To:&nbsp;</label>
                                    <input type="date" class="form-control" id="date2" name="to_date">
                                </div>
                                  <button type="submit" class="btn btn-primary">select</button>
                                </form>

                                <br><br><br><br><br>
                        </div><!-- /.box-body -->


            </div>
        </div>
    </section>


</div>
