<?php
include_once 'procress/dataSave.php';
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

<?php if ($_SESSION['uclass'] == 1) { ?>
  <div class="row">
    <div class="col-xl-4 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-md font-weight-bold text-primary text-uppercase mb-1">จำนวนรายการแจ้งปัญหาเดือน <u><?php echo @month(); ?></u></div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?php @$getall = $getdata->my_sql_show_rows($connect, "problem_list", "date LIKE '%" . date("Y-m") . "%' AND (user_key = '" . $_SESSION['ukey'] . "' OR manager_approve = '" . $_SESSION['ukey'] . "')");
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
              <div class="text-md font-weight-bold text-info text-uppercase mb-1">จำนวนรายการแจ้งปัญหาวันนี้</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?php @$getall = $getdata->my_sql_show_rows($connect, "problem_list", "date = '" . date("Y-m-d") . "' AND (user_key = '" . $_SESSION['ukey'] . "' OR manager_approve = '" . $_SESSION['ukey'] . "') AND card_status NOT IN ('57995055c28df9e82476a54f852bd214')");
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
      <div class="card border-left-danger shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-md font-weight-bold text-danger text-uppercase mb-1">จำนวนรายการยกเลิก / ไม่อนุมัติปัญหาเดือน <u><?php echo @month(); ?></u></div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?php @$getall = $getdata->my_sql_show_rows($connect, "problem_list", "date LIKE '%" . date("Y-m") . "%' AND (user_key = '" . $_SESSION['ukey'] . "' OR manager_approve = '" . $_SESSION['ukey'] . "') AND card_status IN ('57995055c28df9e82476a54f852bd214')");
                                                                  echo @number_format($getall); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-calendar-times fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<?php } ?>

<?php if ($_SESSION['uclass'] == 2 || $_SESSION['uclass'] == 3) { ?>
  <div class="row">
    <div class="col-xl-4 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-md font-weight-bold text-primary text-uppercase mb-1">จำนวนรายการแจ้งปัญหาเดือน <u><?php echo @month(); ?></u></div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?php @$getall = $getdata->my_sql_show_rows($connect, "problem_list", "ID <> 'hidden' AND (date LIKE '%" . date("Y-m") . "%' ) AND se_id != '8' AND se_li_id != '154' AND card_status NOT IN ('wait_approve')");
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
              <div class="text-md font-weight-bold text-info text-uppercase mb-1">จำนวนรายการแจ้งปัญหาวันนี้</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?php @$getall = $getdata->my_sql_show_rows($connect, "problem_list", "ID <> 'hidden' AND (date LIKE '%" . date("Y-m-d") . "%' ) AND se_id != '8' AND se_li_id != '154' AND card_status NOT IN ('57995055c28df9e82476a54f852bd214')");
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
      <div class="card border-left-danger shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-md font-weight-bold text-danger text-uppercase mb-1">จำนวนรายการยกเลิก / ไม่อนุมัติปัญหาเดือน <u><?php echo @month(); ?></u></div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?php @$getall = $getdata->my_sql_show_rows($connect, "problem_list", "date LIKE '%" . date("Y-m") . "%' AND card_status IN ('57995055c28df9e82476a54f852bd214')");
                                                                  echo @number_format($getall); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-calendar-times fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-success shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-md font-weight-bold text-success text-uppercase mb-1">จำนวนรายการแจ้งปัญหาที่เสร็จแล้ว</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?php @$getall = $getdata->my_sql_show_rows($connect, "problem_list", "card_status IN ('2e34609794290a770cb0349119d78d21','2376b33c92767c1437421a99bbc7164f','fe8ae3ced9e7e738d78589bf6610c4da','9b5292adfe68103f2a31b5cfbba64fd7') AND work_flag IN ('work_success') AND (date LIKE '%" . date("Y-m") . "%' ) AND se_id != '8' AND se_li_id != '154'");
                                                                  echo @number_format($getall); ?></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-check fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-warning shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-md font-weight-bold text-warning text-uppercase mb-1">จำนวนรายการแจ้งปัญหารอการแก้ไข</div>
              <div class="h5 mb-0 font-weight-bold text-gray-800"><?php @$getwait = $getdata->my_sql_show_rows($connect, "problem_list", "card_status IS NULL OR card_status = 'approve_mg' AND se_id != '8' AND se_li_id != '154'");
                                                                  echo @number_format($getwait); ?></div>
            </div>
            <div class="col-auto">
              <?php
              if ($getwait == 0) {
                echo '<i class="fas fa-tools fa-2x text-gray-300"></i>';
              } else {
                echo '<div class="spinner-grow text-warning" role="status"></div>';
              } ?>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">

              <div class=" mb-0 font-weight-bold text-gray-800"><a href="?p=report_it" class="text-danger">ออกรายงาน</a></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-cloud-download-alt fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">

              <div class=" mb-0 font-weight-bold text-gray-800"><a href="?p=show_work" class="text-primary">สรุปต่าง ๆ แยกตามประเภท</a></div>
            </div>
            <div class="col-auto">
              <i class="fas fa-chart-line fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <div class="card card-default md-4 showdow">
    <div class="card-header card-header-border-bottom justify-content-center">
      <h5 class="m-0 font-weight-bold text-center text-primary">รายการแจ้งปัญหาเข้ามา</h5>
    </div>
    <div class="card-body">
      <div class="responsive-data-table">
        <table id="responsive-data-table-summary" class="table dt-responsive nowrap hover" style="width:100%">
          <thead class="font-weight-bold text-center">
            <tr>
              <!-- <th>ลำดับ : </th> -->
              <th>Tickets : </th>
              <th>ชื่อผู้แจ้ง : </th>
              <th>รหัสสินทรัพย์</th>
              <th>สาขา : </th>
              <th>รายละเอียดการแจ้ง : </th>
              <th>สถานะ : </th>
              <th>วันที่แจ้ง : </th>
              <th>เวลา : </th>

              <th>ค่าใช้จ่าย : </th>
              <th>ดำเนินการ : </th>
              <th>ผู้ดำเนินการ : </th>
              <th>วันที่แล้วเสร็จ : </th>
              <th>ประวัติรับผิดชอบ : </th>

            </tr>
          </thead>
          <tbody>
            <?php
            $i = 0;
            // $get_total = $getdata->my_sql_select($connect, NULL, "problem_list", "card_status NOT IN ('2e34609794290a770cb0349119d78d21','57995055c28df9e82476a54f852bd214','2376b33c92767c1437421a99bbc7164f','wait_approve') OR card_status IS NULL AND approve_department = 'IT' ORDER BY ticket DESC");
            $get_total = $getdata->my_sql_select($connect, NULL, "problem_list", "card_status NOT IN ('2e34609794290a770cb0349119d78d21','57995055c28df9e82476a54f852bd214','2376b33c92767c1437421a99bbc7164f','wait_approve','approve_workcheck','fe8ae3ced9e7e738d78589bf6610c4da','wait_checkwork','wait_approve_hr','9b5292adfe68103f2a31b5cfbba64fd7','reject_hr') AND approve_department IN ('IT','HR') AND (se_id != '8' AND se_li_id != '154') OR (manager_approve IS NULL AND se_id != '8' AND se_li_id != '154') AND (work_flag NOT IN ('work_success')) ORDER BY ticket DESC");
            while ($show_total = mysqli_fetch_object($get_total)) {
              $i++;
            ?>
              <tr>
                <!-- <td><?php echo @$i; ?></td> -->
                <td><?php echo @$show_total->ticket; ?></td>

                <!-- <td><?php echo @getemployee($show_total->user_key); ?></td> -->
                <td>
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
                <td>
                  <?php
                  $count = $getdata->my_sql_show_rows($connect, "card_info", "asset_code = '" . $show_total->se_asset . "'");
                  if ($count >= '1') {
                    echo '<a href="?p=view_repair&key=' . @$show_total->se_asset . '" target="_blank" title="ตรวจสอบ">' . @$show_total->se_asset . '</a>';
                  } else {
                    echo $show_total->se_asset;
                  }
                  ?>
                </td>
                <!-- <td><?php echo @getemployee_department($show_total->user_key); ?></td> -->
                <td><?php echo @prefixbranch($show_total->se_location); ?></td>



                <td style="white-space: revert;">
                  <?php echo $show_total->se_other; ?>
                </td>
                <td class="text-center">
                  <?php
                  if ($show_total->se_id == '8' && $show_total->se_li_id == '154' && $show_total->manager_approve_status == 'Y' && $show_total->card_status == NULL) {
                    echo '<span class="badge badge-info">รอ Support Manager อนุมัติ</span>';
                  } else if (@$show_total->card_status == 'approve_mg' && ($show_total->approve_department == 'IT' ||  $show_total->approve_department != 'HR') || $show_total->card_status == 'work_cctv' || $show_total->card_status == 'work_hr' || ($show_total->card_status == null && $show_total->manager_approve == null)) {
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
                <td><?php echo @dateConvertor($show_total->date); ?></td>
                <td>
                  <?php
                  if (@$show_total->time_start != NULL & @$show_total->time_start != "00:00:00") {
                    echo @$show_total->time_start;
                  } else {
                    echo "-";
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
                <td>
                  <?php
                  echo '<a href="#" data-toggle="modal" data-target="#show_case" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-info" data-top="toptitle" data-placement="top" title="ตรวจสอบ"><i class="fa fa-search"></i></a>&nbsp';

                  if (@$show_total->admin_update == NULL) {
                    echo '<a href="#" data-toggle="modal" data-target="#off_case" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-warning btn-outline" data-top="toptitle" data-placement="top" title="ดำเนินการ"><i class="fa fa-check-circle"></i></a>';
                  } else if (@$show_total->date_update == '0000-00-00') {
                    echo '<a href="#" data-toggle="modal" data-target="#off_case" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-success btn-outline" data-top="toptitle" data-placement="top" title="ดำเนินการ"><i class="fa fa-check-circle"></i></a>';
                  } else {
                    echo '<a href="#" data-toggle="modal" data-target="#off_case" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-success btn-outline" data-top="toptitle" data-placement="top" title="ดำเนินการ"><i class="fa fa-check-circle"></i></a>';
                  }
                  ?>
                  <a href="service/print_work.php?key=<?php echo @$show_total->ticket; ?>" target="_blank" class="btn btn-sm btn-outline-danger" data-toggle="toptitle" data-placement="top" title="พิมพ์ใบงาน"><i class="fa fa-print"></i></a>
                  <?php if ($_SESSION['uclass'] == '3' || $_SESSION['uclass'] == '2') {
                    if ($show_total->card_status != '2376b33c92767c1437421a99bbc7164f') {
                      echo '<a href="#" data-toggle="modal" data-target="#edit_case" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-secondary  btn-outline" data-top="toptitle" data-placement="top" title="ดำเนินการ"><i class="fa fa-edit"></i></a>';
                    }
                  }
                  ?>
                </td>
                <td>
                  <?php
                  if ($show_total->card_status == 'work_hr' || ($show_total->card_status == null && $show_total->manager_approve == null)) {
                    echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
                  } else {
                    if (@$show_total->admin_update == NULL) {
                      if ($show_total->card_status == null && $show_total->work_flag == null) {
                        echo '<span class="badge badge-danger">ยกเลิกงานโดยผู้แจ้ง</span>';
                      } else {
                        echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
                      }
                    } else if ($show_total->card_status == null && $show_total->work_flag == null) {
                      echo '<span class="badge badge-danger">ยกเลิกงานโดยผู้แจ้ง</span>';
                    } else {
                      echo @getemployee($show_total->admin_update);
                    }
                  }


                  ?>
                </td>
                <td class="text-center">
                <?php
                      if (@$show_total->date_update == '0000-00-00' && $show_total->card_status == 'approve_mg') {
                        echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
                      } else if ($show_total->date_update == '0000-00-00') {
                        echo @cardStatus($show_total->card_status);
                      } else {
                        echo @dateConvertor($show_total->date_update);
                      }  ?>
                </td>
                <td class="text-center"> <?php echo '
                <a href="?p=case_all_service&key=' . @$show_total->ticket . '" class="btn btn-sm btn-success" data-top="toptitle" data-placement="top" title="ตรวจสอบ"><span class="fa fa-list-ul"></span></a>'; ?>

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
<?php } elseif ($_SESSION['uclass'] == 1) { ?>

  <div class=" row">
    <div class="col-12">
      <div class="card card-default">
        <div class="card-header card-header-border-bottom d-flex justify-content-between">
          <h2><span class="mdi mdi-format-list-checks"></span>
            รายการแจ้งปัญหาทั้งหมด</h2>
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
                $get_total = $getdata->my_sql_select($connect, NULL, "problem_list", "approve_department IN ('IT','HR') AND (user_key = '" . $_SESSION['ukey'] . "' OR manager_approve = '" . $_SESSION['ukey'] . "' OR se_namecall = '" . $_SESSION['ukey'] . "') AND card_status NOT IN ('wait_approve','57995055c28df9e82476a54f852bd214','') ORDER BY ticket DESC");
                while ($show_total = mysqli_fetch_object($get_total)) {
                  $i++;
                ?>
                  <tr>
                    <td><?php echo @$i; ?></td>
                    <td><?php echo @$show_total->ticket; ?></td>
                    <td><?php echo @dateConvertor($show_total->date); ?></td>
                    <td>
                      <?php
                      if (@$show_total->admin_update == NULL) {
                        echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
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
                      if (@$show_total->date_update == '0000-00-00' && $show_total->card_status == 'approve_mg') {
                        echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
                      } else if ($show_total->date_update == '0000-00-00') {
                        echo @cardStatus($show_total->card_status);
                      } else {
                        echo @dateConvertor($show_total->date_update);
                      }  ?>
                    </td>
                    <td>
                      <a href="?p=case_all_service&key=<?php echo @$show_total->ticket; ?>" class="btn btn-sm btn-success" data-top="toptitle" data-placement="top" title="ตรวจสอบ"><span class="mdi mdi-timeline-text-outline"></span></a>
                      <?php
                      if ($show_total->card_status == '2e34609794290a770cb0349119d78d21') {
                        echo '';
                      } else if ($show_total->card_status == 'approve_workcheck') {
                        echo '<a href="#" data-toggle="modal" data-target="#off_case" data-whatever="' . @$show_total->ticket . '" class="btn btn-sm btn-success btn-outline" data-top="toptitle" data-placement="top" title="ดำเนินการ"><i class="fa fa-check-circle"></i></a>';
                      } else {
                        echo "";
                      }
                      ?>
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

<?php } ?>