<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<?php
require("core/config.core.php");
require("core/connect.core.php");
require("core/functions.core.php");
$getdata = new clear_db();
$connect = $getdata->my_sql_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
mysqli_set_charset($connect, "utf8");
date_default_timezone_set('Asia/Bangkok');
$system_info = $getdata->my_sql_query($connect, NULL, "system_info", NULL);
$card_detail = $getdata->my_sql_query($connect, NULL, "card_info", "card_code='" . htmlspecialchars($_GET['key']) . "'");

$getdate_start = dateOnlyConvertor($card_detail->card_date_ex);
$getdate_end = dateOnlyConvertor($card_detail->card_date_ex);
$day_use = (int)datediff($getdate_start, $getdate_end) + 1;
$date_total = 365 - $day_use;

$originalDate = $card_detail->card_date_ex;
$newDate1 = date("d-m-Y", strtotime($originalDate));

$originalDate2 = $card_detail->card_date_ex;
$newDate2 = date("d-m-Y", strtotime($originalDate2));


// Variables Date
$start_date = $newDate1;
$expire_date = $newDate2;
$today_date = date("d-m-Y");

/* Start Date */
$start_explode = explode("-", $start_date);
$start_day = $start_explode[0];
$start_month = $start_explode[1];
$start_year = $start_explode[2];

/* Expire Date */
$expire_explode = explode("-", $expire_date);
$expire_day = $expire_explode[0];
$expire_month = $expire_explode[1];
$expire_year = $expire_explode[2];

/* Today Date */
$today_explode = explode("-", $today_date);
$today_day = $today_explode[0];
$today_month = $today_explode[1];
$today_year = $today_explode[2];

$start = gregoriantojd($start_month, $start_day, $start_year);
$expire = gregoriantojd($expire_month, $expire_day, $expire_year);
$today = gregoriantojd($today_month, $today_day, $today_year);

$date_current = $expire - $today; //หาวันที่ยังเหลืออยู่

?>

<head>

  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="<?php echo @$system_info->site_name; ?>">


    <title><?php echo @$system_info->site_name; ?></title>



    <!-- PLUGINS CSS STYLE -->
    <link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />

    <link href="assets/plugins/fontawesome-5.12.1/css/all.css" rel="stylesheet" type="text/css">

    <!-- SLEEK CSS -->
    <link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />

    <!-- FAVICON -->
    <link href="assets/img/favicon.png" rel="shortcut icon" />

    <script src="assets/plugins/sweetalert2/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="assets/plugins/sweetalert2/sweetalert2.min.css">

    <!--
    HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries
  -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
    <script src="assets/plugins/nprogress/nprogress.js"></script>
  </head>

</head>

<body class="" id="body">

  <div class="card-header">
    <div class="card-header text-center" style="background: <?php echo @$system_info->site_color_form; ?>;">

      <img src="resource/system/logo/<?php echo @$system_info->site_logo; ?>" width="150" alt="" class="mb-2" />
      <h3 style="color: <?php echo @$system_info->site_color_name; ?>;"><strong><?php echo @$system_info->site_name; ?></strong> </h3>
    </div>
  </div>
  <div class="row m-0">
    <a href="app/index.php" class="btn btn-danger btn-block mb-2 btn-lg"><span class="fas fa-laptop-medical"></span> แจ้งปัญหา</a>
  </div>
  <div class="card mb-3">
    <div class="card-header bg-success text-white font-weight-bold">
      <div class="row">
        <span class="ml-3">รายละเอียด</span>
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
        <div class="col-md-3 col-sm-3"><strong>อุปกรณ์ :</strong></div>
        <div class="col-md-3 col-sm-3"><?php echo @prefixConvertorequipment($card_detail->card_equipment); ?></div>
      </div>
      <div class="form-group row">
        <div class="col-md-3 col-sm-3"><strong>จำนวน :</strong></div>
        <div class="col-md-3 col-sm-3"><?php echo @$card_detail->card_sum; ?> ชุด / ชิ้น</div>
        <div class="col-md-3 col-sm-3"><strong>วันที่ซื้อ :</strong></div>
        <div class="col-md-3 col-sm-3"><?php echo @($card_detail->card_date_buy != '0000-00-00') ? dateConvertor($card_detail->card_date_buy) : '<strong><div style="color: #F00D0D">ไม่ระบุ</div></strong>'; ?></div>
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
        <div class="col-md-3 col-sm-3"><strong>ระยะเวลาที่หมดการรับประกัน :</strong></div>
        <div class="col-md-3 col-sm-3"><?php echo @($card_detail->card_date_ex != NULL) ? dateConvertor($card_detail->card_date_ex) : '<strong><div style="color: #F00D0D">ไม่ระบุ</div></strong>'; ?></div>
        <div class="col-md-3 col-sm-3"><strong>จำนวนระยเวลาคงเหลือการรับประกัน :</strong></div>
        <div class="col-md-3 col-sm-3"><?php echo $date_current; ?> วัน</div>
      </div>

      <div class="form-group row">

        <div class="col-md-3 col-sm-3"><strong>ระยะเวลาอุปกรณ์ :</strong></div>
        <div class="col-md-3 col-sm-3"><?php
                                        $nowdate = date('Y-m-d');
                                        $startday = strtotime("$card_detail->card_date_buy");
                                        $today = time();
                                        if (@$card_detail->card_date_buy != 0000 - 00 - 00 && @$card_detail->card_date_buy != $nowdate) {
                                          # code...
                                          echo  '<font color="#E81600">' . timespan($startday, $today) . '</font>';
                                        } else {
                                          echo '<a href="#" class="badge badge-danger">ไม่มีข้อมูล</a>';
                                        }
                                        ?></div>
        <div class="col-md-3 col-sm-3"><strong>ผู้ครอบครองสินทรัพย์ :</strong></div>
        <div class="col-md-3 col-sm-3"><?php echo @$card_detail->card_possess; ?></div>
      </div>
      <div class="form-group row">



        <div class="col-md-3 col-sm-3"><strong>เจ้าหน้าที่บันทึกรายการ :</strong></div>
        <div class="col-md-3 col-sm-3">
          <?php
          echo @getemployee($card_detail->user_key);
          ?>
        </div>

      </div>
    </div>
  </div>

  <?php
  $sumitem = $getdata->my_sql_show_rows($connect, "card_item", "card_key = '" . $card_detail->card_key . "'");
  if ($sumitem >= 1) {
  ?>

    <div class="card mb-3">
      <div class="card-header bg-success text-white font-weight-bold">
        <div class="row">
          <span class="ml-3">รายละเอียด ภายในอุปกรณ์</span>
        </div>
      </div>
      <div class="card-body">
        <table width="100%" class="table table-bordered">
          <tr style="font-weight:bold; color:#FFF; text-align:center;">
            <td width="10%" bgcolor="#888888">ลำดับ</td>
            <td width="23%" bgcolor="#888888">อุปกรณ์</td>
            <td bgcolor="#888888">รายละเอียดอุปกรณ์</td>
            <td bgcolor="#888888">จำนวน</td>
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

            </tr>
          <?php
          }
          ?>
        </table>
      </div>
    </div>
  <?php } ?>


  <div class="card mb-3">
    <div class="card-header bg-success text-white font-weight-bold">
      <div class="row">
        <span class="ml-3">รายละเอียด ประวัติการใช้งาน</span>
      </div>
    </div>
    <div class="card-body">
      <table id="responsive-data-table-it-use" class="table dt-responsive nowrap hover m-2" style="width:100%">
        <thead class="font-weight-bold text-center">

          <tr style="font-weight:bold; color:#FFF; background:#006EBD; text-align:center;">
            <td width="17%">วันที่</td>
            <td width="17%">สถานะ</td>
            <td width="46%">หมายเหตุ</td>
            <td width="20%">ผู้บันทึกรายการ</td>
          </tr>
        </thead>
        <tbody>
          <?php $getcard_status = $getdata->my_sql_select(
            $connect,
            NULL,
            "card_status,card_type",
            "card_status.card_key='" . $card_detail->card_key . "' 
   AND card_status.card_status=card_type.ctype_key ORDER BY card_status.cstatus_insert DESC"
          );
          while ($showcard_status = mysqli_fetch_object($getcard_status)) {
          ?>
            <tr style="font-weight:bold;">
              <td align="center"><?php echo @dateTimeConvertor($showcard_status->cstatus_insert); ?></td>
              <td align="center"><?php echo @cardStatus($showcard_status->card_status); ?></td>
              <td style="text-align: center;">
                <?php
                if (@$showcard_status->card_status_note != NULL) {
                  # code...
                  echo @$showcard_status->card_status_note;
                } else {
                  echo '<strong><font color="#E81600">ไม่มีข้อมูล</font></strong>';
                }
                ?>
              </td>
              <td align="center"><?php
                                  echo @getemployee($card_detail->user_key);
                                  ?></td>
            </tr>
          <?php
          }
          ?>
        </tbody>
      </table>
    </div>
  </div>

  <div class="card text-center mt-3">
    <div class="card-header bg-success text-white font-weight-bold">
      <div class="row">
        <span class="ml-3">รูปภาพ</span>
      </div>
    </div>
    <div class="card-body text-center" id="repic">
      <?php
      if ($card_detail->card_pic == null) {
        echo '<img class="img-thumbnail" src="resource/asset/file_pic_now/no-img.png" width="80%">';
      } else {
        echo '<img class="img-thumbnail" src="resource/asset/delevymo/' . $card_detail->card_pic . '" width="80%">';
      }
      ?>
    </div>



  </div>

  <div class="card text-center mt-3">
    <div class="card-header bg-success text-white font-weight-bold">
      <div class="row">
        <span class="ml-3">รูปภาพเพิ่มเติม</span>
      </div>
    </div>
    <div class="card-body ">
      <div class="row">

        <?php
        $i = 0;
        $getpic = $getdata->my_sql_select($connect, NULL, "card_pic", "card_key='" . $card_detail->card_key . "' AND pic_status = '1' ORDER BY date_time");
        while ($showpic = mysqli_fetch_object($getpic)) {
          $i++;
        ?>
          <div class="card-deck col-3">
            <div class="card">
              <img class="card-img-top" src="resource/asset/delevymo/<?php echo $showpic->pic_name; ?>">
              <div class="card-body">
                <h5 class="card-title text-primary"><?php echo $i; ?></h5>
                <p class="card-text pb-3">Code: <?php echo $card_detail->card_code; ?></p>
                <p class="card-text pb-3">Ref Key: <?php echo $showpic->pic_key; ?></p>


              </div>
            </div>

          </div>
        <?php } ?>

      </div>
    </div>
    <div class="card-footer text-center">
      <a href="#" class="btn btn-xs btn-outline-danger" onclick="window.close();"><i class="fa fa-reply"></i> กลับ</a>
    </div>
  </div>
  <script>
    jQuery(document).ready(function() {
      jQuery('#basic-data-table').DataTable({
        "dom": '<"row justify-content-between top-information"lf>rt<"row justify-content-between bottom-information"ip><"clear">'
      });
    });
  </script>
  <script src="assets/plugins/data-tables/jquery.datatables.min.js"></script>
  <script src="assets/plugins/data-tables/datatables.bootstrap4.min.js"></script>
</body>

</html>