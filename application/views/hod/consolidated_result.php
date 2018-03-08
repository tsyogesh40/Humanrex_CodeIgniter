<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-line-chart"></i> Staff's Consolidated Report
        <small>Consolidated Report for Teaching and Non - Teaching staff</small>
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
                    $total=0;
                    $full=0;
                    $half=0;
                    $leave=0;
                    $permission=0;
                    $late=0;
                    $od=0;
                    //print_r($total_days);
                    //print_r($datas);
                    if($datas!='No Records Found !')
                    {
                      if($info['cadre']=='T')
                      {
                        $str='Teaching Staff';
                      }
                      else {
                        $str='Non-Teaching Staffs';
                      }

                        echo'
                        <div class="container">
                        <div class=" table-responsive">
                        <caption><h4><i>Report generated for '.$str.' from '.$info['from'].' to '.$info['to'].'</h4></i><br></caption>

                          <table class="table table-striped table-condensed">

                              <thead>
                                  <tr>
                                    <th>Staff Name</th>
                                    <th>Staff Id</th>
                                    <th>Department</th>
                                    <th>Total Days</th>
                                    <th>Full Day Present</th>
                                    <th>Half Day Present</th>
                                    <th>Leave Days</th>
                                    <th>Permission </th>
                                    <th>OD</th>
                                    <th>Late</th>';
                                echo '</tr>
                                </thead>
                                <tbody>';
                                foreach($details as $val)
                                {
                                  echo '<tr>';
                                  echo '<td>'.$val->name.' </td>';
                                  echo '<td>'.$val->staff_id.' </td>';
                                  echo '<td>'.$info['dept'].' </td>';
                                  echo '<td>'.$total_days.' </td>';
                                    foreach($datas as $data)
                                    {
                                      if($val->staff_id==$data->staff_id)
                                      {
                                        //based on the status
                                        if($data->status=='LATE')
                                          $late++;

                                        //based on the P_value
                                        if($data->p_value==0)
                                          $leave++;
                                        else if($data->p_value==1)
                                          $half++;
                                        else if($data->p_value==2)
                                          $full++;
                                        else if($data->p_value==-1)
                                          $permission++;
                                        else if($data->p_value==-2)
                                          $od++;
                                      }
                                    }
                                    echo '<td>'.$full.' </td>';
                                    echo '<td>'.$half.' </td>';
                                    echo '<td>'.$leave.' </td>';
                                    echo '<td>'.$permission.' </td>';
                                    echo '<td>'.$od.'</td>';
                                    echo '<td>'.$late.' </td>';
                                    $total=0;
                                    $full=0;
                                    $half=0;
                                    $leave=0;
                                    $permission=0;
                                    $late=0;
                                    $od=0;
                                  echo '</tr>';
                                }

                                echo'        </tbody>
                                    </table>
                                    </div>
                              </div>';
                      }
                      else
                      {
                        echo '<br><br>
                              <h3 class="head text-center">
                                  Sorry, No Datas Available for selected dates!
                                  Please try  for some other Dates.
                              </h3> <br><br>';
                      }


                     ?>



                    </div><!-- /.box-body -->


            </div>
        </div>
    </section>


</div>
