<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-plane"></i> Staffs prior Permission Reports
        <small>Leave /Permission< / OD / Late</small>
      </h1>
    </section>

  <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-lg-12 col-xs-12 col-sm-10 col-md-12">
              <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title"> </h3>
                    </div><!-- /.box-header -->
                    <?php

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


                      $i=1;
                        echo'
                        <div class="container print-this">
                        <div class="row">
                        <caption><h4><i>Report generated for '.$department.' '.$str.'  - [ '.$info['date'].']</h4></i><br></caption>
                        <div class="col-lg-10 col-lg-offset-1 col-xs-12 col-sm-10 col-md-10">
                        <div class=" table-responsive">

                        ';

                        if($info['dept']=='ALL')
                            $dep=array('IT','CSE','ECE','EEE','MECH','CIVIL','PHYSICS','CHEMISTRY','MATHS','ENGLISH','OFFICE');
                        else
                            $dep=array($info['dept']);
                      //For Teaching staffs
                        foreach($dep as $dept)
                        {
                          echo '  <table class="table table-striped table-condensed table-bordered">
                          <caption><h4>'.$dept.'-Teaching staffs </h4></caption>
                                <thead class="bg-primary">
                                    <tr>
                                    <th>&nbsp;Dept.</th>
                                    <th>&nbsp;Leave</th>
                                    <th>&nbsp;OD</th>
                                    <th>&nbsp;Permission</th>
                                    <th>&nbsp;Late</th>';
                                  echo '</tr>
                                  </thead>
                                  <tbody>';

                                  echo '<tr>';
                                      echo '<td class="col-lg-1 col-md-1 col-xs-1 col-sm-1">'.$dept.'</td>';
                                      //this element is for displaying leave
                                      echo '<td class="col-lg-2 col-md-2 col-xs-2 col-sm-2">';
                                      echo '<ul class="list-group">';
                                      foreach($datas[$dept] as $val)
                                        {
                                          if($val->p_value==0&&$val->cadre==$info['cadre'])
                                          echo '<li class="list-group-item list-group-item-info">'.$i++.' . '.$val->name.'  [ '.$val->staff_id.' ]';
                                          echo '</li>';
                                        }
                                        $i=1;
                                      echo '</ul>';
                                      echo '</td>';//end of leave element

                                      //this element is for d isplaying OD
                                      echo '<td class="col-lg-2 col-md-2 col-xs-2 col-sm-2>';
                                      echo '<ul class="list-group">';
                                      foreach($datas[$dept] as $val)
                                        {
                                          if($val->p_value==-2&&$val->cadre==$info['cadre'])
                                          echo '<li class="list-group-item list-group-item-warning">'.$i++.' . '.$val->name.'  [ '.$val->staff_id.' ]';
                                          echo '</li>';
                                        }
                                        $i=1;
                                      echo '</ul>';
                                      echo '</td>';//end of OD element

                                      //this element is for displaying Permission
                                      echo '<td class="col-lg-2 col-md-2 col-xs-2 col-sm-2>';
                                      echo '<ul class="list-group">';
                                      foreach($datas[$dept] as $val)
                                        {
                                          if($val->p_value==-1&&$val->cadre==$info['cadre'])
                                          echo '<li class="list-group-item list-group-item-success">'.$i++.' . '.$val->name.'  [ '.$val->staff_id.' ]';
                                          echo '</li>';
                                        }
                                        $i=1;
                                      echo '</ul>';
                                      echo '</td>';//end of permission

                                      //this element is for displaying Late
                                      echo '<td class="col-lg-2 col-md-2 col-xs-2 col-sm-2>';
                                      echo '<ul class="list-group">';
                                      foreach($datas[$dept] as $val)
                                        {
                                          if($val->status=='LATE'&&$val->cadre==$info['cadre'])
                                          echo '<li class="list-group-item list-group-item-danger">'.$i++.' . '.$val->name.'  [ '.$val->staff_id.' ]';
                                          echo '</li>';
                                        }
                                        $i=1;
                                      echo '</ul>';
                                      echo '</td>';//end of late element

                                  echo '</tr>';

                                  echo'        </tbody>
                                      </table>';
                        }


                          echo' </div>
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
