<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> View History
        <small>For a date or Range of Dates</small>
      </h1>
    </section>

  <section class="content">

        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
              <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">My History </h3>
                    </div><!-- /.box-header -->
                    <?php

                  if($history!="No record found !")
                  {
                      echo'
                      <div class="container">
                      <div class=" table-responsive" >
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                  <th>DATE</th>
                                  <th>IN_TIME</th>
                                  <th>OUT_TIME</th>
                                  <th>STATUS</th>
                                  <th>ATTENDENCE</th>
                                </tr>
                              </thead>
                              <tbody>';
                              //print_r($history);

                                foreach($history as $value)
                                  {
                                    $val=$value->p_value;
                                    if($val==1)
                                      $str="Half day present";
                                    else if($val==2)
                                      $str="Full day present";
                                    echo'  <tr>
                                              <td>'.$value->date.'</td>
                                              <td>'.$value->in_time.'</td>
                                              <td>'.$value->out_time.'</td>
                                              <td>'.$value->status.'</td>
                                              <td>'.$str.'</td>
                                            </tr>';
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
                                Sorry, No Datas Available for the selected Date!
                                Please try  for some other Dates.
                            </h3> <br><br>';
                    }
                      ?>


                    </div><!-- /.box-body -->


            </div>
        </div>
    </section>


</div>
