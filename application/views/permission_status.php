<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> Staff's Permission
        <small>Permission Granted for the following dates</small>
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
                    if($datas!='No records found!')
                    {
              echo  '   <div class="container">
                      <div class="table-responsive">
                        <table class="table table-striped table-condensed">
                        <thead>
                        <th>Date</th>
                        <th>Name</th>
                        <th>Staff ID</th>
                        <th>Cadre</th>
                        <th>In Time</th>
                        <th>Out Time</th>
                        <th>Present Value</th>
                        <th>Reason</th>
                        <th>Physical Presence</th>
                        </thead>';
                        foreach($datas as $data)
                        {
                          if($data->p_value==-2)
                            $str='OD';
                          else if($data->p_value==-1)
                            $str='Permission';
                          else if($data->p_value==-0)
                              $str='Leave';
                          else if($data->p_value==1)
                                $str='Halfday Present';
                          else if($data->p_value==2)
                                $str='Fullday Present';

                          echo '<tr>
                          <td>'.$data->date.'</td>
                          <td>'.$data->name.'</td>
                          <td>'.$data->staff_id.'</td>
                          <td>'.$data->cadre.'</td>
                          <td>'.$data->in_time.'</td>
                          <td>'.$data->out_time.'</td>
                          <td>'.$str.'</td>
                          <td>'.$data->reason.'</td>
                          <td>'.$data->physical_presence.'</td>';
                           ?>


                      <?php  echo'  </tr>';
                        }

                    echo'   </table>
                      </div>
                    </div>';
                  }
                  else {
                    echo '<br><br>
                          <h3 class="head text-center">
                              Sorry, No Data Available!
                          </h3> <br><br>';
                  }
                    ?>
                    </div><!-- /.box-body -->

            </div>
        </div>
    </section>


</div>
