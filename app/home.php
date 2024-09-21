<?php
require_once 'procress/save_user.php';
require_once 'procress/save_service_it.php';
// require_once 'auto/getalert.php';
echo @$alert;
?>
<script>
    function refreshData() {
        $.ajax({
            url: 'auto/sum_case_it.php',
            success: function(data) {
                $('#get_sum_it').html(data);
            }
        });
        $.ajax({
            url: 'auto/table_it_user.php',
            success: function(data) {
                $('#get_table_it').html(data);
            }
        });
        $.ajax({
            url: 'auto/list_approve.php',
            success: function(data) {
                $('#list_approve').html(data);
            }
        });
        $.ajax({
            url: 'auto/list_checkwork.php',
            success: function(data) {
                $('#list_checkwork').html(data);
            }
        });
        $.ajax({
            url: 'auto/list_cctv.php',
            success: function(data) {
                $('#list_cctv').html(data);
            }
        });
    }
    $(document).ready(function() {
        refreshData(); // Call on document ready to load the data initially
        var refreshInterval = 10000; // Adjust the time interval as needed.
        setInterval(refreshData, refreshInterval);
    });
</script>

<!-- Modal Case IT -->
<div class="modal fade" id="newcase" role="dialog" aria-labelledby="AddNewCase" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">แจ้งใช้บริการ IT Service : </h5>&nbsp;
                    <h4><span class="badge badge-success"><?php echo $runticket; ?></span></h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <div class="col-md-6 col-sm-12">
                            <label for="se_id">หมวดหมู่</label>
                            <select class="form-control select2bs4" style="width: 100%;" name="se_id" id="se_id" onchange="getServiceList(this.value)" required>
                                <option value="">--- เลือก หมวดหมู่ ---</option>
                                <?php
                                $getprefix = $getdata->my_sql_select($connect, NULL, "service", "se_id AND se_status ='1' ORDER BY se_sort");
                                while ($showservice = mysqli_fetch_object($getprefix)) {
                                    echo '<option value="' . $showservice->se_id . '">' . $showservice->se_name . '</option>';
                                }
                                ?>
                            </select>
                            <div class="invalid-feedback">
                                เลือก หมวดหมู่ .
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <label for="se_li">ปัญหาที่พบ</label>
                            <select class="form-control select2bs4" style="width: 100%;" name="se_li" id="se_li" required>
                                <option value="">--- เลือก ปัญหาที่พบ ---</option>
                            </select>
                            <div class="invalid-feedback">
                                เลือก ปัญหาที่พบ .
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-12">
                            <label for="other">รายละเอียดเพิ่มเติม</label>
                            <textarea class="form-control" name="other" id="other" required></textarea>
                            <div class="invalid-feedback">
                                ระบุ รายละเอียด.
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-6 col-sm-12">
                            <label for="se_asset">รหัสสินทรัพย์</label>
                            <input type="text" name="se_asset" id="se_asset" class="form-control input-sm" required>
                            <div class="invalid-feedback">
                                ระบุ รหัสสินทรัพย์.
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <label for="pic">กรณีมีรูปภาพประกอบ Insert Pic (.PNG, .JPG).</label>
                            <input type="file" name="pic" id="pic" accept="image/png, image/jpg" class="form-control input-sm">

                        </div>
                    </div>
                    <!-- <div class="form-group row">
                        <div class="col-12">
                            <label for="condition">ข้อมูลการแจ้งการแจ้ง</label>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-6">
                            <input type="radio" name="case" id="case" value="me">
                            <label for="">แจ้งสำหรับตนเอง</label>
                        </div>
                        <div class="col-6">
                            <input type="radio" name="case" id="case" value="other">
                            <label for="">แจ้งให้ผู้อื่น</label>
                        </div>
                    </div> -->
                    <hr>
                    <div class="form-group row">
                        <div class="col-6">
                            <label for="namecall" id="namecallLabel">เลือกชื่อผู้แจ้ง <span class="text-danger">(กรณีแจ้งแทนผู้อื่น)</span></label>
                            <!-- <input type="text" class="form-control input-sm" name="namecall" id="namecall" required> -->
                            <select name="namecall" id="namecall" class="form-control select2bs4" style="width: 100%;">
                                <option value="">--- เลือกข้อมูล ---</option>
                                <?php $getuser = $getdata->my_sql_select($connect, NULL, "user", "user_status = '1'");
                                while ($showUser = mysqli_fetch_object($getuser)) {
                                    echo '<option value="' . $showUser->user_key . '">' .  getemployee($showUser->user_key) . '</option>';
                                }
                                ?>
                            </select>
                            <div class="invalid-feedback">
                                เลือก ข้อมูล.
                            </div>
                        </div>
                        <div class="col-6">
                            <label for="location" id="locationLabel">สาขา <span class="text-danger">(กรณีแจ้งแทนผู้อื่น)</span></label>
                            <select class="form-control select2bs4" style="width: 100%;" name="location" id="location">
                                <option value="">--- เลือก สาขา ---</option>
                                <?php
                                $getbranch = $getdata->my_sql_select($connect, NULL, "branch", "id AND status ='1' ORDER BY id ");
                                while ($showbranch = mysqli_fetch_object($getbranch)) {
                                    echo '<option value="' . $showbranch->id . '">' . $showbranch->branch_name . '</option>';
                                }
                                ?>
                            </select>

                            <div class="invalid-feedback">
                                เลือก สาขา.
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-12">
                            <label for="approve">ผู้อนุมัติ</label>
                            <!-- <?php $chkManager =  $getdata->my_sql_query($connect, NULL, "manager", "user_key = '" . $_SESSION['ukey'] . "'");?> -->
                            <!-- <input type="text" class="form-control input-sm" name="approve" id="approve"> -->
                            <input type="text" class="form-control input-sm" id="approve" name="approve" readonly">
                        </div>
                    </div>
                    <input type="text" hidden name="name_em" id="name_em" value="<?php echo @getemployee($userdata->user_key); ?>" class="form-control" readonly>
                    <input type="text" hidden name="gt_department" id="gt_department" value="<?php echo @prefixConvertorDepartment($getemployee->user_department); ?>" class="form-control" readonly>
                    <input type="text" hidden name="department" id="department" value="<?php echo $getemployee->user_department; ?>" readonly>
                    <input type="text" hidden name="company" id="company" value="<?php echo $getemployee->department_id; ?>" readonly>
                </div>
                <div class="modal-footer">
                    <button class="ladda-button btn btn-primary btn-square btn-ladda bg-danger" type="submit" name="save_newcase" data-style="expand-left">
                        <span class="fas fa-paper-plane"> ส่งข้อมูล</span>
                        <span class="ladda-spinner"></span>
                    </button>
                </div>
            </div>
        </form>
    </div>

</div>
<!-- End Modal new Case -->

<!-- View -->
<div class="modal fade" id="show_case" role="dialog" aria-labelledby="show_case" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">

            <div class="show_case">

            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="show_case" role="dialog" aria-labelledby="show_case" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form method="post" enctype="multipart/form-data" class="needs-validation" novalidate id="waitsave">
            <div class="modal-content">

                <div class="show_case">

                </div>
            </div>
        </form>
    </div>
</div>
<!-- End View -->
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

<!-- Cancel -->
<div class="modal fade" id="off_case" role="dialog" aria-labelledby="off_case" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form method="post" enctype="multipart/form-data" class="was-validated" id="waitsave2">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">เปลี่ยนแปลง</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="offcase">

                </div>

            </div>
        </form>
    </div>
</div>

<!-- End Cancel -->

<div class="modal fade" id="approve-frm" role="dialog" aria-labelledby="approve-frm" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form method="post" enctype="multipart/form-data" class="was-validated" id="waitsave2">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">อนุมัติรายการ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="approve-frm">

                </div>

            </div>
        </form>
    </div>
</div>

<div class="modal fade" id="approve-frm-cctv" role="dialog" aria-labelledby="approve-frm-cctv" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form method="post" enctype="multipart/form-data" class="was-validated" id="waitsave2">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">อนุมัติรายการ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="approve-frm-cctv">

                </div>

            </div>
        </form>
    </div>
</div>

<div class="modal fade" id="checkwork-frm" role="dialog" aria-labelledby="checkwork-frm" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form method="post" enctype="multipart/form-data" class="was-validated" id="waitsave2">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">อนุมัติรายการ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="checkwork-frm">

                </div>

            </div>
        </form>
    </div>
</div>


<div class="modal fade" id="check_work_user" role="dialog" aria-labelledby="check_work_user" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form method="post" enctype="multipart/form-data" class="needs-validation" novalidate id="waitsave">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">ดำเนินการ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="checkWorkUser">

                </div>
                <div class="modal-footer">

                    <button class="ladda-button btn btn-primary btn-square btn-ladda bg-info" type="submit" name="save_checkwork_user" data-style="expand-left">
                        <span class="fas fa-save"> บันทึก</span>
                        <span class="ladda-spinner"></span>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="modal fade" id="reopen_case" role="dialog" aria-labelledby="reopen_case" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form method="post" enctype="multipart/form-data" class="needs-validation" novalidate id="waitsave">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">แจ้งงานใหม่อีกครั้ง</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="reopen_case">

                </div>
                <div class="modal-footer">

                    <button class="ladda-button btn btn-primary btn-square btn-ladda bg-info" type="submit" name="save_reopen_case" data-style="expand-left">
                        <span class="fas fa-save"> บันทึก</span>
                        <span class="ladda-spinner"></span>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>


<div class="bg-white border rounded">
    <div class="row no-gutters">
        <div class="col-lg-3 col-xl-3">
            <div class="profile-content-left pt-5 pb-3 px-3 px-xl-5">
                <div class="card text-center widget-profile px-0 border-0">
                    <div class="card-img mx-auto rounded-circle">
                        <img src="../assets/img/user/noimg.jpg" width="100%" alt="user image">
                    </div>
                    <div class="card-body">
                        <h4 class="py-2 text-dark"><?php echo @getemployee($userdata->user_key); ?></h4>
                        <p><?php echo @$userdata->email; ?></p>

                    </div>
                </div>

                <hr class="w-100">
                <div class="contact-info">
                    <h5 class="text-dark mb-1" style="text-transform: uppercase;">About Information</h5>
                    <p class="text-dark font-weight-medium pt-4 mb-2" style="text-decoration: underline;">Email address</p>
                    <p><?php echo @$userdata->email; ?></p>
                    <p class="text-dark font-weight-medium pt-4 mb-2" style="text-decoration: underline;">User ID</p>
                    <p><?php echo @$userdata->username; ?></p>
                    <p class="text-dark font-weight-medium pt-4 mb-2" style="text-decoration: underline;">แผนก</p>
                    <p><?php echo @getemployee_department($userdata->user_key); ?></p>
                </div>
                <hr class="w-100">
            </div>
        </div>
        <div class="col-lg-8 col-xl-9">
            <div class="profile-content-right py-5">


                <ul class="nav nav-pills  px-3 px-xl-5 nav-style-border" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="it-tab" data-toggle="tab" href="#it" role="tab" aria-controls="it" aria-selected="false">Ticket ของฉัน</a>
                    </li>
                    <?php
                    $chkManager =  $getdata->my_sql_query($connect, NULL, "manager", "manager_user_key = '" . $userdata->user_key . "'");

                    if (COUNT($chkManager->id) >= 1) {
                    ?>
                        <li class="nav-item">
                            <a class="nav-link" id="approve-list-tab" data-toggle="tab" href="#approve-list" role="tab" aria-controls="approve-list" aria-selected="false">
                                รายการอนุมัติ</a>
                        </li>
                    <?php } ?>

                    <?php
                    $get_list_approve = $getdata->my_sql_query($connect, NULL, "list_admin_approve", "user_key = '" . $userdata->user_key . "' AND deleted = '0'");

                    if ($get_list_approve->approve_menu == 'approve_all') {
                        echo '<li class="nav-item">
                            <a class="nav-link" id="checkwork-list-tab" data-toggle="tab" href="#checkwork-list" role="tab" aria-controls="checkwork-list" aria-selected="false">
                                รายการตรวจสอบงาน IT</a>
                        </li> <li class="nav-item">
                        <a class="nav-link" id="cctv-list-tab" data-toggle="tab" href="#cctv-list" role="tab" aria-controls="cctv-list" aria-selected="false">
                            รายการขอตรวจสอบ CCTV</a>
                    </li>';
                    } else if ($get_list_approve->approve_menu == 'approve_cctv') {
                        echo '<li class="nav-item">
                            <a class="nav-link" id="cctv-list-tab" data-toggle="tab" href="#cctv-list" role="tab" aria-controls="cctv-list" aria-selected="false">
                                รายการขอตรวจสอบ CCTV</a>
                        </li>';
                    } else if ($get_list_approve->approve_menu == 'approve_it') {
                        echo '<li class="nav-item">
                            <a class="nav-link" id="checkwork-list-tab" data-toggle="tab" href="#checkwork-list" role="tab" aria-controls="checkwork-list" aria-selected="false">
                                รายการตรวจสอบงาน IT</a>
                        </li>';
                    } else {
                        echo '';
                    }

                    ?>
                </ul>
                <hr>
                <div class="tab-content px-3 px-xl-5" id="myTabContent">

                    <div class="tab-pane fade show active" id="it" role="tabpanel" aria-labelledby="it-tab">
                        <div class="mt-3">

                        </div>
                        <div class="mt-3">
                            <div class="row" id="get_sum_it">
                                <div class="card-body d-flex align-items-center justify-content-center" style="height: 160px">
                                    <div class="sk-cube-grid">
                                        <div class="sk-cube sk-cube1"></div>
                                        <div class="sk-cube sk-cube2"></div>
                                        <div class="sk-cube sk-cube3"></div>
                                        <div class="sk-cube sk-cube4"></div>
                                        <div class="sk-cube sk-cube5"></div>
                                        <div class="sk-cube sk-cube6"></div>
                                        <div class="sk-cube sk-cube7"></div>
                                        <div class="sk-cube sk-cube8"></div>
                                        <div class="sk-cube sk-cube9"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-center">
                                <button type="button" class="btn btn-danger mb-2 ml-3 btn-lg btn-pill" data-toggle="modal" data-target="#newcase"><span class="fas fa-laptop-medical"></span> แจ้งปัญหา</button>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="basic-data-table">
                                        <table class="table nowrap text-center" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>Case ID</th>
                                                    <th>Ticket</th>
                                                    <th>Date</th>
                                                    <th>Time</th>
                                                    <th>Status</th>
                                                    <th>Date success</th>

                                                    <th>จัดการ</th>
                                                </tr>
                                            </thead>

                                            <tbody id="get_table_it">

                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="tab-pane fade" id="approve-list" role="tabpanel" aria-labelledby="approve-list-tab">
                        <div class="mt-5">
                            <div class="row">
                                <div class="col-12">
                                    <div class="basic-data-table">
                                        <table class="table nowrap text-center" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>Case ID</th>
                                                    <th>Ticket</th>
                                                    <th>Date</th>
                                                    <th>Time</th>
                                                    <th>Status</th>
                                                    <th>Date success</th>

                                                    <th>จัดการ</th>
                                                </tr>
                                            </thead>

                                            <tbody id="list_approve">

                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="checkwork-list" role="tabpanel" aria-labelledby="checkwork-list-tab">
                        <div class="mt-5">
                            <div class="row">
                                <div class="col-12">
                                    <div class="basic-data-table">
                                        <table class="table nowrap text-center" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>Case ID</th>
                                                    <th>Ticket</th>
                                                    <th>Date</th>
                                                    <th>Time</th>
                                                    <th>Status</th>
                                                    <th>Date success</th>

                                                    <th>จัดการ</th>
                                                </tr>
                                            </thead>

                                            <tbody id="list_checkwork">

                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="cctv-list" role="tabpanel" aria-labelledby="cctv-list-tab">
                        <div class="mt-5">
                            <div class="row">
                                <div class="col-12">
                                    <div class="basic-data-table">
                                        <table class="table nowrap text-center" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>Case ID</th>
                                                    <th>Ticket</th>
                                                    <th>Date</th>
                                                    <th>Time</th>
                                                    <th>Status</th>
                                                    <th>Date success</th>

                                                    <th>จัดการ</th>
                                                </tr>
                                            </thead>

                                            <tbody id="list_cctv">

                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<hr class="sidebar-divider d-none d-md-block">
<div class="card">
    <div class="card-header">
        <h5>Ticket ของทีม</h5>
    </div>
    <div class="card-body">
        <div class="responsive-data-table-it">
            <!-- <table id="responsive-data-table-it" class="table dt-responsive hover" style="width:100%"> -->
            <table id="for-home" class="table dt-responsive display nowrap hover" style="font-family: sarabun; font-size: 14px; text-align: center;" width="100%">
                <thead>
                    <tr>
                        <!-- <th>ลำดับ</th> -->
                        <th>Tickets : </th>
                        <th>ชื่อผู้แจ้ง : </th>
                        <th>สาขา : </th>
                        <th>วันที่แจ้ง : </th>
                        <!-- <th>เวลา</th> -->
                        <th>สถานะ : </th>
                        <th>รายละเอียดการแจ้ง : </th>
                        <!-- <th>ค่าใช้จ่าย</th> -->
                        <th>วันที่แล้วเสร็จ : </th>
                        <th>ผู้ดำเนินการ : </th>
                        <th>ดำเนินการ : </th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $i = 0;
                    if ($_SESSION['uclass'] == 3 || $_SESSION['uclass'] == 2) {
                        $get_total = $getdata->my_sql_select($connect, NULL, "problem_list", "ID AND (date LIKE '%" . date("Y") . "%' ) AND card_status != 'wait_approve' AND manager_approve_status != 'N' AND approve_department != 'HR' AND (user_key = '" . $_SESSION['ukey'] . "' OR manager_approve = '" . $_SESSION['ukey'] . "' OR se_namecall = '" . $_SESSION['ukey'] . "') ORDER BY ticket DESC LIMIT 500 ");
                    } else {
                        $get_total = $getdata->my_sql_select($connect, NULL, "problem_list", "ID AND (date LIKE '%" . date("Y") . "%' ) AND user_key = '" . $_SESSION['ukey'] . "' OR manager_approve = '" . $_SESSION['ukey'] . "' OR se_namecall = '" . $_SESSION['ukey'] . "' AND card_status != 'wait_approve' AND manager_approve_status != 'N' ORDER BY ticket");
                    }

                    while ($show_total = mysqli_fetch_object($get_total)) {
                        $i++;
                    ?>
                        <tr>
                            <!-- <td><?php echo @$i; ?></td> -->
                            <td><?php echo @$show_total->ticket; ?></td>

                            <!-- <td><?php echo @getemployee($show_total->user_key); ?></td> -->
                            <td>
                                <!-- <?php echo $show_total->se_namecall; ?> -->
                                <?php
                                $search = $getdata->my_sql_query($connect, NULL, "employee", "card_key ='" . $show_total->se_namecall . "'");
                                if (COUNT($search) == 0) {
                                    $chkName = $show_total->se_namecall;
                                } else {
                                    $chkName = getemployee($show_total->se_namecall);
                                }

                                echo $chkName;
                                ?>
                            </td>
                            <!-- <td><?php echo @getemployee_department($show_total->user_key); ?></td> -->
                            <td><?php echo @prefixbranch($show_total->se_location); ?></td>


                            <td><?php echo @dateConvertor($show_total->date); ?></td>
                            <!-- <td>
                                                    <?php
                                                    if (@$show_total->time_start != NULL & @$show_total->time_start != "00:00:00") {
                                                        echo @$show_total->time_start;
                                                    } else {
                                                        echo "-";
                                                    }
                                                    ?>
                                                </td> -->

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
                                }  else if ($show_total->card_status == 'reject') {
                                    echo '<span class="badge badge-warning">ตรวจสอบอีกครั้ง</span>';
                                } else if ($show_total->card_status == 'reject_hr'){
                                    echo '<span class="badge badge-warning">แจ้งดำเนินงานอีกครั้ง</span>';
                                }else if ($show_total->card_status == null && $show_total->work_flag == null) {
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
                                <?php echo $show_total->se_other; ?>
                            </td>

                            <td class="text-center">
                                <!-- <?php
                                        if ($show_total->date_update != "0000-00-00" && $show_total->card_status != "57995055c28df9e82476a54f852bd214") {
                                            echo @dateConvertor($show_total->date_update);
                                        } elseif ($show_total->card_status == "57995055c28df9e82476a54f852bd214") {
                                            echo @cardStatus($show_total->card_status);
                                        } else {
                                            echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
                                        }
                                        ?> -->

                                <?php
                                if ($show_total->date_update != "0000-00-00" && $show_total->card_status != "57995055c28df9e82476a54f852bd214") {
                                    echo @dateConvertor($show_total->date_update);
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
                            <td>
                                <!-- <?php
                                        if ($show_total->card_status == 'wait_checkwork') {
                                            echo '<span class="badge badge-primary">รอตรวจสอบงานเสร็จจากผู้แจ้ง</span>';
                                        } else if (@$show_total->admin_update == NULL && $show_total->card_status != "57995055c28df9e82476a54f852bd214") {
                                            echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
                                        } else if ($show_total->card_status == "57995055c28df9e82476a54f852bd214") {
                                            echo @cardStatus($show_total->card_status);
                                        } else if ($show_total->se_id == '8' && $show_total->se_li_id == '154' && $show_total->manager_approve_status == 'Y' && $show_total->work_flag != 'work_success') {
                                            echo '<span class="badge badge-info">รอ Support Manager อนุมัติ</span>';
                                        } else {
                                            echo @getemployee($show_total->admin_update);
                                        }

                                        ?> -->


                                <?php
                                if ($show_total->admin_update != null) {
                                    if ($show_total->card_status == null && $show_total->work_flag == null) {
                                        echo '<span class="badge badge-danger">ยกเลิกงานโดยผู้แจ้ง</span>';
                                    } else {
                                        echo @getemployee($show_total->admin_update);
                                    }
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
                                }
                                ?>
                            </td>
                            <td>
                                <?php
                                if ($_SESSION['uclass'] == 1 && $show_total->card_status == 'wait_checkwork' && ($show_total->user_key == $_SESSION['ukey'] || $show_total->se_namecall == $_SESSION['ukey'])) {
                                    // echo '<a href="#" data-toggle="modal" data-target="#check_work_user" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-warning" title="ตรวจสอบงาน"><i class="fa fa-edit"></i></a>&nbsp';
                                    echo '<a href="#" data-toggle="modal" data-target="#check_work_user" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-warning  btn-outline" title="ดำเนินการ"><i class="fa fa-edit"></i></a>';
                                }
                                ?>
                                <?php if (in_array($show_total->card_status, ['57995055c28df9e82476a54f852bd214','reject_hr'])) {
                                    echo '<a href="#" data-toggle="modal" data-target="#reopen_case" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-danger  btn-outline" title="แจ้งงานอีกครั้ง"><i class="fa fa-retweet"></i></a>';
                                } ?>
                                <?php
                                echo '<a href="#" data-toggle="modal" data-target="#show_case" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-info" title="ตรวจสอบ"><i class="fa fa-search"></i></a>&nbsp';
                                echo '<a href="?p=case_all_service&key=' . @$show_total->ticket . '" class="btn btn-sm btn-success" title="ประวัติดำเนินงาน"><span class="fa fa-list-ul"></span></a>&nbsp';
                                ?>
                                <a href="service/print_work.php?key=<?php echo @$show_total->ticket; ?>" target="_blank" class="btn btn-sm btn-outline-danger" title="พิมพ์ใบงาน"><i class="fa fa-print"></i></a>
                                <?php if ($_SESSION['uclass'] == '3' || $_SESSION['uclass'] == '2') {
                                    if ($show_total->card_status != '2376b33c92767c1437421a99bbc7164f') {
                                        echo '<a href="#" data-toggle="modal" data-target="#edit_case" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-secondary  btn-outline" title="ดำเนินการ"><i class="fa fa-edit"></i></a>';
                                    }
                                }
                                ?>

                            </td>



                        </tr>
                    <?php
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $("#namecall").change(function() {
            var selectedValue = $(this).val();

            // ส่งค่าที่เลือกไปยัง PHP
            $.post("getmanager.php", {
                value: selectedValue
            }, function(data) {
                // แสดงผลลัพธ์ใน input
                $("#approve").val(data);
            });
        });
        $('#check_work_user').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var recipient = button.data('whatever') // Extract info from data-* attributes
            var modal = $(this);
            var dataString = 'key=' + recipient;

            $.ajax({
                type: "GET",
                url: "otherfrm/check_work_user.php",
                data: dataString,
                cache: false,
                success: function(data) {
                    modal.find('.checkWorkUser').html(data);
                },
                error: function(err) {
                    console.log(err);
                }
            });
        });

        $('#reopen_case').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var recipient = button.data('whatever') // Extract info from data-* attributes
            var modal = $(this);
            var dataString = 'key=' + recipient;

            $.ajax({
                type: "GET",
                url: "otherfrm/reopen_case.php",
                data: dataString,
                cache: false,
                success: function(data) {
                    modal.find('.reopen_case').html(data);
                },
                error: function(err) {
                    console.log(err);
                }
            });
        });


        $('#approve-frm-cctv').on('show.bs.modal', function(event) {
            var button = $(event.relatedTarget) // Button that triggered the modal
            var recipient = button.data('whatever') // Extract info from data-* attributes
            var modal = $(this);
            var dataString = 'key=' + recipient;

            $.ajax({
                type: "GET",
                url: "otherfrm/approve_frm_cctv.php",
                data: dataString,
                cache: false,
                success: function(data) {
                    modal.find('.approve-frm-cctv').html(data);
                },
                error: function(err) {
                    console.log(err);
                }
            });
        });
    });

    // document.addEventListener('DOMContentLoaded', function() {
    //     // เรียกฟังก์ชันเมื่อมีการเปลี่ยนแปลงใน radio buttons
    //     document.querySelectorAll('input[type=radio][name="case"]').forEach(function(radio) {
    //         radio.addEventListener('change', function() {
    //             if (this.value === 'me') {
    //                 document.getElementById('namecallLabel').innerText = 'เลือกชื่อผู้แจ้ง';
    //                 document.getElementById('locationLabel').innerText = 'สาขา';
    //             } else if (this.value === 'other') {
    //                 document.getElementById('namecallLabel').innerText = 'เลือกชื่อผู้ที่จะแจ้งให้';
    //                 document.getElementById('locationLabel').innerText = 'สาขาที่จะแจ้ง';
    //             }
    //         });
    //     });
    // });
</script>