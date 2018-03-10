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
                        <div class="container print-this">
                        <div class="row">

                        <caption><h4><i>Report generated for '.$str.' from '.$info['from'].' to '.$info['to'].'</h4></i><br></caption>
                        <div class=" table-responsive">
                        <div class="col-lg-10 col-lg-offset-1 col-xs-12 col-sm-12 col-md-10">
                        <table class="table table-striped table-bordered table-condensed">
                              <thead>
                                  <tr class="bg-primary">
                                    <th>&nbsp;Name</th>
                                    <th>&nbsp;Staff Id</th>
                                    <th>&nbsp;Dept.</th>
                                    <th>Total Days</th>
                                    <th>&nbsp;Full Day Present</th>
                                    <th>&nbsp;Half Day Present</th>
                                    <th>&nbsp;Leave Days</th>
                                    <th>&nbsp;Permission </th>
                                    <th>&nbsp;OD</th>
                                    <th>&nbsp;Late</th>';
                                echo '</tr>
                                </thead>
                                <tbody>';
                                foreach($details as $val)
                                {
                                  echo '<tr class="bg-info">';
                                  echo '<td>&nbsp;'.$val->name.' </td>';
                                  echo '<td>&nbsp;'.$val->staff_id.' </td>';
                                  echo '<td>&nbsp;'.$info['dept'].' </td>';
                                  echo '<td>&nbsp;'.$total_days.' </td>';
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
                                    echo '<td>&nbsp;'.$full.' </td>';
                                    echo '<td>&nbsp;'.$half.' </td>';
                                    echo '<td>&nbsp;'.$leave.' </td>';
                                    echo '<td>&nbsp;'.$permission.' </td>';
                                    echo '<td>&nbsp;'.$od.'</td>';
                                    echo '<td>&nbsp;'.$late.' </td>';
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
