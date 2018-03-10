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
                    //print_r($dates);
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
                        <div class="container print-this">
                        <div class="row">
                        <caption><h4><i>Report generated for '.$str.' from '.$info['from'].' to '.$info['to'].'</h4></i><br></caption>
                        <div class=" table-responsive">
                        <div class="col-lg-12 col-lg-offset-0 col-xs-12 col-sm-10 col-md-10">
                          <table class="table table-striped table-bordered table-condensed">
                              <thead class="bg-primary">
                                  <tr class="table-danger">
                                    <th>Name</th>
                                    <th>Staff Id</th>';
                                  foreach($dates as $value)
                                  {
                                    echo '<th>'.$value->date.'</th>';
                                  }
                                  echo '</tr>
                                </thead>
                                <tbody>';

                                echo'<br><br>';

                                foreach($staff_id as $val)
                                {
                                  echo '<tr class="bg-info">
                                   <td>'.$val->name.'</td>';
                                  echo '<td>'.$val->staff_id.'</td>';
                                    foreach($dates as $val1)
                                    {
                                      $flag=0;
                                      foreach($history as $val2)
                                      {

                                        if($val->staff_id==$val2->staff_id)
                                          {

                                            if($val2->p_value==1)
                                            {  $str='Half day Present'; }
                                            else if($val2->p_value==2)
                                            {  $str='Full day Present'; }
                                            else if($val2->p_value==0)
                                            {  $str='leave'; }


                                            if($val1->date==$val2->date )
                                            {
                                            echo '<td data-toggle="tooltip" data-placement="top" data-html="true" title="Date:'.$val2->date.'<br>Intime:'.$val2->in_time.'<br>Outtime:'.$val2->out_time.'<br>Status:'.$val2->status.'">'.$str.'</td>';
                                            }
                                            else if($val1->date!=$val2->date)
                                            { // echo '<td>1</td>';
                                            }

                                            }
                                        }
                                      }

                                  echo '</tr>';
                                }


                                echo'        </tbody>
                                    </table>
                                    </div>
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
