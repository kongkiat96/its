<?php
require_once 'procress/save_service_it.php';
?>
<?php $getmenus = $getdata->my_sql_query($connect, null, 'menus', "menu_status ='1' AND menu_case = '" . $_GET['p'] . "' AND menu_key != 'c6c8729b45d1fec563f8453c16ff03b8'"); ?>
<div class="row">
    <div class="col-lg-12">
        <h3 class="page-header"><?php echo '<i class="fas ' . $getmenus->menu_icon . ' fa-2x"></i> <span>' . $getmenus->menu_name . '</span>'; ?></h3>
    </div>
</div>

<nav aria-label="breadcrumb" class="mt-3 mb-3">
    <ol class="breadcrumb breadcrumb-inverse">
        <li class="breadcrumb-item">
            <a href="index.php">หน้าแรก</a>
        </li>
        <li class="breadcrumb-item active" aria-current="page"><?php echo '<span>' . $getmenus->menu_name . '</span>'; ?></li>
    </ol>
</nav>



<div class="modal fade" id="show_case" role="dialog" aria-labelledby="show_case" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="show_case">

            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="approve-hr" role="dialog" aria-labelledby="approve-hr" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form method="post" enctype="multipart/form-data" class="was-validated" id="waitsave2">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">เปลี่ยนแปลง</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="approve-hr">

                </div>

            </div>
        </form>
    </div>
</div>

<div class="modal fade" id="off_case" role="dialog" aria-labelledby="off_case" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form method="post" enctype="multipart/form-data" class="needs-validation" novalidate id="waitsave">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">ดำเนินการ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="offcase">

                </div>
                <div class="modal-footer">

                    <button class="ladda-button btn btn-primary btn-square btn-ladda bg-info" type="submit" name="save_offcase" data-style="expand-left">
                        <span class="fas fa-save"> บันทึก</span>
                        <span class="ladda-spinner"></span>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="modal fade" id="edit_case" role="dialog" aria-labelledby="edit_case" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form method="post" enctype="multipart/form-data" class="needs-validation" novalidate id="waitsave">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">ดำเนินการ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="editcase">

                </div>
                <div class="modal-footer">

                    <button class="ladda-button btn btn-primary btn-square btn-ladda bg-info" type="submit" name="save_editcase" data-style="expand-left">
                        <span class="fas fa-save"> บันทึก</span>
                        <span class="ladda-spinner"></span>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>

<?php echo @$alert; ?>

<div class="row">
    <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-md font-weight-bold text-primary text-uppercase mb-1">จำนวนรายการขอเพิ่มสิทธิ์เดือน <u><?php echo @month(); ?></u></div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?php @$getall = $getdata->my_sql_show_rows($connect, "problem_list", "ID <> 'hidden' AND (date LIKE '%" . date("Y-m") . "%' ) AND approve_department = 'HR' AND card_status != ''");
                                                                            echo @number_format($getall); ?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-calendar-alt fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-info shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-md font-weight-bold text-success text-uppercase mb-1">จำนวนรายการดำเนินการแล้ว</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?php @$getall = $getdata->my_sql_show_rows($connect, "problem_list", "date LIKE '%" . date("Y-m") . "%' AND card_status IN ('fe8ae3ced9e7e738d78589bf6610c4da','9b5292adfe68103f2a31b5cfbba64fd7') AND work_flag IN ('work_success') AND approve_department = 'HR'");
                                                                            echo @number_format($getall); ?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-calendar-check fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-info shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-md font-weight-bold text-warning text-uppercase mb-1">จำนวนรายการที่รอดำเนินการ</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?php @$getall = $getdata->my_sql_show_rows($connect, "problem_list", "date LIKE '%" . date("Y-m") . "%' AND (card_status NOT IN ('wait_approve','work_hr','befb5e146e599a9876757fb18ce5fa2e','2e34609794290a770cb0349119d78d21','','fe8ae3ced9e7e738d78589bf6610c4da','9b5292adfe68103f2a31b5cfbba64fd7','reject_hr','57995055c28df9e82476a54f852bd214')) AND work_flag != 'work_success' OR card_status IN ('wait_approve_hr') AND approve_department = 'HR'");
                                                                            echo @number_format($getall); ?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-calendar-day fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>

<div class=" row">
    <div class="col-12">
        <div class="card card-default">
            <div class="card-header card-header-border-bottom d-flex justify-content-between">
                <h2><span class="mdi mdi-format-list-checks"></span>
                    รายการแจ้งขอเพิ่มสิทธิ์</h2>
            </div>

            <div class="card-body">
                <div class="basic-data-table">
                    <table id="data-home-it" class="table hover nowrap text-center" style="width:100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Ticket</th>
                                <th>วันที่</th>
                                <th>ผู้ดำเนินการ</th>
                                <th>สถานะ</th>
                                <th>วันที่อัพเดต</th>
                                <th>ดำเนินการ</th>

                            </tr>
                        </thead>

                        <tbody>
                            <?php
                            $i = 0;
                            $get_total = $getdata->my_sql_select($connect, NULL, "problem_list", "approve_department = 'HR' AND se_id IN ('13','16') AND card_status NOT IN ('wait_approve','work_hr','befb5e146e599a9876757fb18ce5fa2e','2e34609794290a770cb0349119d78d21','','fe8ae3ced9e7e738d78589bf6610c4da','9b5292adfe68103f2a31b5cfbba64fd7') AND work_flag != 'work_success' OR card_status = 'wait_approve_hr' ORDER BY ticket DESC");
                            while ($show_total = mysqli_fetch_object($get_total)) {
                                $i++;
                            ?>
                                <tr>
                                    <td><?php echo @$i; ?></td>
                                    <td><?php echo @$show_total->ticket; ?></td>
                                    <td><?php echo @dateConvertor($show_total->date); ?></td>
                                    <td>
                                        <?php
                                         if ($show_total->card_status  == 'wait_approve_hr' && $show_total->approve_department == 'HR') {
                                            echo '<span class="badge badge-info">รอการอนุมัติจาก HR</span>';
                                          } else {
                                        echo @getemployee($show_total->admin_update);
                                              
                                          }
                                        ?>
                                    </td>
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
                                        }else if ($show_total->card_status == 'reject_hr') {
                                            echo '<span class="badge badge-danger">แจ้งดำเนินงานอีกครั้ง</span>';
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
                                        if (@$show_total->date_update == '0000-00-00') {
                                            echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
                                        } else {
                                            echo @dateConvertor($show_total->date_update);
                                        }  ?>
                                    </td>
                                    <td>
                                        <?php
                                        echo '<a href="#" data-toggle="modal" data-target="#show_case" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-info" data-top="toptitle" data-placement="top" title="ตรวจสอบ"><i class="fa fa-search"></i></a>&nbsp';
                                        if (in_array($show_total->card_status, ['wait_checkwork','57995055c28df9e82476a54f852bd214','reject_hr'])) {
                                        } else {
                                            if ($show_total->approve_department == 'HR' || $show_total->card_status == 'approve_workcheck') {
                                                // echo '<a href="#" data-toggle="modal" data-target="#approve-hr" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-warning btn-outline" data-top="toptitle" data-placement="top" title="ดำเนินการ"><i class="fa fa-check-circle"></i></a>';
                                                echo '<a href="#" data-toggle="modal" data-target="#approve-hr" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-success btn-outline" data-top="toptitle" data-placement="top" title="ดำเนินการ"><i class="fa fa-check-circle"></i></a>';
                                            }
                                        }

                                        ?>
                                        <a href="?p=case_all_service&key=<?php echo @$show_total->ticket; ?>" class="btn btn-sm btn-success" data-top="toptitle" data-placement="top" title="ตรวจสอบ"><span class="mdi mdi-timeline-text-outline"></span></a>
                                    </td>

                                </tr>


                            <?php } ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


</div>