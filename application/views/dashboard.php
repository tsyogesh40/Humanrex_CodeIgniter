<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard
        <small>Control panel</small>
      </h1>
    </section>

    <section class="content">
        <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>150</h3>
                  <p>New Tasks</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3>53<sup style="font-size: 20px">%</sup></h3>
                  <p>Completed Tasks</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3>44</h3>
                  <p>New User</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="<?php echo base_url(); ?>userListing" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>65</h3>
                  <p>Reopened Issue</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
          </div>

    </section>
    <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-12 text-center">
              <!-- general form elements -->


                <div class="box box-primary">
                    <div class="box-header">

                    </div><!-- /.box-header -->

                        <div class="box-body">
                          <div style ="margin: 0 auto;" >
                          <?php
                          if($this->session->userdata('date')!='')
                          {
                            ?>
                          <h3 class="head text-center">Welcome, <?php echo $this->session->userdata('name'); ?><sup>™</sup> <span style="color:#f48260;">♥</span></h3>
                          <h4 class="narrow text-center">
                            Your Entry on <?php echo $this->session->userdata('date');?> is at,
                          </h4>
                      <div class="table-responsive col-sm-6 col-xs-6">

                          <table class="table text-center table-bordered table-striped table-dark table-hover" style="max-width: 600px; min-width: 400px; border-radius: 5px;width: 50%;margin: 0px auto;float: none;" >
                            <tbody>
                              <?php
                              $status=$this->session->userdata('status');
                              if($status=="ONTIME")
                              {
                              echo'  <tr class="success">
                                  <td><b>Status :</b></td>
                                  <td>'.$status.'</td>
                                </tr>';
                              }
                              else {
                              echo' <tr class="danger">
                                  <td><b>Status :</b></td>
                                  <td>'.$status.'</td>
                                </tr>
                                <tr>';
                              }
                              ?>

                                <td><b>Intime :</b></td>
                                <td><?php echo $this->session->userdata('in_time'); ?></td>
                              </tr>
                              <tr>
                                <td><b>Outtime:</b></td>
                                <td><?php echo $this->session->userdata('out_time'); ?></td>
                              </tr>

                            </tbody>
                          </table>
                        </div>
                        </div>
                        <?php
                      }
                      else{
                          echo '<br><br>
                                <h3 class="head text-center">
                                    Your Presence is not Yet confirmed Today!
                                </h3> <br><br>';
                      }

                         ?>
                         <br><br><br>

                        </div><!-- /.box-body -->
                </div>
    </section>  <!--end of the section-->


</div>
