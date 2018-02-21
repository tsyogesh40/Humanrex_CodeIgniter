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
                    //print_r($history);

                    if($history!='No Records Found !')
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

                          <table class="table table-striped">
                              <thead>
                                  <tr>
                                    <th>Staff Name</th>
                                    <th>Staff Id</th>';
                                  foreach($history as $value)
                                  {
                                    echo '<th>'.$value->date.'</th>';
                                  }
                                  echo '</tr>
                                </thead>
                                <tbody>';
                                //print_r($history);

                                  foreach($history as $value)
                                    {
                                      echo'  <tr>
                                                <td><b>'.$value->name.'</b></td>
                                                <td>'.$value->staff_id.'</td>';
                                                foreach($history as $value)
                                                {
                                                  $val=$value->p_value;
                                                  if($val==1)
                                                    $str="Half day present";
                                                  else if($val==2)
                                                    $str="Full day present";
                                                  echo '<td>'.$str.'</td>';
                                                }

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
