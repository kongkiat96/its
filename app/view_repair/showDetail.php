<?php
require("../../core/config.core.php");
require("../../core/connect.core.php");
require("../../core/functions.core.php");
$getdata = new clear_db();
$connect = $getdata->my_sql_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
?>
<div class="modal-header">
  <h5 class="modal-title">ตรวจสอบข้อมูลและสถานะ</h5>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<div class="modal-body">
    <div class="form-group">
        <table class="table table-bordered table-hover text-center" width="100%" id="dataTablesFixwidht">
            <thead class="table-info text-center font-weight-bold">
                <tr>
                    <td>ลำดับ</td>
                    <td>ข้อมูลการตอบกลับ</td>
                    <td>ค่าใช้จ่าย</td>
                    <td>สถานะ</td>
                    <td>วันที่ตอบสถานะ</td>
                    <td>ผู้บันทึกข้อมูล</td>
                </tr>
            </thead>
            <tbody>
                <?php
                $u = 0;
                $getDetail = $getdata->my_sql_select($connect, NULL, "problem_comment", "ticket='" . htmlspecialchars($_GET['key']) . "' ORDER BY ID DESC");
                while ($showDetail = mysqli_fetch_object($getDetail)) {
                    $u++;
                ?>
                    <tr>
                        <td><?php echo $u; ?></td>
                        <td><?php echo $showDetail->comment; ?></td>
                        <td><?php echo $showDetail->price; ?></td>
                        <td><?php echo @cardStatus($showDetail->card_status); ?></td>
                        <td><?php echo @dateTimeConvertor($showDetail->date); ?></td>
                        <td><?php echo @getemployee($showDetail->admin_update); ?></td>

                    </tr>
                <?php } ?>
            </tbody>
        </table>

    </div>
</div>
<input type="text" name="key" hidden value="<?php echo $show_menu->ID; ?>">
<script>
    $(document).ready(function() {

        $('#dataTablesFixwidht', '').dataTable({
            "autoWidth": false,
            "ordering": false,
        });
    });
</script>