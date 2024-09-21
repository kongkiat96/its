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
$get_total = $getdata->my_sql_select($connect, NULL, "problem_list", "se_id = '8' AND se_li_id IN ('154','204') AND (manager_approve_status = 'Y' OR work_flag NOT IN ('work_cctv','work_success' OR manager_approve IS NULL) AND card_status NOT IN ('work_cctv')) AND card_status = 'approve_mg' ORDER BY ticket DESC LIMIT 10");
while ($show_total = mysqli_fetch_object($get_total)) {
    $i++;
?>
    <tr>
        <td><?php echo @$i; ?></td>
        <td><a href="#" data-toggle="modal" data-target="#show_case" data-whatever="<?php echo @$show_total->ticket; ?>" class="btn btn-sm btn-outline-info"><?php echo @$show_total->ticket; ?></a></td>
        <td><?php echo @dateConvertor($show_total->date); ?></td>
        <td><?php echo $show_total->time_start; ?></td>
        <td>
            <?php
            if (@$show_total->card_status == 'approve_mg' && ($show_total->se_id != '8' && $show_total->manager_approve_status != 'Y')) {
                echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
            } else if ($show_total->card_status == '2e34609794290a770cb0349119d78d21') {
                echo '<span class="badge badge-info">รอ Support Manager ตรวจสอบ</span>';
            } else if ($show_total->se_id == '8' && $show_total->manager_approve_status == 'Y') {
                echo '<span class="badge badge-info">รอ Support Manager อนุมัติ</span>';
            }else {
                echo @cardStatus($show_total->card_status);
            }

            ?>
        </td>

        <td><?php
            if ($show_total->date_update != '0000-00-00') {
                echo @dateConvertor($show_total->date_update);
            } else {
                if (@$show_total->card_status == 'approve_mg' && ($show_total->se_id != '8' && $show_total->manager_approve_status != 'Y')) {
                    echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
                } else if ($show_total->card_status == '2e34609794290a770cb0349119d78d21') {
                    echo '<span class="badge badge-info">รอ Support Manager ตรวจสอบ</span>';
                } else if ($show_total->se_id == '8' && $show_total->manager_approve_status == 'Y') {
                    echo '<span class="badge badge-info">รอ Support Manager อนุมัติ</span>';
                }else {
                    echo @cardStatus($show_total->card_status);
                }
            } ?>
        </td>

        <td>
            <?php
            echo '<a href="#" data-toggle="modal" data-target="#approve-frm-cctv" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-warning btn-outline" data-top="toptitle" data-placement="top" title="ดำเนินการ"><i class="fa fa-check-circle"></i></a>';
            ?>
        </td>
    </tr>
<?php
}
?>