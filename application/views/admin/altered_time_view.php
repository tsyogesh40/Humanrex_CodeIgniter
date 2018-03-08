<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> Altered timing
        <small>For Individual staff</small>
      </h1>
    </section>

  <section class="content">
    <div class="row">
        <div class="col-xs-12 text-right">
            <div class="form-group">
                <a class="btn btn-primary" href="<?php echo base_url(); ?>add-edit-altered-time"><i class="fa fa-plus"></i> Add New</a>
            </div>
        </div>
    </div>
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
              <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title"> </h3>
                    </div><!-- /.box-header -->
                    <?php
                    if($datas!='No records found!')
                    {
              echo  '   <div class="container">
                      <div class="table-responsive">
                        <table class="table table-striped table-condensed">
                        <thead>
                        <th>Date</th>
                        <th>In_time</th>
                        <th>Out_time</th>
                        <th>Cadre</th>
                        <th>Half working Hr</th>
                        <th>Full working Hr</th>
                        <th><b>Actions</b></th>
                        </thead>';

                        foreach($datas as $data)
                        {
                          echo '<tr>
                          <td>'.$data->date.'</td>
                          <td>'.$data->in_time.'</td>
                          <td>'.$data->out_time.'</td>
                          <td>'.$data->cadre.'</td>
                          <td>'.$data->half_wrk.'</td>
                          <td>'.$data->full_wrk.'</td>';
                           ?>
                          <td class="text-center">
                              <a class="btn btn-sm btn-info" href="<?= base_url().'add-edit-altered-time/'.$data->date.'/'.$data->cadre?>" title="Edit"><i class="fa fa-pencil"></i></a>
                              <a class="btn btn-sm btn-danger deleteUser" href="<?= base_url().'delete-altered-time/'.$data->date.'/'.$data->cadre?>"  title="Delete"><i class="fa fa-trash"></i></a>
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
