<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> Counter
        <small>For Late days</small>
      </h1>
    </section>

  <section class="content">
    <div class="row">
        <div class="col-xs-12 text-right">
            <div class="form-group">
                <a class="btn btn-primary" href="<?php echo base_url(); ?>add_edit_counter"><i class="fa fa-plus"></i> Add New</a>
            </div>
        </div>
    </div>
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
              <!-- general form elements -->

                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title"> Counter List</h3>

                    </div><!-- /.box-header -->
                    <?php
                    $i=1;
                    if($datas!='No records found!')
                    {
              echo  '   <div class="container">
                      <div class="table-responsive">
                        <table class="table table-striped table-condensed">
                        <thead>
                        <th>No</th>
                        <th>Staff ID</th>
                        <th>Name</th>
                        <th>Counter Status</th>
                        <th>Total late Days</th>
                        <th><b>Actions</b></th>
                        </thead>';
                        foreach($datas as $data)
                        {

                          echo '<tr>
                          <td>'.$i++.'</td>
                          <td>'.$data->staff_id.'</td>
                          <td>'.$data->name.'</td>
                          <td>'.$data->count.'</td>
                          <td>'.$data->late_days.'</td> ';
                           ?>

                          <td class="text-center">
                              <a class="btn btn-sm btn-info" href="<?= base_url().'add_edit_counter/'.$data->staff_id ?>" title="Edit"><i class="fa fa-pencil"></i></a>
                              <a class="btn btn-sm btn-danger deleteUser" href="<?= base_url().'delete_counter/'.$data->staff_id ?>"  title="Delete"><i class="fa fa-trash"></i></a>
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
