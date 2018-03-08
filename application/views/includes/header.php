<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title><?php echo $pageTitle; ?></title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!--table CSS
    <link href="<?php echo base_url(); ?>assets/table.css" rel="stylesheet" type="text/css" />-->
    <!-- Bootstrap 3.3.4 -->
    <link href="<?php echo base_url(); ?>assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- FontAwesome 4.3.0 -->
    <link href="<?php echo base_url(); ?>assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="<?php echo base_url(); ?>assets/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link href="<?php echo base_url(); ?>assets/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <style>
    /* Don't print link hrefs */
    @media print {
      a[href]:after {
          content: none
        }
      }

    	.error{
    		color:red;
    		font-weight: normal;
    	}
    </style>
    <!-- jQuery 2.1.4 -->
    <script src="<?php echo base_url(); ?>assets/js/jQuery-2.1.4.min.js"></script>
    <script type="text/javascript">
        var baseURL = "<?php echo base_url(); ?>";
    </script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="<?php echo base_url(); ?>" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>HR</b></span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>HUMANREX</b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                  <i class="fa fa-history"></i>
                </a>
                <ul class="dropdown-menu">
                  <li class="header"> Last Login : <i class="fa fa-clock-o"></i> <?= empty($last_login) ? "First Time Login" : $last_login; ?></li>
                </ul>
              </li>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="<?php echo base_url(); ?>assets/dist/img/avatar.png" class="user-image" alt="User Image"/>
                  <span class="hidden-xs"><?php echo $name; ?></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="<?php echo base_url(); ?>assets/dist/img/avatar.png" class="img-circle" alt="User Image" />
                    <p>
                      <?php echo $name; ?>
                      <small><?php echo $role_text; ?></small>
                    </p>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="<?php echo base_url(); ?>loadChangePass" class="btn btn-default btn-flat"><i class="fa fa-key"></i> Change Password</a>
                    </div>
                    <div class="pull-right">
                      <a href="<?php echo base_url(); ?>logout" class="btn btn-default btn-flat"><i class="fa fa-sign-out"></i> Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu" style="height:120vh;overflow-y:scroll auto ;">
            <li class="header">MAIN NAVIGATION</li>
            <li class="treeview">
              <a href="<?php echo base_url(); ?>dashboard">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span></i>
              </a>
            </li>
            <?php if($role!=ROLE_ADMIN) {?>
            <li class="treeview">
              <a href="<?php echo base_url();?>select" >
                <i class="fa fa-bar-chart"></i>
                <span>My History</span>
              </a>
            </li>
            <li class="treeview">
              <a href="<?php echo base_url();?>profile" >
                <i class="ion ion-person-add"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li class="treeview">
              <a href="#request" data-toggle="collapse" >
                <i class="fa fa-flag-o"></i>
                <span>Request</span>
              </a>
              <div id="request" class="collapse">
              <ul>
                <br>
            <!--    <li class="treeview">
                  <a href="<?php // echo base_url();?>request-permission" >
                    <i class="fa fa-edit"></i>
                    <span>Apply Permission/ OD / Leave</span>
                  </a>
                </li>
                <br>-->
                <li class="treeview">
                  <a href="<?php echo base_url();?>profile" >
                    <i class="fa fa-spinner"></i>
                    <span>Permission / OD / Leave status</span>
                  </a>
                </li>
                <br>
              </ul>
              </div>
            </li>
          <?php }?>
            <?php
            if($role==ROLE_HOD)
              {
            ?>
            <li class="header">HOD Panel</li>
            <li class="treeview">
              <a href="#reports" data-toggle="collapse" title="Used to view Staffs Periodic reports">
                <i class="fa fa-files-o"></i>
                <span>Reports</span>
              </a>
              <div id="reports" class="collapse">
                <ul class="dropdown">
                  <li class="treeview" title="Gives Detailed report for all staffs about Today ">
                    <a href="<?php echo base_url()?>staff-today" ><br>
                      <i class="fa fa-calendar"></i>
                      <span>Today</span>
                    </a>
                  </li>
                  <br>
                  <li class="treeview">
                    <a href="<?php echo base_url()?>staff-history-view" >
                      <i class="fa fa-bar-chart"></i>
                      <span>History</span>
                    </a>
                  </li>
                  <br>
                  <li class="treeview">
                    <a href="<?php echo base_url()?>staff-consolidated-view" >
                      <i class="fa fa-line-chart"></i>
                      <span>Consolidated</span>
                    </a>
                  </li>
                  <br>
                  <li class="treeview">
                    <a href="<?php echo base_url()?>staff-permission-view" >
                      <i class="fa fa-plane"></i>
                      <span>Leave / OD /Late /Permission</span>
                    </a>
                  </li>
                </ul>
                <br>
              </div>
            </li>


          <?php } ?>

            <?php
            if($role == ROLE_ADMIN || $role == ROLE_PRINCIPAL )
            {
            ?>
            <li class="header">Principal Panel</li>
            <li class="treeview">
              <a href="#reports" data-toggle="collapse" title="Used to view Staffs Periodic reports">
                <i class="fa fa-files-o"></i>
                <span>Reports</span>
              </a>
              <div id="reports" class="collapse">
                <ul class="dropdown">
                  <li class="treeview">
                    <a href="<?php echo base_url()?>today" ><br>
                      <i class="fa fa-calendar"></i>
                      <span>Today</span>
                    </a>
                  </li>
                  <br>
                  <li class="treeview">
                    <a href="<?php echo base_url()?>history-view" >
                      <i class="fa fa-bar-chart"></i>
                      <span>History</span>
                    </a>
                  </li>
                  <br>
                  <li class="treeview">
                    <a href="<?php echo base_url()?>consolidated-view" >
                      <i class="fa fa-line-chart"></i>
                      <span>Consolidated</span>
                    </a>
                  </li>
                  <br>
                  <li class="treeview">
                    <a href="<?php echo base_url()?>permission-view" >
                      <i class="fa fa-plane"></i>
                      <span>Leave / OD /Late /Permission</span>
                    </a>
                  </li>
                </ul>
                <br>
              </div>
            </li>

            <?php
            }
            if($role == ROLE_ADMIN)
            {
            ?>
            <li class="header">ADMINISTRATION</li>
            <li class="treeview">
              <a href="#users" data-toggle="collapse">
                <i class="fa fa-users"></i>
                <span>Users</span>
              </a>
            </li>
            <div id="users" class="collapse">
              <ul>
                <br>
                <li class="treeview">
                  <a href="<?php echo base_url(); ?>userListing" >
                    <i class="fa fa-gear"></i>
                    <span>User Management</span>
                  </a>
                </li>
                <br>
                <li class="treeview">
                  <a href="<?php echo base_url(); ?>request-permission">
                    <i class="fa fa-file-text-o"></i>
                    <span> Permission / OD / Leave </span>
                  </a>
                </li>
                <br>
                <li class="treeview">
                  <a href="<?php echo base_url(); ?>select-fingerprints">
                    <i class="fa fa-thumbs-o-up"></i>
                    <span> View Fingerprints </span>
                  </a>
                </li>
                <br>
              </ul>
            </div>
            <li class="treeview">
              <a href="#time" data-toggle="collapse">
                <i class="fa fa-cogs"></i>
                <span>Attendence Management</span>
              </a>
            </li>
            <div id="time" class="collapse">
              <ul>
                <br>
                <li class="treeview">
                  <a href="<?php echo base_url()?>view-default-time">
                    <i class="fa fa-cog fa-spin"></i>
                    <span>Alter Default time</span>
                  </a>
                </li>

                <br>
                <li class="treeview">
                  <a href="<?php echo base_url()?>view-altered-time">
                    <i class="fa fa-unlink fa-spin"></i>
                    <span>Alter College time</span>
                  </a>
                </li>

                <br>
                <li class="treeview">
                  <a href="<?php echo base_url()?>view-counter">
                    <i class="fa fa-copyright"></i>
                    <span>User Counter </span>
                  </a>
                </li>
                <br>
                <li class="treeview">
                  <a href="<?php echo base_url()?>view-attendence">
                    <i class="fa fa-exclamation-triangle"></i>
                    <span>Edit attendence </span>
                  </a>
                </li>
                <br>
              </ul>
            </div>

            <?php
            }
            ?>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
