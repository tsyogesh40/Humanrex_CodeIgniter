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
                    if($datas!='No records found !')
                    {
                      //selecting cadre
                      if($info['cadre']=='T')
                      {
                        $str='Teaching Staffs';
                      }
                      else if($info['cadre']=='NT') {
                        $str='Non-Teaching Staffs';
                      }
                      else {
                        $str='Teaching and Non-teaching Staffs';
                      }

                      //selecting department
                      if($info['dept']=='ALL')
                        $department='All department';
                      else
                        $department=$info['dept'];


                        echo'
                        <div class="container print-this">
                        <div class="row">
                        <u><caption><h4><i>Report generated for '.$department.' '.$str.' ['.$info['from'].' - '.$info['to'].']</h4></i><br></caption></u>
                        <div class="col-lg-10 col-lg-offset-1 col-xs-12 col-sm-10 col-md-10">
                        <div class=" table-responsive">
                        ';

                            $str='';$status='';
                          if($info['dept']=='ALL')
                              $dep=array('IT','CSE','ECE','EEE','MECH','CIVIL','PHYSICS','CHEMISTRY','MATHS','ENGLISH','OFFICE');
                          else
                              $dep=array($info['dept']);

                            foreach($dep as $dept)
                            {

                          echo'  <table class="table table-striped table-dark table-bordered table-condensed">
                          <caption><h4>'.$dept.'-Teaching staffs </h4></caption>
                          <thead class="bg-primary">
                          <tr>
                          <th>Name</th>
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
                              foreach($names as $name)
                              {
                                if($dept==$name->department&&$name->cadre=='T')
                                {
                                  echo '<tr class="bg-info">';
                                  echo '<td>'.$name->name.' </td>';
                                  echo '<td>'.$name->staff_id.' </td>';
                                  echo '<td>'.$dept.' </td>';
                                  echo '<td>'.$total_days.' </td>';

                                  foreach($datas[$dept] as $data)
                                  {
                                    if($name->staff_id==$data->staff_id)
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

                              }
                              echo'        </tbody>
                                  </table>';

                              //For non teaching staffs
                              echo'    <table class="table table-striped table-bordered table-dark table-condensed">
                              <caption><h4>'.$dept.'-Non Teaching staffs </h4></caption>
                              <thead class="bg-primary">
                              <tr>
                              <th>Name</th>
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
                                  foreach($names as $name)
                                  {
                                    if($dept==$name->department&&$name->cadre=='NT')
                                    {
                                      echo '<tr class="bg-info">';
                                      echo '<td>'.$name->name.' </td>';
                                      echo '<td>'.$name->staff_id.' </td>';
                                      echo '<td>'.$dept.' </td>';
                                      echo '<td>'.$total_days.' </td>';

                                      foreach($datas[$dept] as $data)
                                      {
                                        if($name->staff_id==$data->staff_id)
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
                                  }


                                    echo'        </tbody>
                                        </table>';

                            }

                             echo'</div>
                              </div>
                              </div></div>';
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
