<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> Daily Attendence
        <small>Add,Edit, Delete attendence entry</small>
      </h1>
    </section>

  <section class="content">
    <div class="row">
        <div class="col-xs-12 text-right">
            <div class="form-group">
                <a class="btn btn-primary" href="<?php echo base_url(); ?>add-edit-attendence"><i class="fa fa-plus"></i> Add New</a>
            </div>
        </div>
    </div>
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
              <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title"> Attendence List</h3>
                        <div class="box-tools">
                        <form action="<?php echo base_url()?>attendence-listing" method="POST" id="searchList">
                            <div class="input-group">
                              <input type="text" name="searchtext" value="<?php echo $searchtext; ?>" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search"/>
                              <div class="input-group-btn">
                                <button class="btn btn-sm btn-default searchList"><i class="fa fa-search"></i></button>
                              </div>
                            </div>
                        </form>
                      </div>
                    </div><!-- /.box-header -->
                    <?php
                    if($datas!='No records found!')
                    {
              echo  '   <div class="container">
                      <div class="table-responsive">
                        <table class="table table-striped">
                        <thead>
                        <th>Date</th>
                        <th>Cadre</th>
                        <th>Name</th>
                        <th>Staff_id</th>
                        <th>Store_id</th>
                        <th>Department</th>
                        <th>In_time</th>
                        <th>Out_time</th>
                        <th>Present value</th>
                        <th>No_of_entry</th>
                        <th>Status</th>
                        <th>Semester</th>
                        <th>Year</th>
                        <th><b>Actions</b></th>
                        </thead>';
                        $str='';
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
                          <td>'.$data->cadre.'</td>
                          <td><b>'.$data->name.'</b></td>
                          <td>'.$data->staff_id.'</td>
                          <td>'.$data->store_id.'</td>
                          <td>'.$data->dept.'</td>
                          <td>'.$data->in_time.'</td>
                          <td>'.$data->out_time.'</td>
                          <td>'.$str.'</td>
                          <td>'.$data->no_of_entry.'</td>
                          <td>'.$data->status.'</td>
                          <td>'.$data->semester.'</td>
                          <td>'.$data->year.'</td>';
                           ?>
                          <td class="text-center">
                              <a class="btn btn-sm btn-info" href="<?= base_url().'add-edit-attendence/'.$data->staff_id.'/'.$data->date?>" title="Edit"><i class="fa fa-pencil"></i></a>
                              <a class="btn btn-sm btn-danger deleteUser" href="<?= base_url().'delete-attendence/'.$data->staff_id.'/'.$data->date?>"  title="Delete"><i class="fa fa-trash"></i></a>
                          </td>
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
