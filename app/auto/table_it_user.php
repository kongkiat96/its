<?php
session_start();
error_reporting(0);
require '../../core/config.core.php';
require '../../core/connect.core.php';
require '../../core/functions.core.php';
require '../../core/logs.core.php';
require '../../core/alert.php';

$getdata = new clear_db();
$connect = $getdata->my_sql_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
mysqli_set_charset($connect, 'utf8');
$userdata = $getdata->my_sql_query($connect, null, 'user', "user_key='" . $_SESSION['ukey'] . "'");
$system_info = $getdata->my_sql_query($connect, null, 'system_info', null);
date_default_timezone_set('Asia/Bangkok');
?>

<?php
$i = 0;
$get_total = $getdata->my_sql_select($connect, NULL, "problem_list", "(card_status is null or card_status != '57995055c28df9e82476a54f852bd214') AND (user_key = '" . $_SESSION['ukey'] . "' OR se_namecall = '" . $_SESSION['ukey'] . "') ORDER BY ticket DESC LIMIT 30");
while ($show_total = mysqli_fetch_object($get_total)) {
    $i++;
?>
    <tr>
        <td><?php echo @$i; ?></td>
        <td><a href="#" data-toggle="modal" data-target="#show_case" data-whatever="<?php echo @$show_total->ticket; ?>" class="btn btn-sm btn-outline-info" data-top="toptitle" data-placement="top" title="ตรวจสอบข้อมูล"><?php echo @$show_total->ticket; ?></a></td>
        <td><?php echo @dateConvertor($show_total->date); ?></td>
        <td><?php echo $show_total->time_start; ?></td>
        <td>
            <?php
            if ($show_total->se_id == '8' && $show_total->se_li_id == '154' && $show_total->manager_approve_status == 'Y' && $show_total->card_status == NULL) {
                echo '<span class="badge badge-info">รอ Support Manager อนุมัติ</span>';
            } else if (@$show_total->card_status == 'approve_mg' && ($show_total->approve_department == 'IT' ||  $show_total->approve_department != 'HR') || $show_total->card_status == 'work_cctv' || $show_total->card_status == 'work_hr') {
                echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
            } else if ($show_total->card_status == 'wait_approve' && $show_total->approve_department == 'IT') {
                echo '<span class="badge badge-info">รออนุมัติแจ้งงาน</span>';
            } else if ($show_total->card_status  == 'wait_approve_hr' && $show_total->approve_department == 'HR') {
                echo '<span class="badge badge-info">รอการอนุมัติจาก HR</span>';
            } else if ($show_total->card_status == 'over_work') {
                echo '<span class="badge badge-danger">ปิดงานอัตโนมัติ</span>';
            } else if ($show_total->card_status == 'reject') {
                echo '<span class="badge badge-warning">ตรวจสอบอีกครั้ง</span>';
            } else if ($show_total->card_status == 'reject_hr'){
                echo '<span class="badge badge-warning">แจ้งดำเนินงานอีกครั้ง</span>';
            } else if ($show_total->card_status == null && $show_total->work_flag == null) {
                echo '<span class="badge badge-danger">ยกเลิกงานโดยผู้แจ้ง</span>';
            }else {
                if (in_array($show_total->card_status, ['2e34609794290a770cb0349119d78d21', 'fe8ae3ced9e7e738d78589bf6610c4da']) && $show_total->work_flag != 'work_success') {
                    echo '<span class="badge badge-info">รอ Support Manager ตรวจสอบ</span>';
                } else if ($show_total->card_status == 'approve_workcheck') {
                    echo '<span class="badge badge-warning">รออนุมัติงานเสร็จ</span>';
                } else {
                    if ($show_total->card_status == 'wait_approve') {
                        echo '<span class="badge badge-info">รออนุมัติแจ้งงาน</span>';
                    } else if ($show_total->card_status == 'wait_checkwork') {
                        echo '<span class="badge badge-primary">รอตรวจสอบงานเสร็จจากผู้แจ้ง</span>';
                    } else {
                        echo @cardStatus($show_total->card_status);
                    }
                }
            }

            ?>
        </td>

        <td><?php
            if ($show_total->date_update != '0000-00-00' && $show_total->card_status != '') {
                echo @dateConvertor($show_total->date_update);
            } else if ($show_total->se_id == '8' && $show_total->se_li_id == '154' && $show_total->manager_approve_status == 'Y' && $show_total->card_status == NULL) {
                echo '<span class="badge badge-info">รอ Support Manager อนุมัติ</span>';
            } else if (@$show_total->card_status == 'approve_mg' && ($show_total->approve_department == 'IT' ||  $show_total->approve_department != 'HR') || $show_total->card_status == 'work_cctv' || $show_total->card_status == 'work_hr') {
                echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
            } else if ($show_total->card_status == 'wait_approve' && $show_total->approve_department == 'IT') {
                echo '<span class="badge badge-info">รออนุมัติแจ้งงาน</span>';
            } else if ($show_total->card_status  == 'wait_approve_hr' && $show_total->approve_department == 'HR') {
                echo '<span class="badge badge-info">รอการอนุมัติจาก HR</span>';
            } else if ($show_total->card_status == 'over_work') {
                echo '<span class="badge badge-danger">ปิดงานอัตโนมัติ</span>';
            } else if ($show_total->card_status == 'reject') {
                echo '<span class="badge badge-warning">ตรวจสอบอีกครั้ง</span>';
            } else if ($show_total->card_status == null && $show_total->work_flag == null) {
                echo '<span class="badge badge-danger">ยกเลิกงานโดยผู้แจ้ง</span>';
            }else {
                if (in_array($show_total->card_status, ['2e34609794290a770cb0349119d78d21', 'fe8ae3ced9e7e738d78589bf6610c4da']) && $show_total->work_flag != 'work_success') {
                    echo '<span class="badge badge-info">รอ Support Manager ตรวจสอบ</span>';
                } else if ($show_total->card_status == 'approve_workcheck') {
                    echo '<span class="badge badge-warning">รออนุมัติงานเสร็จ</span>';
                } else {
                    if ($show_total->card_status == 'wait_approve') {
                        echo '<span class="badge badge-info">รออนุมัติแจ้งงาน</span>';
                    } else if ($show_total->card_status == 'wait_checkwork') {
                        echo '<span class="badge badge-primary">รอตรวจสอบงานเสร็จจากผู้แจ้ง</span>';
                    } else {
                        echo @cardStatus($show_total->card_status);
                    }
                }
            }
            // else {
            //     echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
            // } 
            ?>
        </td>

        <td>
            <?php
            echo '<a href="?p=case_all_service&key=' . @$show_total->ticket . '" class="btn btn-sm btn-success" data-top="toptitle" data-placement="top" title="ตรวจสอบ"><i class="fas fa-list"></i></a>';
            if(in_array($show_total->card_status, ['reject_hr'])){
                echo '&nbsp<a href="#" data-toggle="modal" data-target="#reopen_case" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-danger  btn-outline" title="แจ้งงานอีกครั้ง"><i class="fa fa-retweet"></i></a>';
            }
            if ($_SESSION['uclass'] == 1 && $show_total->card_status == 'wait_checkwork' && ($show_total->user_key == $_SESSION['ukey'] || $show_total->se_namecall == $_SESSION['ukey'])) {
                // echo '<a href="#" data-toggle="modal" data-target="#check_work_user" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-warning" title="ตรวจสอบงาน"><i class="fa fa-edit"></i></a>&nbsp';
                echo '&nbsp<a href="#" data-toggle="modal" data-target="#check_work_user" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-warning  btn-outline" title="ดำเนินการ"><i class="fa fa-edit"></i></a>';
            }
            ?>
        </td>

        <!-- <td class="text-right">
            <div class="dropdown show d-inline-block widget-dropdown">
                <a class="dropdown-toggle icon-burger-mini" href="" role="button" id="dropdown-recent-order1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static"></a>
                <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdown-recent-order1">
                    <li class="dropdown-item">
                        <a href="#">View</a>
                    </li>
                    <li class="dropdown-item">
                        <a href="#">Remove</a>
                    </li>
                </ul>
            </div>
        </td> -->

    </tr>
<?php
}
?>