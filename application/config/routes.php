<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re_map URI requests to specific controller functions.
|
| Typically there is a one_to_one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my_controller/index	-> my_controller/index
|		my_controller/my_method	-> my_controller/my_method
*/

$route['default_controller'] = "login";
$route['404_override'] = 'error';


/*********** USER DEFINED ROUTES *******************/

$route['loginMe'] = 'login/loginMe';
$route['dashboard'] = 'user';
$route['logout'] = 'user/logout';
$route['userListing'] = 'user/userListing';
$route['userListing/(:num)'] = "user/userListing/$1";
$route['addNew'] = "user/addNew";

//admin panel

//permission
$route['add_permission']="admin/add_permission";
$route['request_permission']="admin/permission_view";
$route['view_permission']="admin/viewall_permission";
$route['edit_permission/(:any)/(:any)']="admin/edit_permission/$1/$2";
$route['update_permission']="admin/update_permission";
$route['delete_permission/(:any)/(:any)']="admin/delete_permission/$1/$2";

//altered time
$route['view_altered_time']="admin/view_altered_time";
$route['add_edit_altered_time']="admin/add_edit_altered_time";
$route['add_edit_altered_time/(:any)/(:any)']="admin/add_edit_altered_time/$1/$2";
$route['update_altered_time']="admin/update_altered_time";
$route['add_altered_time']="admin/add_altered_time";
$route['delete_altered_time/(:any)/(:any)']="admin/delete_altered_time/$1/$2";

//default time
$route['view_default_time']="admin/view_default_time";
$route['edit_default_time/(:any)']="admin/edit_default_time/$1";
$route['update_default_time']="admin/update_default_time";


//counter
$route['view_counter']="admin/view_counter";
$route['delete_counter/(:any)']="admin/delete_counter/$1";
$route['add_edit_counter']="admin/add_edit_counter";
$route['add_edit_counter/(:any)']="admin/add_edit_counter/$1";
$route['add_counter']="admin/add_counter";
$route['update_counter']="admin/update_counter";

//admin_attendence
$route['view_attendence']="admin/view_attendence";
$route['delete_attendence/(:any)/(:any)']="admin/delete_attendence/$1/$2";
$route['add_edit_attendence']="admin/add_edit_attendence";
$route['add_edit_attendence/(:any)/(:any)']="admin/add_edit_attendence/$1/$2";
$route['add_attendence']="admin/add_attendence";
$route['edit_attendence']="admin/edit_attendence";
$route['attendence_listing']="admin/attendence_listing";



//finger prints
$route['select_fingerprints']="admin/select_fingerprints";
$route['view_fingerprints']="admin/view_fingerprints";
$route['update_fingerprint']="admin/update_fingerprint";
$route['edit_fingerprint/(:any)/(:any)']="admin/edit_fingerprint/$1/$2";
$route['delete_fingerprint/(:any)/(:any)']="admin/delete_fingerprint/$1/$2";


//staff panel
$route['history']="user/select_by_id";
$route['history_all']="user/select_by_range";
$route['select']="user/select";
$route['profile']="user/profile";
$route['edit_profile']="user/edit_profile";

//hod Panel
$route['staff_today']='hod/staff_today';
$route['staff_history_view']='hod/staff_history_view';
$route['staff_history']="hod/staff_history";
$route['staff_consolidated_view']="hod/staff_consolidated_view";
$route['staff_consolidated']="hod/staff_consolidated";
$route['staff_permission_view']="hod/staff_permission_view";
$route['staff_permission']="hod/staff_permission";

//principal and admin panel
$route['today']='principal/today';
$route['today/(:any)']="principal/today/$1";
$route['history_view']='principal/history_view';
$route['history_result']='principal/history';
$route['consolidated_view']="principal/consolidated_view";
$route['consolidated']="principal/consolidated";
$route['permission_view']="principal/permission_view";
$route['permission']="principal/permission";

$route['permission_status']="user/permission_status";

$route['addNewUser'] = "user/addNewUser";
$route['editOld'] = "user/editOld";
$route['editOld/(:num)'] = "user/editOld/$1";
$route['editUser'] = "user/editUser";
$route['deleteUser'] = "user/deleteUser";
$route['loadChangePass'] = "user/loadChangePass";
$route['changePassword'] = "user/changePassword";
$route['pageNotFound'] = "user/pageNotFound";
$route['checkEmailExists'] = "user/checkEmailExists";
$route['login_history'] = "user/loginHistoy";
$route['login_history/(:num)'] = "user/loginHistoy/$1";
$route['login_history/(:num)/(:num)'] = "user/loginHistoy/$1/$2";

$route['forgotPassword'] = "login/forgotPassword";
$route['resetPasswordUser'] = "login/resetPasswordUser";
$route['resetPasswordConfirmUser'] = "login/resetPasswordConfirmUser";
$route['resetPasswordConfirmUser/(:any)'] = "login/resetPasswordConfirmUser/$1";
$route['resetPasswordConfirmUser/(:any)/(:any)'] = "login/resetPasswordConfirmUser/$1/$2";
$route['createPasswordUser'] = "login/createPasswordUser";

/* End of file routes.php */
/* Location: ./application/config/routes.php */
