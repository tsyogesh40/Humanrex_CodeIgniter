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
                    if($datas!='No records found!')
                    {
              echo  '   <div class="container">
                      <div class="table-responsive">
                        <table class="table table-striped table-condensed">
                        <thead>
                        <th>Name</th>
                        <th>Staff ID</th>
                        <th>Store ID</th>
                        <th>Finger_name</th>
                        <th>Finger Code</th>
                        <th>Enolled Time</th>
                        <th><b>Actions</b></th>
                        </thead>';
                        foreach($datas as $data)
                        {

                          echo '<tr>
                          <td>'.$data->name.'</td>
                          <td>'.$data->staff_id.'</td>
                          <td>'.$data->store_id.'</td>
                          <td>'.$data->finger_name.'</td>
                          <td>'.$data->finger_code.'</td>
                          <td>'.$data->enroll_time.'</td>';
                           ?>

                          <td class="text-center">
                              <a class="btn btn-sm btn-info" href="<?= base_url().'edit-fingerprint/'.$data->staff_id.'/'.$data->finger_code?>" title="Edit"><i class="fa fa-pencil"></i></a>
                              <a class="btn btn-sm btn-danger deleteUser" href="<?= base_url().'delete-fingerprint/'.$data->staff_id.'/'.$data->finger_code?>"  title="Delete"><i class="fa fa-trash"></i></a>
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
