<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-calendar"></i> Today Status
        <small>For Individual Department / whole College</small>
      </h1>
    </section>

  <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
              <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title"> </h3>
                    </div><!-- /.box-header -->
                    <?php


                    if($today!="No record found !")
                    {
                      echo '<div class="container">
                        <div class="table-responsive">
                        <caption><h4>Todays overview for all departments  ('.date('d-m-Y').')</h4><br></caption>
                        <table class="table table-striped">
                        <thead>
                          <tr>
                            <th>Department</th>
                            <th>No of Present</th>
                            <th>No of Late</th>
                            <th>No of Leave</th>
                            <th>No of OD</th>
                            <th>No of Permission</th>
                          </tr>
                        </thead>
                        <tbody>';

                        $present=0;
                        $late=0;
                        $leave=0;
                        $od=0;
                        $permission=0;
                        $arr=array('IT','CSE','ECE','EEE','CIVIL','MECH','PHYSICS','CHEMISTRY','MATHS','ENGLISH','OFFICE');
                      foreach($arr as $dept)
                      {
                        foreach($today as $val)
                        {

                          if($val->dept==$dept)
                            {
                              if($val->status=='LATE')
                                $late++;
                              if($val->p_value==1||$val->p_value==2)
                                $present++;
                              else if($val->p_value==0)
                                $leave++;
                              else if($val->p_value==-1)
                                $permission++;
                              else if($val->p_value==-2)
                                $od++;
                            }
                          }

                          echo '<tr>';?>

                            <td><a  href="<?= base_url().'today/'.$dept; ?>" ><b><?php echo $dept;?></b></a></td>

                            <?php
                        echo '<td>'.$present.'</td>
                            <td>'.$late.'</td>
                            <td>'.$leave.'</td>
                            <td>'.$od.'</td>
                            <td>'.$permission.'</td>
                          </tr>';
                          $present=0;
                          $late=0;
                          $leave=0;
                          $od=0;
                          $permission=0;

                        }
                          echo '</tbody>
                          </table>
                        </div>
                      </div> <br>';

                      }
                      else
                      {
                        echo '<br><br>
                              <h3 class="head text-center">
                                  Sorry, No Datas Available for '.date('d-m-Y').'!
                                  Please try  for some other Dates.
                              </h3> <br><br>';
                      }
                        ?>

                    </div><!-- /.box-body -->


            </div>
        </div>
    </section>


</div>
