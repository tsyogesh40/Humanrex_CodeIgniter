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
            <div class="col-md-12">
              <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title"> </h3>
                    </div><!-- /.box-header -->

                    <?php
                    //print_r($data);
                    //print_r($names);
                    if($data!='No Records Found !')
                    {
                      if($info['cadre']=='T')
                      {
                        $str='Teaching Staff';
                      }
                      else if($info['cadre']=='NT') {
                        $str='Non-Teaching Staffs';
                      }
                      else {
                        $str='Teaching and Non-Teaching Staffs';
                      }

                      if($info['dept']=='ALL')
                        $department='All department';
                      else
                        $department=$info['dept'];

                        echo'
                        <div class="container print-this">
                        <div class="row">
                        <div class="col-lg-10 col-lg-offset-1 col-xs-12 col-sm-10 col-md-10">
                        <caption><u><h4><i>Report generated for '.$department.' '.$str.' ['.$info['from'].' - '.$info['to'].']</h4></i></u><br></caption>
                        <div class=" table-responsive">
                        ';

                        $str='';$status='';
                        if($info['dept']=='ALL')
                        $dep=array('IT','CSE','ECE','EEE','MECH','CIVIL','PHYSICS','CHEMISTRY','MATHS','ENGLISH','OFFICE');
                        else
                          $dep=array($info['dept']);

                      //  print_r($dep);
                          foreach($dep as $dept)
                          {
                            //Teaching
                            echo '<table class="table table-striped table-condensed table-bordered">
                              <caption><b><h4>'.$dept.'-Teaching staffs </h4></b></caption>
                                <thead class="bg-primary">
                                    <tr>
                                      <th>Name</th>
                                      <th>StaffID</th>';
                                  foreach($dates as $date)
                                    {
                                      echo '<td><b>'.$date->date.'</b></td>';
                                    }

                                  echo ' </tr></thead><tbody>';

                                  foreach($names as $name)
                                  {
                                    if($name->department==$dept&&$name->cadre=='T')
                                    {
                                      echo '<tr class="bg-info">
                                          <td>'.$name->name.'</td>
                                          <td>'.$name->staff_id.'</td>';
                                        foreach($dates as $date)
                                          {
                                            foreach($data[$dept] as $datas)
                                            {
                                              switch($datas->p_value)
                                              {
                                                case 0:$str='leave';break;
                                                case 1:$str='Half Day';break;
                                                case 2:$str='Full Day';break;
                                                case -1:$str='Permission';break;
                                                case -2:$str='OD';break;
                                              }
                                              if($datas->status=='Late')
                                                $status='[ LATE ]';
                                              else {
                                                $status=' ';
                                              }

                                              if($date->date==$datas->date&&$datas->cadre=='T')
                                              {
                                                if($name->staff_id==$datas->staff_id)
                                                {
                                                  echo '<td>'.$str.' '.$status.'</td>';
                                                }
                                              }
                                            }
                                          }
                                      echo  '</tr>';
                                    }

                                  }

                                  echo'   </tbody>
                                      </table>

                                      ';

                            //Non- Teaching
                            echo '<table class="table table-striped table-condensed table-bordered">
                              <caption><h4>'.$dept.'-Non Teaching Staffs </h4></caption>
                                <thead class="bg-primary">
                                    <tr>
                                      <th>Name</th>
                                      <th>StaffID</th>';
                                  foreach($dates as $date)
                                    {
                                      echo '<td><b>'.$date->date.'</b></td>';
                                    }

                                  echo ' </tr></thead><tbody>';
                                  foreach($names as $name)
                                  {
                                    if($name->department==$dept&&$name->cadre=='NT')
                                    {
                                      echo '<tr class="bg-info">
                                          <td>'.$name->name.'</td>
                                          <td>'.$name->staff_id.'</td>';
                                        foreach($dates as $date)
                                          {
                                            foreach($data[$dept] as $datas)
                                            {
                                              switch($datas->p_value)
                                              {
                                                case 0:$str='leave';break;
                                                case 1:$str='Half Day';break;
                                                case 2:$str='Full Day';break;
                                                case -1:$str='Permission';break;
                                                case -2:$str='OD';break;
                                              }
                                              if($datas->status=='Late')
                                                $status='[ LATE ]';
                                              else {
                                                $status=' ';
                                              }

                                              if($date->date==$datas->date&&$datas->cadre=='NT')
                                              {
                                                if($name->staff_id==$datas->staff_id)
                                                {
                                                  echo '<td>'.$str.' '.$status.'</td>';
                                                }
                                              }
                                            }
                                          }
                                      echo  '</tr>';
                                    }

                                  }

                                  echo'   </tbody>
                                      </table>';

                          }

                        echo ' </div>
                            </div>
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
