<?php
require_once 'procress/savedata.php';
require_once 'auto/getalert.php';
?>


<div class="row">
  <div class="col-lg-6 col-sm-12">
    <h3 class="page-header">
      <i class="fa fa-edit fa-fw"></i> เพิ่มรายการอุปกรณ์ [<?php echo @$card_detail->card_code; ?>]
    </h3>
  </div>
  <div class="col-lg-6 col-sm-12">
    <h3 class="page-header"><i class="fa fa-history fa-fw"></i> ระยะเวลาเสื่อมอุปกรณ์
      <?php
      $nowdate = date('Y-m-d');
      $startday = strtotime("$card_detail->card_date_buy");
      $today = time();
      if (@$card_detail->card_date_buy != 0000 - 00 - 00 && @$card_detail->card_date_buy != $nowdate) {
        # code...
        echo  '<font color="#E81600">' . timespan($startday, $today) . '</font>';
      } else {
        echo '<a href="#" class="badge badge-danger">ไม่มีข้อมูล</a>';
      }
      ?>
    </h3>
  </div>
</div>


<nav aria-label="breadcrumb" class="mt-3 mb-3">
  <ol class="breadcrumb breadcrumb-inverse">
    <li class="breadcrumb-item">
      <a href="index.php">หน้าแรก</a>
    </li>
    <li class="breadcrumb-item">
      <a href="index.php?p=add_detail">ข้อมูลไม่สมบูรณ์</a>
    </li>
    <li class="breadcrumb-item active" aria-current="page">รหัสสินทรัพย์ [ <?php echo @$card_detail->asset_code; ?> ]</li>
  </ol>
</nav>
<?php
$sumitem = $getdata->my_sql_show_rows($connect, "card_item", "card_key = '" . $card_detail->card_key . "'");
?>
<div class="m-3">
  <?php if ($card_detail->card_status == NULL && $sumitem < 1) { ?>
    <div class="progress mb-3">
      <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">75%</div>
    </div>
  <?php } elseif ($card_detail->card_status == NULL && $sumitem >= 1) { ?>
    <div class="progress mb-3">
      <div class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar" style="width: 85%" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">85%</div>
    </div>
  <?php } else { ?>
    <div class="progress">
      <div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">100%</div>
    </div>
  <?php } ?>
</div>
<div class="card mb-3">
  <div class="card-header bg-success text-white font-weight-bold">
    <div class="row">
      <span class="ml-3">รายละเอียด</span>

      <a class="btn btn-sm btn-danger ml-auto" data-toggle="modal" data-target="#edit_detail_it" data-whatever="<?php echo @$card_detail->card_key; ?>"><i class="fas fa-edit"></i> แก้ไข</a>
    </div>
  </div>
  <div class="card-body">
    <div class="form-group row">
      <div class="col-md-3 col-sm-3"><strong>รหัสสินทรัพย์ :</strong></div>
      <div class="col-md-3 col-sm-3">
        <?php
        if (@$card_detail->asset_code != NULL) {
          echo @$card_detail->asset_code;
        } else {
          echo '<strong><font color="#E81600">ยังไม่ระบุ</font></strong>';
        }
        ?>
      </div>
      <div class="col-md-3 col-sm-3"><strong>วันที่เริ่มใช้งาน :</strong></div>
      <div class="col-md-3 col-sm-3">
        <?php
        if (@$card_detail->card_insert != 0000 - 00 - 00) {
          echo @dateConvertor($card_detail->card_insert);
        } else {
          echo '<strong><font color="#E81600">ยังไม่ระบุ</font></strong>';
        }
        ?>
      </div>
    </div>
    <div class="form-group row">
      <div class="col-md-3 col-sm-3"><strong>ผู้ใช้งาน :</strong></div>
      <div class="col-md-3 col-sm-3">
        <?php echo @getemployee($card_detail->card_customer_name); ?>
      </div>
      <div class="col-md-3 col-sm-3"><strong>บริษัท / สังกัด :</strong></div>
      <div class="col-md-3 col-sm-3"><?php echo @getemployee_company($card_detail->card_customer_name); ?></div>
    </div>
    <div class="form-group row">
      <div class="col-md-3 col-sm-3"><strong>สินทรัพย์ของบริษัท :</strong></div>
      <div class="col-md-3 col-sm-3"><?php echo @prefixConvertorCompany($card_detail->card_company); ?></div>
      <div class="col-md-3 col-sm-3"><strong>ผู้ครอบครองสินทรัพย์ :</strong></div>
      <div class="col-md-3 col-sm-3"><?php echo $card_detail->card_possess; ?></div>

    </div>
    <div class="form-group row">
      <div class="col-md-3 col-sm-3"><strong>อุปกรณ์ :</strong></div>
      <div class="col-md-3 col-sm-3"><?php echo @prefixConvertorequipment($card_detail->card_equipment); ?></div>
      <div class="col-md-3 col-sm-3"><strong>จำนวน :</strong></div>
      <div class="col-md-3 col-sm-3"><?php echo @$card_detail->card_sum; ?> ชุด / ชิ้น</div>

    </div>
    <div class="form-group row">

      <div class="col-md-3 col-sm-3"><strong>ระบบปฏิบัติการ :</strong></div>
      <div class="col-md-3 col-sm-3">
        <?php
        if (@$card_detail->license_name == NULL) {
          # code...
          echo '<strong><font color="red">ไม่มีข้อมูล</font></strong>';
        } else {

          echo '<strong><font color="green">' . @$card_detail->license_name . '</font></strong>';
        }
        ?></div>
      <div class="col-md-3 col-sm-3"><strong>ลิขสิทธิ์ :</strong></div>
      <div class="col-md-3 col-sm-3">
        <?php
        if (@$card_detail->ck_license == 1) {
          # code...
          echo '<strong><font color="green">License</font></strong>';
        } else {
          echo '<strong><font color="red">No License</font></strong>';
        }
        ?>
      </div>

    </div>
    <div class="form-group row">
      <div class="col-md-3 col-sm-3"><strong>โปรแกรม :</strong></div>
      <div class="col-md-3 col-sm-3">
        <?php
        if (@$card_detail->p_license_name == NULL) {
          # code...
          echo '<strong><font color="red">ไม่มีข้อมูล</font></strong>';
        } else {

          echo '<strong><font color="green">' . @$card_detail->p_license_name . '</font></strong>';
        }
        ?></div>
      <div class="col-md-3 col-sm-3"><strong>ลิขสิทธิ์ :</strong></div>
      <div class="col-md-3 col-sm-3">
        <?php
        if (@$card_detail->p_ck_license == 1) {
          # code...
          echo '<strong><font color="green">License</font></strong>';
        } else {
          echo '<strong><font color="red">No License</font></strong>';
        }
        ?>
      </div>

    </div>
    <div class="row form-group">
      <div class="col-md-3 col-sm-3"><strong>ระยะเวลาการรับประกัน :</strong></div>
      <div class="col-md-3 col-sm-3"><?php echo @($card_detail->card_ex != '') ? $card_detail->card_ex : '<strong><div style="color: #F00D0D">ไม่ระบุ</div></strong>'; ?></div>
      <div class="col-md-3 col-sm-3"><strong>วันที่ซื้อ :</strong></div>
      <div class="col-md-3 col-sm-3"><?php echo @($card_detail->card_date_buy != '0000-00-00') ? dateConvertor($card_detail->card_date_buy) : '<strong><div style="color: #F00D0D">ไม่ระบุ</div></strong>'; ?></div>
    </div>

    <div class="row form-group">
      <div class="col-md-3 col-sm-3"><strong>ระยะเวลาที่หมดการรับประกัน :</strong></div>
      <div class="col-md-3 col-sm-3"><?php echo @($card_detail->card_date_ex != NULL) ? dateConvertor($card_detail->card_date_ex) : '<strong><div style="color: #F00D0D">ไม่ระบุ</div></strong>'; ?></div>
      <div class="col-md-3 col-sm-3"><strong>จำนวนระยเวลาคงเหลือการรับประกัน :</strong></div>
      <div class="col-md-3 col-sm-3"><?php echo $date_current; ?> วัน</div>
    </div>
    <div class="row form-group">
      <div class="col-md-3 col-sm-3"><strong>เจ้าหน้าที่บันทึกรายการ :</strong></div>
      <div class="col-md-3 col-sm-3">
        <?php
        echo @getemployee($card_detail->user_key);
        ?>
      </div>
    </div>
  </div>
  <div class="card-footer text-center">


    <button class="ladda-button btn btn-warning btn-square btn-ladda bg-success" data-style="expand-left" type="button" data-toggle="modal" data-target="#save_card">
      <span class="fas fa-save"> บันทึก</span>
      <span class="ladda-spinner"></span>
    </button>
  </div>
</div>


<?php echo @$alert; ?>

<div class="modal fade" id="save_card" role="dialog" aria-labelledby="save_card" aria-hidden="true">
  <div class="modal-dialog modal-md" role="document">
    <form method="post" enctype="multipart/form-data" class="needs-validation" novalidate id="waitsave3">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">ยืนยันข้อมูล</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="form-group row">
            <div class="col-md-6">
              <label for="card_done_aprox">วันที่ใช้ / คืนอุปกรณ์</label>
              <input type="date" name="card_done_aprox" id="card_done_aprox" value="<?php echo @$card_detail->card_done_aprox; ?>" class="form-control input-sm">
            </div>
            <div class="col-md-6">
              <label for="card_status">สถานะปัจจุบัน</label>
              <select name="card_status" id="card_status" class="form-control select2bs4" required style="width: 100%;">
                <option value="">--- เลือกข้อมูล ---</option>
                <?php
                $getcard_type = $getdata->my_sql_select($connect, NULL, "card_type", "ctype_status='1' ORDER BY ctype_insert");
                while ($showcard_type = mysqli_fetch_object($getcard_type)) {
                  if ($showcard_type->ctype_key == '89da7d193f3c67e4310f50cbb5b36b90') {
                    echo '<option value="' . $showcard_type->ctype_key . '" selected>' . $showcard_type->ctype_name . '</option>';
                  } else {
                    echo '<option value="' . $showcard_type->ctype_key . '">' . $showcard_type->ctype_name . '</option>';
                  }
                }
                ?>
              </select>
              <div class="invalid-feedback">
                เลือก สถานะอุปกรณ์.
              </div>
            </div>
          </div>
          <div class="form-group row">
            <div class="col-12">
              <label for="card_status_note">หมายเหตุเพิ่มเติม</label>
              <textarea name="card_status_note" id="card_status_note" rows="7" required class="form-control"></textarea>
            </div>
            <div class="invalid-feedback">
              ระบุ หมายเหตุเพิ่มเติม.
            </div>
          </div>
        </div>
        <div class="modal-footer">

          <button class="ladda-button btn btn-success btn-square btn-ladda" style="background-color: green;" data-style="contract" type="submit" name="save_confirm_card">
            <span class="fas fa-save"> บันทึก</span>
            <span class="ladda-spinner"></span>
          </button>
        </div>
      </div>
      <!-- /.modal-content -->
    </form>
  </div>
  <!-- /.modal-dialog -->
</div>

<!-- Modal Edit Detail -->
<div class="modal fade" id="edit_detail_it" role="dialog" aria-labelledby="edit_detail_it" aria-hidden="true">

  <div class="modal-dialog modal-xl" role="document">
    <form method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">แก้ไขรายละเอียด</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="detail">
          <div class="sk-wave mx-auto">
            <div class="rect1"></div>
            <div class="rect2"></div>
            <div class="rect3"></div>
            <div class="rect4"></div>
            <div class="rect5"></div>
          </div>
        </div>
        <div class="modal-footer">

          <button class="ladda-button btn btn-success btn-square btn-ladda" style="background-color: green;" data-style="contract" type="submit" name="save_edit_detail">
            <span class="fas fa-sync-alt"> บันทึก</span>
            <span class="ladda-spinner"></span>
          </button>
        </div>
      </div>
    </form>
  </div>
</div>
<!-- End Modal -->


<!-- Modal Edit Detail -->
<div class="modal fade" id="edit_detail_pic" role="dialog" aria-labelledby="edit_detail_pic" aria-hidden="true">

  <div class="modal-dialog modal-xl" role="document">
    <form method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">แก้ไขรูปภาพ</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="detail_pic">
          <div class="sk-wave mx-auto">
            <div class="rect1"></div>
            <div class="rect2"></div>
            <div class="rect3"></div>
            <div class="rect4"></div>
            <div class="rect5"></div>
          </div>
        </div>
        <div class="modal-footer">

          <button class="ladda-button btn btn-success btn-square btn-ladda" style="background-color: green;" data-style="contract" type="submit" name="save_edit_detail_pic">
            <span class="fas fa-sync-alt"> บันทึก</span>
            <span class="ladda-spinner"></span>
          </button>
        </div>
      </div>
    </form>
  </div>
</div>
<!-- End Modal -->

<!-- Modal Edit Item -->
<div class="modal fade" id="edit_item" tabindex=" -1" role="dialog" aria-labelledby="edit_item" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <form method="post" enctype="multipart/form-data" id="waitsave">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">ข้อมูลรายการอุปกรณ์</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="item">

        </div>
      </div>
    </form>
  </div>
</div>
<!-- End Modal -->

<div class="card broder-warning ">
  <div class="card-header bg-warning text-white font-weight-bold">
    เพิ่มรายการเกี่ยวกับอุปกรณ์
  </div>
  <div class="card-body">
    <form method="POST">
      <div class="form-group row">
        <div class="col-md-5">
          <label for="device_name">อุปกรณ์</label>
          <input type="text" class="form-control input-sm" name="device_name" id="device_name" autofocus>
        </div>
        <div class="col-md-5">
          <label for="device_detail">รายละเอียดอุปกรณ์</label>
          <input type="text" class="form-control input-sm" name="device_detail" id="device_detail">
        </div>
        <div class="col-md-2">
          <label for="device_num">จำนวน</label>
          <input type="number" class="form-control input-sm" name="device_num" id="device_num" min="1" max="99" value="1">
        </div>

      </div>
      <div class="form-group row">
        <div class="col-12 text-center">
          <!-- <button type="submit" class="btn btn-sm btn-outline-warning" name="save_item" id="save_item"><i class="fa fa-plus"></i> เพิ่มรายการ</button> -->

          <button class="ladda-button btn btn-warning btn-square btn-ladda bg-warning" data-style="expand-left" type="submit" name="save_item">
            <span class="fas fa-list-ol"> เพิ่มรายการ</span>
            <span class="ladda-spinner"></span>
          </button>




        </div>
      </div>
      <div class="table-responsive">
        <table width="100%" class="table table-bordered">
          <tr style="font-weight:bold; color:#FFF; text-align:center;">
            <td width="10%" bgcolor="#888888">ลำดับ</td>
            <td width="23%" bgcolor="#888888">อุปกรณ์</td>
            <td bgcolor="#888888">รายละเอียดอุปกรณ์</td>
            <td bgcolor="#888888">จำนวน</td>
            <td bgcolor="#888888">จัดการ</td>
          </tr>
          <?php
          $i = 0;
          $getitem = $getdata->my_sql_select($connect, NULL, "card_item", "card_key='" . $card_detail->card_key . "' ORDER BY item_insert");
          while ($showitem = mysqli_fetch_object($getitem)) {
            $i++
          ?>
            <tr id="<?php echo @$showitem->item_key; ?>">
              <td align="center" bgcolor="#EFEFEF"><strong><?php echo $i; ?></strong></td>
              <td align="center"><strong><?php echo @$showitem->item_name; ?></strong></td>
              <td align="center" style="color:#970002;" width="40%"><strong><?php echo @$showitem->item_note; ?></strong></td>
              <td align="right">
                <strong>
                  <?php
                  if ($showitem->item_price_aprox == 0) {
                    echo '1';
                  } else {
                    echo $showitem->item_price_aprox;
                  }
                  ?>
                </strong>
              </td>
              <td align="center">

                <a data-toggle="modal" data-target="#edit_item" data-whatever="<?php echo @$showitem->item_key; ?>" class="btn btn-sm btn-outline-info" title="แก้ไข"><i class="fas fa-edit"></i></a>

                <a onclick="deleteitem('<?php echo @$showitem->item_key; ?>');" class="btn btn-sm btn-outline-danger" title="ลบ"><i class="fa fa-times"></i></a>
              </td>
            </tr>
          <?php
          }
          ?>
        </table>
      </div>
    </form>
  </div>



</div>

<div class="card text-center mt-3">
  <div class="card-header bg-info text-white font-weight-bold">
    <div class="row">
      <span class="ml-3">รูปภาพหลัก</span>

      <a class="btn btn-sm btn-danger ml-auto" data-toggle="modal" data-target="#edit_detail_pic" data-whatever="<?php echo @$card_detail->card_key; ?>"><i class="fas fa-edit"></i> แก้ไขรูปภาพ</a>
    </div>
  </div>
  <div class="card-body text-center" id="repic">
    <?php
    if ($card_detail->card_pic == null) {
      echo '<img class="img-thumbnail" src="../resource/asset/file_pic_now/no-img.png" width="80%">';
    } else {
      echo '<img class="img-thumbnail" src="../resource/asset/delevymo/' . $card_detail->card_pic . '" width="80%">';
    }
    ?>
  </div>

</div>

<div class="card text-center mt-3">
  <div class="card-header bg-primary text-white font-weight-bold">
    <div class="row">
      <span class="ml-3">รูปภาพเพิ่มเติม</span>
    </div>
  </div>
  <div class="card-body ">
    <form method="post" enctype="multipart/form-data" class="needs-validation" novalidate>
      <div class="form-group row">
        <div class="col-12">
          <label for="pic">รูปภาพเพิ่มเติม</label>
          <input type="file" name="pic" id="pic" class="form-control input-sm" required>
          <input type="text" value="<?php echo $card_detail->card_code; ?>" name="card_code" hidden>
          <div class="invalid-feedback">
            เลือก รูปภาพเพิ่มเติม.
          </div>
        </div>

      </div>
      <div class="form-group row">
        <div class="col-12 text-center">
          <button class="ladda-button btn btn-primary btn-square btn-ladda bg-primary" data-style="expand-left" type="submit" name="save_pic">
            <span class="fas fa-list-ol"> เพิ่มรายการ</span>
            <span class="ladda-spinner"></span>
          </button>
        </div>
      </div>
      <div class="row">

        <?php
        $i = 0;
        $getpic = $getdata->my_sql_select($connect, NULL, "card_pic", "card_key='" . $card_detail->card_key . "' AND pic_status = '1' ORDER BY date_time");
        while ($showpic = mysqli_fetch_object($getpic)) {
          $i++;
        ?>
          <div class="card-deck col-3">
            <div class="card">
              <img class="card-img-top" src="../resource/asset/delevymo/<?php echo $showpic->pic_name; ?>">
              <div class="card-body">
                <h5 class="card-title text-primary"><?php echo $i; ?></h5>
                <p class="card-text pb-3">Code: <?php echo $card_detail->card_code; ?></p>
                <p class="card-text pb-3">Ref Key: <?php echo $showpic->pic_key; ?></p>
                <a href="#" onclick="deletePic('<?php echo @$showpic->pic_key; ?>');" class="btn btn-outline-danger"> <i class="fa fa-times"></i> Delete</a>

              </div>
            </div>

          </div>
        <?php } ?>

      </div>

    </form>
  </div>

</div>