<?php
session_start();
error_reporting(0);
require("../../../core/config.core.php");
require("../../../core/connect.core.php");
require("../../../core/functions.core.php");
$getdata = new clear_db();
$connect = $getdata->my_sql_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
mysqli_set_charset($connect, "utf8");

$getuser = $getdata->my_sql_query($connect, NULL, "user", "id='" . htmlspecialchars($_GET['key']) . "'");
?>
<div class="modal-body">
    <div class="form-group row">
        <div class="col-md-6 sol-sm-12">
            <label for="name">ชื่อผู้ใช้งาน</label>
            <input type="text" name="name" id="name" class="form-control" readonly value="<?php echo @getemployee($getuser->user_key); ?>" required>
        </div>
        <div class="col-md-6 sol-sm-12">
            <label for="username">Username</label>
            <input type="text" name="username" id="username" class="form-control" readonly value="<?php echo $getuser->username; ?>" required>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-12">
            <label for="email">อีเมลผู้ใช้งาน</label>
            <input type="text" name="email" id="email" class="form-control" value="<?php echo $getuser->email; ?>" required>
        </div>
    </div>
    <input type="hidden" name="id_user" id="id_user" value="<?php echo @$getuser->id; ?>">
    <input type="text" name="showclass" hidden value="<?php echo $getuser->user_class; ?>">
</div>

<script>
    $('.select2bs4').select2({
        theme: 'bootstrap4'
    });
</script>