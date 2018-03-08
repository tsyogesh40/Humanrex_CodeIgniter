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
              <?php if($role[0]->roleId!=ROLE_ADMIN ){?>

              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3><?php echo $info[0]->total_days?></h3>
                  <p>Total Working Days</p>
                </div>
                <div class="icon">
                  <i class="ion ion-earth fa-spin"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3><?php echo $info[0]->present_days?></h3>
                  <p>Total Present Days</p>
                </div>
                <div class="icon">
                  <i class="ion ion-arrow-graph-up-right"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3><?php echo $info[0]->leave_days?></h3>
                  <p>Total Leave Days</p>
                </div>
                <div class="icon">
                  <i class="ion ion-arrow-down-c"></i>
                </div>
                <a href="<?php echo base_url(); ?>userListing" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3><?php echo $info[0]->late_days?></h3>
                  <p>Total Late Days</p>
                </div>
                <div class="icon">
                  <i class="ion ion-ios-bell"></i>
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

                          <?php
                          if($this->session->userdata('date')!='')
                          {
                            ?>
                          <h3 class="head text-center">Welcome, <?php echo $this->session->userdata('name'); ?><sup>™</sup> <span style="color:#f48260;">♥</span></h3>
                          <h4 class="narrow text-center">
                            Your Entry on <?php echo $this->session->userdata('date');?> is at,
                          </h4>
                      <div class="table-responsive">
                          <table class="table text-center table-bordered table-striped table-dark table-condensed">
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
<?php }?>
                        </div><!-- /.box-body -->
                </div>
    </section>  <!--end of the section-->


</div>
