<?php

if (isset($_POST['export'])) {
    $month_case = isset($_POST['month_case']) ? $_POST['month_case'] : null;
    $year_case = isset($_POST['year_case']) ? $_POST['year_case'] : null;
    $status = isset($_POST['status']) ? $_POST['status'] : null;
    $permission = isset($_POST['permission']) ? $_POST['permission'] : null;
    $whereClause = "ID <> 'hidden'";
    if ($month_case != null && $year_case == null) {
        $whereClause .= " AND date LIKE '%" . date("Y-$month_case") . "%'";
    } elseif ($year_case != null && $month_case == null) {
        $whereClause .= " AND date LIKE '%" . date("$year_case") . "%'";
    } elseif ($year_case != null && $month_case != null) {
        $whereClause .= " AND date LIKE '%" . date("$year_case-$month_case") . "%'";
    }
    if ($status != null) {
        $whereClause .= " AND card_status = '$status'";
    }

    if ($permission != null) {
        $whereClause .= " AND se_id = '$permission'";
    }

    $getcaseshow = $getdata->my_sql_select($connect, null, "problem_list", $whereClause . " ORDER BY ticket", "ID");
    // $getcaseshow = $getdata->my_sql_string($connect, "SELECT * FROM problem_list LEFT JOIN problem_comment ON problem_list.ticket = problem_comment.ticket WHERE problem_list.ticket = 'IT2024-06-02-W01'");




    $log_key = substr(md5(time("now")), 8, 16);
    $getdata->my_sql_insert($connect, "logs_keep", "
    ls_key = '" . $log_key . "',
    ls_text = 'ออกรายงานแจ้งซ่อม',
    ls_user = '" . $_SESSION['ukey'] . "'
    ");
}
?>

<?php $getmenus = $getdata->my_sql_query($connect, null, 'menus', "menu_status ='1' AND menu_case = 'report_kpi' AND menu_key != 'c6c8729b45d1fec563f8453c16ff03b8'"); ?>
<style>
    .dataTables_filter {
        float: right !important;
    }
</style>
<div class="row">
    <div class="col-lg-12">
        <h3 class="page-header"><i class="fas fa-file-download fa-2x"></i> ออกรายงาน <u> KPI IT Support</u></h3>
    </div>
</div>

<nav aria-label="breadcrumb" class="mt-3 mb-3">
    <ol class="breadcrumb breadcrumb-inverse">
        <li class="breadcrumb-item">
            <a href="index.php">หน้าแรก</a>
        </li>
        <li class="breadcrumb-item"><a href="index.php?p=service"> <?php echo '<span>' . $getmenus->menu_name . '</span>'; ?></a></li>
        <li class="breadcrumb-item active" aria-current="page">ออกรายงาน <u> KPI IT Support</u></li>
    </ol>
</nav>


<div class="card card-default md-4 showdow text-center">
    <div class="card-header card-header-border-bottom justify-content-center">
        <h5 class="m-0 font-weight-bold text-center text-danger">ออกรายงาน <u> KPI IT Support</u></h5>
    </div>
    <div class="card-body">
        <form method="post" action="<?php echo $SERVER_NAME; ?>" class="needs-validation">

            <div class="form-group row d-flex justify-content-center">
                <div class="col-md-3 col-sm-12">
                    <label for="month_case">ระบุเดือน</label>
                    <select name="month_case" id="month_case" class="form-control select2bs4">
                        <option value="" selected>--- เลือกข้อมูล ---</option>
                        <option value="01">มกราคม</option>
                        <option value="02">กุมภาพันธ์</option>
                        <option value="03">มีนาคม</option>
                        <option value="04">เมษายน</option>
                        <option value="05">พฤษภาคม</option>
                        <option value="06">มิถุนายน</option>
                        <option value="07">กรกฏาคม</option>
                        <option value="08">สิงหาคม</option>
                        <option value="09">กันยายน</option>
                        <option value="10">ตุลาคม</option>
                        <option value="11">พฤศจิกายน</option>
                        <option value="12">ธันวาคม</option>
                    </select>
                </div>

                <div class="col-md-3 col-sm-12">
                    <label for="year_case">ระบุปี</label>
                    <?php
                    // Sets the top option to be the current year. (IE. the option that is chosen by default).
                    $currently_selected = date('Y');
                    // Year to start available options at
                    $earliest_year = 2020;
                    // Set your latest year you want in the range, in this case we use PHP to just set it to the current year.
                    $latest_year = date('Y');

                    print '<select name="year_case" id="year_case" class="form-control select2bs4">';
                    // Loops over each int[year] from current year, back to the $earliest_year [2020]
                    print '<option value="" selected>--- เลือกข้อมูล ---</option>';
                    foreach (range($latest_year, $earliest_year) as $i) {
                        // Prints the option with the next year in range.
                        print '<option value="' . $i . '"' . ($i === $currently_selected ?: '') . '>' . $i . '</option>';
                    }
                    print '</select>';
                    ?>
                </div>

                <div class="col-md-3 col-sm-12">
                    <label for="status">ระบุสถานะงาน</label>
                    <select name="status" id="status" class="form-control select2bs4">
                        <option value="" selected>--- เลือกข้อมูล ---</option>
                        <?php
                        $select_status = $getdata->my_sql_select($connect, NULL, "card_type", "ctype_status ='1' ORDER BY ctype_insert");

                        while ($show_status = mysqli_fetch_object($select_status)) {

                            echo '<option value="' . $show_status->ctype_key . '">' . $show_status->ctype_name . '</option>';
                        }



                        ?>
                    </select>
                </div>

                <div class="col-md-3 col-sm-12">
                    <label for="permission">ระบุลักษณะงาน</label>
                    <select name="permission" id="permission" class="form-control select2bs4">
                        <option value="" selected>--- เลือกข้อมูล ---</option>
                        <option value="13">ข้อมูลเข้าถึง Erp & POS</option>
                        <option value="8">ข้อมูลเข้าถึง CCTV</option>
                    </select>
                </div>

            </div>

            <?php if (isset($_POST['export'])) { ?>

                <button class="ladda-button btn btn-primary btn-square btn-ladda bg-danger" onclick="reloadPage()" data-style="expand-left">
                    <span class="fas fa-trash-alt"> ล้างค่า</span>
                    <span class="ladda-spinner"></span>
                </button>

                <button class="ladda-button btn btn-primary btn-square btn-ladda bg-warning" data-style="expand-left" type="submit" name="export">
                    <span class="fas fa-file-download"> ออกรายงาน</span>
                    <span class="ladda-spinner"></span>
                </button>
            <?php } else { ?>
                <button class="ladda-button btn btn-primary btn-square btn-ladda bg-warning" data-style="expand-left" type="submit" name="export">
                    <span class="fas fa-file-download"> ค้นหา</span>
                    <span class="ladda-spinner"></span>
                </button>
            <?php } ?>
        </form>
    </div>
</div>

<?php if (isset($_POST['export'])) { ?>
    <div class="card">
        <div class="card-body">
            <div class="responsive-data-table">

                <table id="ForExport" class="table dt-responsive nowrap hover" style="font-family: sarabun; font-size: 14px;
    text-align: center;" width="100%">
                    <thead class="font-weight-bold text-center">
                        <tr>
                            <td>ลำดับ</td>
                            <td>Ticket</td>
                            <td>รหัสสินทรัพย์</td>
                            <td>ชื่อผู้แจ้ง</td>
                            <td>สาขา</td>
                            <td>หมวดหมู่</td>
                            <td>ปัญหา</td>
                            <td>SLA Code</td>
                            <td>รายละเอียด</td>
                            <td>ผู้อนุมัติ</td>
                            <td>สถานะ</td>
                            <td>ค่าใช้จ่าย</td>
                            <td>วันที่แจ้ง</td>
                            <td>วันที่เริ่มนับ (วันที่ User Manager Approve)</td>
                            <td>วันที่แล้วเสร็จ (วันที่บันทึกสถานะ "ระบบใช้งานได้แล้ว/มีเครื่องใช้ทดแทน")</td>
                            <td>ผู้ทำรายการ</td>
                            <td>SLA (วัน)</td>
                            <td>ระยะเวลาดำเนินการ(วัน)</td>
                            <td>ส่วนต่างเวลา (SLA-วันที่ใช้)</td>
                            <td>ผลการดำเนินการตาม SLA</td>
                            <td>หมายเหตุ</td>

                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $i = 0;
                        //$get_total = $getdata->my_sql_select($connect, null, 'asset', "as_keyID <> 'hidden' AND status = '1' ORDER BY date_insert DESC LIMIT 25");
                        while ($show_total = mysqli_fetch_object($getcaseshow)) {
                            // $getdateApprove = $getdata->my_sql_string($connect, "SELECT * FROM problem_comment WHERE ticket = '" . $show_total->ticket . "' ORDER BY ID ASC LIMIT 1");

                            $i++; ?>
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td><a href="?p=case_all_service&key=<?php echo $show_total->ticket; ?>" target="_blank"><?php echo $show_total->ticket; ?></a> </td>
                                <!-- <td><?php echo @getemployee($show_total->user_key); ?></td>
                                <td><?php echo @getemployee_department($show_total->user_key); ?></td> -->
                                <td><?php echo $show_total->se_asset; ?></td>
                                <td><?php
                                    $search = $getdata->my_sql_query($connect, NULL, "employee", "card_key ='" . $show_total->se_namecall . "'");
                                    if (COUNT($search) == 0) {
                                        $chkName = $show_total->se_namecall;
                                    } else {
                                        $chkName = getemployee($show_total->se_namecall);
                                    }

                                    echo $chkName;
                                    ?></td>
                                <td><?php echo @prefixbranch($show_total->se_location); ?></td>
                                <td><?php echo @service($show_total->se_id); ?></td>
                                <td><?php echo @prefixConvertorServiceList($show_total->se_li_id); ?></td>
                                <td></td>
                                <td><?php echo $show_total->se_other; ?></td>
                                <td><?php echo $show_total->se_approve; ?></td>
                                <td class="text-center">
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
                                    } else if ($show_total->card_status == 'reject_hr') {
                                        echo '<span class="badge badge-danger">แจ้งดำเนินงานอีกครั้ง</span>';
                                    } else if ($show_total->card_status == null && $show_total->work_flag == null) {
                                        echo '<span class="badge badge-danger">ยกเลิกงานโดยผู้แจ้ง</span>';
                                    } else {
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
                                <td>
                                    <?php
                                    if ($show_total->se_price != NULL) {
                                        echo $show_total->se_price;
                                    } else {
                                        echo '<strong class="badge badge-danger">ไม่มีข้อมูล</font></strong>';
                                    }
                                    ?>
                                </td>
                                <td><?php echo @dateConvertor($show_total->date); ?></td>
                                <td>
                                    <?php echo @search_approveDate($show_total->ticket); ?>
                                </td>
                                <td><?php
                                    if ($show_total->card_status == '57995055c28df9e82476a54f852bd214') {
                                        echo @cardStatus($show_total->card_status);
                                    } else {
                                        echo @dateConvertor($show_total->date_update);
                                    } ?></td>
                                <td>
                                    <?php
                                    if ($show_total->admin_update != null) {
                                        echo @getemployee($show_total->admin_update);
                                        // echo $show_total->admin_update;
                                    } else {
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
                                        } else if ($show_total->card_status == 'reject_hr') {
                                            echo '<span class="badge badge-danger">แจ้งดำเนินงานอีกครั้ง</span>';
                                        } else if ($show_total->card_status == null && $show_total->work_flag == null) {
                                            echo '<span class="badge badge-danger">ยกเลิกงานโดยผู้แจ้ง</span>';
                                        } else {
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
                                    }

                                    ?>
                                </td>
                                <td></td>
                                <td>
                                    <?php


                                    if (@cal_approveDate($show_total->ticket) == null || $show_total->card_status == 'wait_approve') {
                                        echo '0';
                                    } else if ($show_total->card_status == '57995055c28df9e82476a54f852bd214') {
                                        echo @cardStatus($show_total->card_status);
                                    } else {
                                        $setStartDate = @dateOnlyConvertor($show_total->date_update);
                                        $setEndDate = @cal_approveDate($show_total->ticket);
                                        echo @dateDiff($setEndDate, $setStartDate);
                                    }


                                    ?>
                                </td>
                                <td><?php
                                    if ($show_total->card_status == '57995055c28df9e82476a54f852bd214') {
                                        echo @cardStatus($show_total->card_status);
                                    } else {
                                        echo '';
                                    }
                                    ?></td>
                                <td>
                                    <?php if ($show_total->card_status == '57995055c28df9e82476a54f852bd214') {
                                        echo @cardStatus($show_total->card_status);
                                    } else {
                                        echo '';
                                    }
                                    ?>
                                </td>
                                <td></td>

                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

<?php } ?>