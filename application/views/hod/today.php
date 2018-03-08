<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-calendar"></i> Today's Status
        <small><?php echo date("d/m/Y");?></small>
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

                      echo'
                      <div class="container">
                      <div class=" table-responsive">
                      <caption><h3>Report for Teaching Staffs</h3><br></caption>
                        <table class="table table-striped table-condensed">
                            <thead>
                                <tr>
                                  <th>Name</th>
                                  <th>DATE</th>
                                  <th>IN_TIME</th>
                                  <th>OUT_TIME</th>
                                  <th>STATUS</th>
                                  <th>ATTENDENCE</th>
                                </tr>
                              </thead>
                              <tbody>';
                              //print_r($history);

                                foreach($today as $value)
                                  {
                                    $val=$value->p_value;
                                    if($val==1)
                                      $str="Half day present";
                                    else if($val==2)
                                      $str="Full day present";
                                    if ($value->cadre=='T')
                                    {
                                    echo'  <tr>
                                              <td><b>'.$value->name.'</b></td>
                                              <td>'.$value->date.'</td>
                                              <td>'.$value->in_time.'</td>
                                              <td>'.$value->out_time.'</td>
                                              <td>'.$value->status.'</td>
                                              <td>'.$str.'</td>
                                            </tr>';
                                          }
                                      }
                                    echo'        </tbody>
                                  </table>
                                  </div>
                            </div>';


                            //for Non- teaching staffs
                            echo'
                            <div class="container">
                            <div class=" table-responsive">
                            <caption><h3>Report for Non - Teaching Staffs</h3><br></caption>
                              <table class="table table-striped table-condensed">
                                  <thead>
                                      <tr>
                                        <th>Name</th>
                                        <th>DATE</th>
                                        <th>IN_TIME</th>
                                        <th>OUT_TIME</th>
                                        <th>STATUS</th>
                                        <th>ATTENDENCE</th>
                                      </tr>
                                    </thead>
                                    <tbody>';
                                    //print_r($history);

                                      foreach($today as $value)
                                        {
                                          $val=$value->p_value;
                                          if($val==1)
                                            $str="Half day present";
                                          else if($val==2)
                                            $str="Full day present";
                                          if ($value->cadre=='NT')
                                          {
                                          echo'  <tr>
                                                    <td><b>'.$value->name.'</b></td>
                                                    <td>'.$value->date.'</td>
                                                    <td>'.$value->in_time.'</td>
                                                    <td>'.$value->out_time.'</td>
                                                    <td>'.$value->status.'</td>
                                                    <td>'.$str.'</td>
                                                  </tr>';
                                                }
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
