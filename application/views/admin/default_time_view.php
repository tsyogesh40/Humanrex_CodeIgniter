<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-bar-chart"></i> College Default time
        <small>Edit College timing</small>
      </h1>
    </section>

  <section class="content">
    <div class="row">
        <div class="col-xs-12 text-right">
            <div class="form-group">
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
                        <th>Cadre</th>
                        <th>In_time</th>
                        <th>Out_time</th>
                        <th>Half working Hr</th>
                        <th>Full working Hr</th>
                        <th><b>Actions</b></th>
                        </thead>';
                        foreach($datas as $data)
                        {

                          echo '<tr>
                          <td>'.$data->cadre.'</td>
                          <td>'.$data->in_time.'</td>
                          <td>'.$data->out_time.'</td>
                          <td>'.$data->half_wrk.'</td>
                          <td>'.$data->full_wrk.'</td>';
                           ?>
                          <td class="text-center">
                              <a class="btn btn-sm btn-info" href="<?= base_url().'edit_default_time/'.$data->cadre?>" title="Edit"><i class="fa fa-pencil"></i></a>
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
