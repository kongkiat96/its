<?php
$card_detail = $getdata->my_sql_query($connect, NULL, "problem_list", "ticket='" . htmlspecialchars($_GET['key']) . "'");
?>
<div class="row">
  <div class="col-6">
    <h3 class="page-header">
      <i class="fa fa-history fa-fw"></i> ประวัติการบันทึกสถานะ [<?php echo @$card_detail->ticket; ?>]
    </h3>
  </div>
  <?php if ($card_detail->date_update != '0000-00-00') { ?>
    <div class="col-6">
      <h3 class="page-header" style="float: right;">
        วันที่แล้วเสร็จ
        <span class=" badge badge-success"><?php echo @dateConvertor($card_detail->date_update); ?></span>
      </h3>
    </div>
  <?php } ?>
</div>

<nav aria-label="breadcrumb" class="mt-3 mb-3">
  <ol class="breadcrumb breadcrumb-inverse">
    <li class="breadcrumb-item">
      <a href="index.php">หน้าแรก</a>
    </li>

    <li class="breadcrumb-item active" aria-current="page">ประวัติการบันทึกสถานะ</li>
  </ol>
</nav>


<div class="card border-info">
  <div class="card-header bg-info text-white text-center font-weight-bold">
    รายละเอียด
  </div>

  <div class="card-body m-3">
    <div class="responsive-data-table-cus">
      <table id="responsive-data-table-cus" class="table dt-responsive nowrap hover text-center" width="100%">
        <thead class="bg-info text-white font-weight-bold">
          <tr>
            <td width="17%">วันที่อัพเดต</td>
            <td width="10%">สถานะ</td>
            <td width="40%">หมายเหตุ</td>
            <td width="11%">ค่าใช้จ่าย</td>

            <td width="15%">ผู้บันทึกรายการ</td>
          </tr>
        </thead>
        <tbody>
          <?php
          $getcard_status = $getdata->my_sql_select($connect, NULL, "problem_comment", "ticket='" . $card_detail->ticket . "' ORDER BY ID DESC");
          while ($showcard_status = mysqli_fetch_object($getcard_status)) {
          ?>
            <tr style="font-weight:bold;">
              <!-- <td><?php echo $showcard_status->ID ?></td> -->
              <!-- <!-- <td align="center"><?php echo @dateTimeConvertor($showcard_status->date); ?></td>dateTimeConvertor -->
              <td align="center"><?php echo @dateTimeConvertor($showcard_status->date); ?></td>
              <!-- <td align="center"><?php echo $showcard_status->card_status != null ? @cardStatus($showcard_status->card_status) : '<span class="badge badge-warning" style="color:#FFF;">สถานะขออนุมัติ</span>'; ?></td> -->
              <td>
                <?php
                if (@$showcard_status->card_status == 'approve_mg' || $showcard_status->card_status == 'work_cctv' || $showcard_status->card_status == 'work_hr') {
                  echo '<span class="badge badge-warning">รอดำเนินการแก้ไข</span>';
                } else if ($showcard_status->card_status == 'wait_approve') {
                  echo '<span class="badge badge-info">รออนุมัติแจ้งงาน</span>';
                } else if ($showcard_status->card_status  == 'wait_approve_hr') {
                  echo '<span class="badge badge-info">รอการอนุมัติจาก HR</span>';
                } else if ($showcard_status->card_status == 'over_work') {
                  echo '<span class="badge badge-danger">ปิดงานอัตโนมัติ</span>';
                } else if ($showcard_status->card_status == 'reject') {
                  echo '<span class="badge badge-warning">ตรวจสอบอีกครั้ง</span>';
                } else if ($showcard_status->card_status == 'reject_hr') {
                  echo '<span class="badge badge-danger">แจ้งดำเนินงานอีกครั้ง</span>';
              } else if ($showcard_status->card_status == null) {
                  echo '<span class="badge badge-danger">ยกเลิกงานโดยผู้แจ้ง</span>';
              }else {
                  if (in_array($showcard_status->card_status, ['2e34609794290a770cb0349119d78d21', 'fe8ae3ced9e7e738d78589bf6610c4da']) && $showcard_status->work_flag != 'work_success') {
                    echo '<span class="badge badge-info">รอ Support Manager ตรวจสอบ</span>';
                  } else if ($showcard_status->card_status == 'approve_workcheck') {
                    echo '<span class="badge badge-warning">รออนุมัติงานเสร็จ</span>';
                  } else {
                    if ($showcard_status->card_status == 'wait_approve') {
                      echo '<span class="badge badge-info">รออนุมัติแจ้งงาน</span>';
                    } else if ($showcard_status->card_status == 'wait_checkwork') {
                      echo '<span class="badge badge-primary">รอตรวจสอบงานเสร็จจากผู้แจ้ง</span>';
                    } else {
                      echo @cardStatus($showcard_status->card_status);
                    }
                  }
                }

                ?>
              </td>

              <td style="text-align: center;">
                <?php
                if (@$showcard_status->comment != NULL) {
                  # code...
                  echo @$showcard_status->comment;
                } else {
                  if ($showcard_status->card_status == '2e34609794290a770cb0349119d78d21') {
                    echo '<span class="badge badge-info">รอ Support Manager ตรวจสอบ</span>';
                  } else {
                    echo '<strong><font color="#E81600">ไม่มีข้อมูล</font></strong>';
                  }
                }
                ?>
              </td>
              <td>
                <?php
                if ($showcard_status->price != NULL) {
                  echo $showcard_status->price;
                } else {
                  echo '<strong><font color="#E81600">ไม่มีข้อมูล</font></strong>';
                }
                ?>
              </td>

              <td align="center"><?php echo @getemployee($showcard_status->admin_update); ?></td>
            </tr>
          <?php
          }
          ?>
        </tbody>
      </table>
    </div>
  </div>


  <div class="card-footer text-center">
    <a href="#" class="btn btn-xs btn-outline-danger" onclick="history.back();"><i class="fa fa-reply"></i> กลับ</a>
  </div>
  <hr class="sidebar-divider d-none d-block">
  <?php

  require("detail.php");

  ?>
</div>