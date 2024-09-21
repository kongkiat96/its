<?php
session_start();
error_reporting(0);
require("../../core/config.core.php");
require("../../core/connect.core.php");
require("../../core/functions.core.php");
$getdata = new clear_db();
$connect = $getdata->my_sql_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
mysqli_set_charset($connect, "utf8");

$chk_case = $getdata->my_sql_query($connect, NULL, "problem_list", "ticket='" . htmlspecialchars($_GET['key']) . "'");
$get_admin = $getdata->my_sql_query($connect, NULL, "user", "user_key = '" . $_SESSION['ukey'] . "'");

?>
<div class="modal-body">
  <div class="form-group row">
    <div class="col-md-4 col-sm-12">
      <label for="ticket">Ticket Number</label>
      <input type="text" class="form-control" name="ticket" id="ticket" value="<?php echo @$chk_case->ticket; ?>" readonly>
    </div>
    <div class="col-md-4 col-sm-12">
      <label for="off_case_status">สถานะ</label>
      <select name="off_case_status" id="off_case_status" class="form-control select2bs4" required>
        <option value="" selected>--- เลือกข้อมูล ---</option>
        <?php
        $select_status = $getdata->my_sql_select($connect, NULL, "card_type", "ctype_status ='1' AND ctype_key NOT IN ('9b5292adfe68103f2a31b5cfbba64fd7') ORDER BY ctype_insert");
        if ($_SESSION['uclass'] == 1) {
          echo '<option value="57995055c28df9e82476a54f852bd214">ยกเลิกการแจ้ง</option>';
          echo '<option value="5cafc78523f4f5e4812f9545b2ba5ae7">แจ้งดำเนินการอีกครั้ง</option>';
          echo '<option value="fe8ae3ced9e7e738d78589bf6610c4da">ดำเนินงานเรียบร้อยแล้ว</option>';
        } else {
          while ($show_status = mysqli_fetch_object($select_status)) {
            if ($show_status->ctype_key == $chk_case->card_status) {
              echo '<option value="' . $show_status->ctype_key . '" selected>' . $show_status->ctype_name . '</option>';
            } else {
              echo '<option value="' . $show_status->ctype_key . '">' . $show_status->ctype_name . '</option>';
            }
          }
        }


        
        ?>

      </select>
      <div class="invalid-feedback">
        เลือก สถานะ.
      </div>
    </div>
    <div class="col-md-4 col-sm-12">
      <?php
      if ($_SESSION['uclass'] == 1) { ?>
        <label for="date_off_case">วันที่แจ้ง</label>
        <input type="date" class="form-control" name="date_off_case" id="date_off_case" value="<?php echo date("Y-m-d"); ?>" readonly>
      <?php } else { ?>
        <?php if ($chk_case->date_update != '0000-00-00') { ?>
          <label for="date_off_case">วันที่เสร็จ</label>
          <input type="date" class="form-control" name="date_off_case" id="date_off_case" value="<?php echo $chk_case->date_update; ?>">
        <?php } else { ?>
          <label for="date_off_case">วันที่เสร็จ</label>
          <input type="date" class="form-control" name="date_off_case" id="date_off_case">
          <div class="invalid-feedback">
            ระบุ วันที่แล้วเสร็จ.
          </div>
      <?php }
      } ?>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-12">
      <label for="comment">รายละเอียดเพิ่มเติม</label>
      <?php
      if ($_SESSION['uclass'] != 1) {
        echo '<textarea class="form-control" name="comment" id="comment"></textarea>';
      } else {
        echo '<textarea class="form-control" name="comment" id="comment" required></textarea>';
      }
      ?>
      <div class="invalid-feedback">
        ระบุ รายละเอียด.
      </div>
    </div>
  </div>

  <?php if ($_SESSION['uclass'] != 1) { ?>
    <div class="form-group row">
      <div class="col-md-6 col-sm-12">
        <label for="pic_after">รูปภาพหลังแก้ไขแล้ว</label>
        <input type="file" name="pic" id="pic_after" class="form-control">
      </div>
      <div class="col-md-6 col-sm-12">
        <label for="currency-field">ค่าใช้จ่าย</label>

        <input type="text" class="form-control" name="price" id="currency-field" value="<?php echo $chk_case->se_price != null ? $chk_case->se_price : '0.00'; ?>" required data-type="currency" placeholder="0.00">
        <div class="invalid-feedback">
          ระบุ ค่าใช้จ่าย.
        </div>
      </div>
    </div>
  <?php } ?>


</div>

<input type="text" name="card_key" id="card_key" hidden value="<?php echo @htmlspecialchars($_GET['key']); ?>">
<input type="text" name="name_user" id="name_user" hidden value="<?php echo @getemployee($chk_case->user_key); ?>">
<input type="text" name="admin" hidden value="<?php echo @getemployee($get_admin->user_key); ?>">
<input type="text" name="namecall" hidden value="<?php echo $chk_case->se_namecall; ?>">
<input type="text" name="location" hidden value="<?php echo @prefixbranch($chk_case->se_location); ?>">
<input type="text" name="detail" hidden value="<?php echo $chk_case->se_other; ?>">
<?php if ($chk_case->se_after != NULL) { ?>
  <input type="text" name="pic_log" value="<?php echo $chk_case->se_after; ?>">
<?php } ?>

<script>
  $('.select2bs4').select2({
    theme: 'bootstrap4',
    width: '100%'
  });
</script>

<script src="service/currency.js"></script>