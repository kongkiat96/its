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
$get_total = $getdata->my_sql_select($connect, NULL, "problem_list", "card_status IN ('2e34609794290a770cb0349119d78d21','fe8ae3ced9e7e738d78589bf6610c4da') AND (work_flag != 'work_success' OR work_flag IS NULL) ORDER BY ticket DESC LIMIT 10");
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
            if (@$show_total->card_status == NULL) {
                echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
            } else if ($show_total->card_status == '2e34609794290a770cb0349119d78d21'){
                echo '<span class="badge badge-info">รอ Support Manager ตรวจสอบ</span>';
            } else {
                echo @cardStatus($show_total->card_status);
            }

            ?>
        </td>

        <td><?php
            if ($show_total->date_update != '0000-00-00') {
                echo @dateConvertor($show_total->date_update);
            } else {
                echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
            } ?>
        </td>

        <td>
            <?php
            // echo '
            //     <a href="?p=case_all_service&key=' . @$show_total->ticket . '" target="_blank" class="btn btn-sm btn-success" data-top="toptitle" data-placement="top" title="อนุมัติ"><i class="fas fa-user-check"></i></a>';

                echo '<a href="#" data-toggle="modal" data-target="#checkwork-frm" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-warning btn-outline" data-top="toptitle" data-placement="top" title="ดำเนินการ"><i class="fa fa-check-circle"></i></a>';
            ?>
            <?php
            echo '
                <a href="?p=case_all_service&key=' . @$show_total->ticket . '" class="btn btn-sm btn-success" data-top="toptitle" data-placement="top" title="ตรวจสอบ"><i class="fas fa-list"></i></a>';
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