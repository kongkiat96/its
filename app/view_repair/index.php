<?php
$card_detail = $getdata->my_sql_query($connect, NULL, "problem_list", "se_asset='" . htmlspecialchars($_GET['key']) . "'");
?>
<div class="row">
  <div class="col-12">
    <h3 class="page-header">
      <i class="fa fa-history fa-fw"></i> ประวัติการซ่อมบำรุงอุปกรณ์ รหัสสินทรัพย์ [<?php echo @$card_detail->se_asset; ?>]
    </h3>
  </div>
  <!-- <?php if ($card_detail->date_update != '0000-00-00') { ?>
    <div class="col-6">
      <h3 class="page-header" style="float: right;">
        วันที่แล้วเสร็จ
        <span class=" badge badge-success"><?php echo @dateConvertor($card_detail->date_update); ?></span>
      </h3>
    </div>
  <?php } ?> -->
</div>

<nav aria-label="breadcrumb" class="mt-3 mb-3">
  <ol class="breadcrumb breadcrumb-inverse">
    <li class="breadcrumb-item">
      <a href="index.php">หน้าแรก</a>
    </li>

    <li class="breadcrumb-item active" aria-current="page">ประวัติการบันทึกการแจ้งซ่อม</li>
  </ol>
</nav>


<div class="card border-info">
  <div class="card-header bg-success text-white text-center font-weight-bold">
    รายละเอียด
  </div>

  <div class="card-body m-3">
    <div class="responsive-data-table">
      <table id="responsive-data-table-repair" class="table dt-responsive nowrap hover text-center" style="width:100%">
        <thead class="bg-success text-white font-weight-bold">
          <tr>
            <td width="17%">วันที่แจ้งซ่อม : </td>
            <td>Ticket : </td>
            <td width="10%">สถานะ : </td>
            <td width="40%">ข้อมูลการแจ้ง : </td>
            <td>ผู้แจ้งซ่อม : </td>
            <td>ผู้ดำเนินการแก้ไข : </td>
          </tr>
        </thead>
        <tbody>
          <?php
          $getrepair = $getdata->my_sql_select($connect, NULL, "problem_list", "se_asset='" . htmlspecialchars($_GET['key']) . "' ORDER BY date DESC");
          while ($showlist = mysqli_fetch_object($getrepair)) {
          ?>
            <tr style="font-weight:bold;">
              <td align="center"><?php echo @dateConvertor($showlist->date); ?></td>
              <!-- <td align="center"><?php echo $showlist->ticket; ?></td> -->
              <td><a href="#" data-toggle="modal" data-target="#showDetail" data-whatever="<?php echo @$showlist->ticket; ?>" class="btn btn-sm btn-outline-info" data-top="toptitle" data-placement="top" title="ประวัติการตอบกลับ"><?php echo @$showlist->ticket; ?></a></td>
              <td align="center">
                <?php
                if (!empty($showlist->card_status)) {
                  echo @cardStatus($showlist->card_status);
                } else {
                  echo '<span class="badge badge-info" style="color:#FFF;">รอดำเนินการ</span>';
                }
                ?>
              </td>
              <td align="center"><?php echo $showlist->se_other; ?></td>
              <td align="center"><?php echo @getemployee($showlist->user_key); ?></td>


              <td align="center">
                <?php
                if (!empty($showlist->admin_update)) {
                  echo @getemployee($showlist->admin_update);
                } else {
                  echo '<span class="badge badge-warning" style="color:#FFF;">รอดำเนินการ</span>';
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


  <div class="card-footer text-center">
    <a href="#" class="btn btn-xs btn-outline-danger" onclick="window.close();"><i class="fa fa-reply"></i> กลับ</a>
  </div>
  <hr class="sidebar-divider d-none d-block">

  <div class="modal fade " id="showDetail" role="dialog" aria-labelledby="showDetail" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">

        <div class="showDetail">

        </div>
        <div class="modal-footer">
          <div class="col text-center">
            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal"><i class="fa fa-times fa-fw"></i>ปิด</button>
          </div>
        </div>
      </div>
    </div>
  </div>


</div>