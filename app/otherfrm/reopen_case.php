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

?>
<div class="modal-body">
    <div class="form-group row">
        <div class="col-md-6 col-sm-12">
            <label for="ticket">Ticket Number</label>
            <input type="text" class="form-control" name="ticket" id="ticket" value="<?php echo @$chk_case->ticket; ?>" readonly>
        </div>
        <div class="col-md-6 col-sm-12">
            <label for="reopen_case">สถานะ</label>
            <select name="reopen_case" id="reopen_case" class="form-control select2bs4" required>
                <option value="" selected>--- เลือกข้อมูล ---</option>

                <option value="Y">แจ้งงานอีกครั้ง</option>
                <option value="57995055c28df9e82476a54f852bd214">ยกเลิกงานแจ้ง</option>

            </select>
            <div class="invalid-feedback">
                เลือก สถานะ.
            </div>
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
    <hr class="sidebar-divider d-none d-md-block">
    <div class="form-group row">
        <div class="col-12">
            <label for="se_asset">รหัสสินทรัพย์</label>
            <input type="text" name="se_asset" id="se_asset" class="form-control" readonly value="<?php echo $chk_case->se_asset; ?>">
        </div>
    </div>
    <div class="form-group row">
        <div class="col-md-6 col-sm-12">
            <label for="service">หมวดหมู่</label>
            <select name="" id="" class="form-control" disabled>
                <?php
                $select_service = $getdata->my_sql_select($connect, NULL, "service", "se_id");
                while ($show_service = mysqli_fetch_object($select_service)) {
                    if ($show_service->se_id == $chk_case->se_id) {
                        echo '<option value="' . $show_service->se_id . '">' . $show_service->se_name . '</option>';
                    }
                }
                ?>
            </select>
        </div>

        <div class="col-md-6 col-sm-12">
            <label for="service_list">ปัญหาที่พบ</label>
            <select name="" id="" class="form-control" disabled>
                <?php
                $select_service_list = $getdata->my_sql_select($connect, NULL, "service_list", "se_li_id");
                while ($show_service_list = mysqli_fetch_object($select_service_list)) {
                    if ($show_service_list->se_li_id == $chk_case->se_li_id) {
                        echo '<option value="' . $show_service_list->se_li_id . '">' . $show_service_list->se_li_name . '</option>';
                    }
                }
                ?>
            </select>
        </div>

    </div>
    <?php
    if ($chk_case->se_other != NULL) { ?>
        <div class="form-group row">

            <div class="col-12">
                <label for="other">เพิ่มเติม</label>
                <textarea name="other" id="other" class="form-control" readonly><?php echo $chk_case->se_other; ?></textarea>
            </div>

        </div>
    <?php } ?>

    <div class="form-group row">
        <div class="col-md-6 col-sm-12">
            <label for="namecall">ชื่อผู้แจ้ง</label>
            <?php
            $search = $getdata->my_sql_query($connect, NULL, "employee", "card_key ='" . $chk_case->se_namecall . "'");
            if (!$search || !is_array($search) || COUNT($search) == 0) {
                $chkName = getemployee($chk_case->se_namecall);
            } else {
                $chkName = getemployee($chk_case->se_namecall);
            }
            ?>
            <input type="text" name="namecall" id="namecall" class="form-control" readonly value="<?php echo $chkName; ?>">
        </div>
        <?php if(!empty($chk_case->se_location)) {?>
        <div class="col-md-6 col-sm-12">
            <label for="location">สาขา</label>
            <input type="text" name="location" id="location" class="form-control" readonly value="<?php echo @prefixbranch($chk_case->se_location); ?>">
        </div>
        <?php } ?>
    </div>
    <div class="form-group row">
        <div class="col-12">
            <label for="approve">ผู้อนุมัติ</label>
            <input type="text" class="form-control" name="approve" id="approve" readonly value="<?php echo $chk_case->se_approve; ?>">
        </div>
    </div>

</div>
<input type="text" hidden name="card_key" id="card_key" value="<?php echo @htmlspecialchars($_GET['key']); ?>">
<input type="text" hidden name="name_user" id="name_user"  value="<?php echo @getemployee($chk_case->user_key); ?>">
<input type="text" hidden name="admin"  value="<?php echo @getemployee($chk_case->admin_update); ?>">
<input type="text" hidden name="namecall"  value="<?php echo @getemployee($chk_case->se_namecall); ?>">
<input type="text" hidden name="location"  value="<?php echo @prefixbranch($chk_case->se_location); ?>">
<input type="text" hidden name="detail"  value="<?php echo $chk_case->se_other; ?>">
<script>
    $('.select2bs4').select2({
        theme: 'bootstrap4',
        width: '100%'
    });
</script>