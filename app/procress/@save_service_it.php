<?php
// ------------------  Save Service IT ------------------------------
$name_key = $userdata->user_key; // show key md5 name
$fullname = @prefixConvertorUsername($name_key);
$getemployee  = $getdata->my_sql_query($connect, NULL, "employee", "card_key = '" . $_SESSION['ukey'] . "'");

$getticket = $getdata->my_sql_show_rows($connect, "problem_list", "ID AND date LIKE '%" . date("Y-m") . "%'"); // นับข้อมูลใน database โดยเลือก ปี เดือน วัน ปัจจุบัน
if ($getticket < 999) {
    $runticket = 'IT' . date("Y-m-d") . '-W' . sprintf('%02s', $getticket + 1); // ถ้าวันปัจจุบันมีการนับน้อยกว่า 999 ให้ปัจจุบัน +1 
}

$getalert = $getdata->my_sql_query($connect, NULL, "system_alert", "alert_key = 'cd5fe35c5af97026fd4efdfe4afd4376'");

$getcontrol = $getdata->my_sql_show_rows($connect, "problem_list", "ID AND date LIKE '%" . date("Y-m") . "%'"); // นับข้อมูลใน database
if ($getcontrol < 999) {
    if (isset($_POST['save_newcase'])) {
        if (htmlspecialchars($_POST['se_li']) != NULL) {

            if (!defined('pic')) {
                define('pic', '../resource/it/delevymo/');
            }
            if (is_uploaded_file($_FILES['pic']['tmp_name'])) {
                $remove_charname = array(' ', '`', '"', '\'', '\\', '/', '_');
                $pic = str_replace($remove_charname, '', $_FILES['pic']['name']);
                $fixname_pic = $runticket . '-' . $pic;
                $File_tmpname = $_FILES['pic']['tmp_name'];

                if (move_uploaded_file($File_tmpname, (pic . $fixname_pic)));
            }


            resizepic($pic, $fixname_pic);

            // if (htmlspecialchars($_POST['se_id']) != '8') {
            //     $getdata->my_sql_insert($connect, "problem_list", "
            //     ticket='" . $runticket . "',
            //     user_key ='" . $_SESSION['ukey'] . "',
            //     department ='" . htmlspecialchars($_POST['department']) . "',
            //     company = '" . htmlspecialchars($_POST['company']) . "',
            //     se_id ='" . htmlspecialchars($_POST['se_id']) . "',
            //     se_li_id ='" . htmlspecialchars($_POST['se_li']) . "',
            //     se_other = '" . htmlspecialchars($_POST['other']) . "',
            //     se_asset = '" . htmlspecialchars($_POST['se_asset']) . "',
            //     pic_before = '" . $fixname_pic . "',
            //     se_namecall = '" . htmlspecialchars($_POST['namecall']) . "',
            //     se_location = '" . htmlspecialchars($_POST['location']) . "',
            //     se_approve = '" . htmlspecialchars($_POST['approve']) . "',
            //     date = '" . date("Y-m-d") . "',
            //     time_start = '" . date("H:i:s") . "'");
            // } else {
            $getApproveDep = in_array($_POST['se_id'], ['13', '16']) ? 'HR' : 'IT';
            if ($_POST['case'] == 'me') {
                $chkManager =  $getdata->my_sql_query($connect, NULL, "manager", "user_key = '" . $_SESSION['ukey'] . "'");
            } else if ($_POST['case'] == 'other') {
                $chkManager =  $getdata->my_sql_query($connect, NULL, "manager", "user_key = '" . $_POST['namecall'] . "'");
            } else {
                $chkManager =  $getdata->my_sql_query($connect, NULL, "manager", "user_key = '" . $_SESSION['ukey'] . "'");
            }

            $mailManager =  $getdata->my_sql_query($connect, NULL, "user", "user_key = '" . $chkManager->manager_user_key . "'");

            // echo $chkManager->manager_user_key; 13 16
            if (COUNT($chkManager) == 0) {
                $getdata->my_sql_insert($connect, "problem_list", "
                ticket='" . $runticket . "',
                user_key ='" . $_SESSION['ukey'] . "',
                department ='" . htmlspecialchars($_POST['department']) . "',
                company = '" . htmlspecialchars($_POST['company']) . "',
                se_id ='" . htmlspecialchars($_POST['se_id']) . "',
                se_li_id ='" . htmlspecialchars($_POST['se_li']) . "',
                se_other = '" . htmlspecialchars($_POST['other']) . "',
                se_asset = '" . htmlspecialchars($_POST['se_asset']) . "',
                pic_before = '" . $fixname_pic . "',
                se_namecall = '" . htmlspecialchars($_POST['namecall']) . "',
                se_location = '" . htmlspecialchars($_POST['location']) . "',
                se_approve = '" . htmlspecialchars($_POST['approve']) . "',
                date = '" . date("Y-m-d") . "',
                approve_department = '" . $getApproveDep . "',
                time_start = '" . date("H:i:s") . "'");
            } else {
                $getdata->my_sql_insert($connect, "problem_list", "
                ticket='" . $runticket . "',
                user_key ='" . $_SESSION['ukey'] . "',
                department ='" . htmlspecialchars($_POST['department']) . "',
                company = '" . htmlspecialchars($_POST['company']) . "',
                se_id ='" . htmlspecialchars($_POST['se_id']) . "',
                se_li_id ='" . htmlspecialchars($_POST['se_li']) . "',
                se_other = '" . htmlspecialchars($_POST['other']) . "',
                se_asset = '" . htmlspecialchars($_POST['se_asset']) . "',
                pic_before = '" . $fixname_pic . "',
                se_namecall = '" . htmlspecialchars($_POST['namecall']) . "',
                se_location = '" . htmlspecialchars($_POST['location']) . "',
                se_approve = '" . htmlspecialchars($_POST['approve']) . "',
                card_status = 'wait_approve',
                manager_approve = '" . $chkManager->manager_user_key . "',
                manager_approve_status = 'N',
                date = '" . date("Y-m-d") . "',
                approve_department = '" . $getApproveDep . "',
                time_start = '" . date("H:i:s") . "'");
            }

            // }

            $remove_charname = array('&', '!', '"', '%', 'amp;', 'quot;');
            $rc_other = str_replace($remove_charname, '-', htmlspecialchars($_POST['other']));
            $rc_department = str_replace($remove_charname, '-', htmlspecialchars($_POST['gt_department']));

            // ส่งข้อมูลเข้าไลน์
            $name_user = $_POST['name_em'];
            $department = $rc_department;
            $service = prefixConvertorService($_POST['se_id']);
            $problem = prefixConvertorServiceList($_POST['se_li']);
            $other = $rc_other;
            $namecall = getemployee($_POST['namecall']);
            $location = $_POST['location'];
            $asset = $_POST['se_asset'];
            $approve = $_POST['approve'];
            $date_send = date('d/m/Y');

            $line_token = $getalert->alert_line_token; // Token
            // $mailMu = $chkManager->manager_user_key;
            $line_text = "
------------------------
Ticket : {$runticket}
------------------------
{$name_user}
แผนก : {$department}
ผู้แจ้ง : {$namecall}
สาขา : " . @prefixbranch($location) . "
ผู้อนุมัติ : {$approve}
รหัสสินทรัพย์ : {$asset}
------------------------
หมวดหมู่ : " . str_replace($remove_charname, '', $service) . " 
รายการ : " . str_replace($remove_charname, '', $problem) . "
พบปัญหา : {$other}
            
วันที่ : {$date_send}
Link : " . @urllink() . "
";
            // --------
            // mailM : " . $mailMu . "
            // mailU : " . $_SESSION['emailuser'] . "


            if ($getApproveDep == 'HR') {
                $mailDepartment = 'kongkiat.0174@hotmail.com';
                $toDepartment = 'ฝ่าย Human Resource';
            } else {
                $mailDepartment = 'nbrit@nbrest.com';
                $toDepartment = 'ฝ่าย IT Support';
            }
            //             $mail_text = "
            // <!DOCTYPE html>
            // <html>
            // <head>
            //     <style>
            //         body {
            //             font-family: Arial, sans-serif;
            //             line-height: 1.6;
            //         }
            //         .container {
            //             margin: 20px;
            //             padding: 20px;
            //             border: 1px solid #ddd;
            //             border-radius: 5px;
            //             background-color: #f9f9f9;
            //         }
            //         .header, .footer {
            //             text-align: center;
            //             padding: 10px;
            //             background-color: #007BFF;
            //             color: white;
            //             border-radius: 5px;
            //         }
            //         .content {
            //             margin: 20px 0;
            //         }
            //         .section {
            //             margin-bottom: 15px;
            //         }
            //         .section-title {
            //             font-weight: bold;
            //             margin-bottom: 5px;
            //         }
            //         .value {
            //             margin-left: 10px;
            //         }
            //     </style>
            // </head>
            // <body>
            //     <div class='container'>
            //         <div class='header'>
            //             <h2>Ticket Information</h2>
            //         </div>
            //         <div class='content'>
            //             <div class='section'>
            //                 <div class='section-title'>Ticket:</div>
            //                 <div class='value'>{$runticket}</div>
            //             </div>
            //             <div class='section'>
            //                 <div class='section-title'>Name:</div>
            //                 <div class='value'>{$name_user}</div>
            //             </div>
            //             <div class='section'>
            //                 <div class='section-title'>Department:</div>
            //                 <div class='value'>{$department}</div>
            //             </div>
            //             <div class='section'>
            //                 <div class='section-title'>Caller:</div>
            //                 <div class='value'>{$namecall}</div>
            //             </div>
            //             <div class='section'>
            //                 <div class='section-title'>Branch:</div>
            //                 <div class='value'>" . @prefixbranch($location) . "</div>
            //             </div>
            //             <div class='section'>
            //                 <div class='section-title'>Approver:</div>
            //                 <div class='value'>{$approve}</div>
            //             </div>
            //             <div class='section'>
            //                 <div class='section-title'>Asset Code:</div>
            //                 <div class='value'>{$asset}</div>
            //             </div>
            //             <div class='section'>
            //                 <div class='section-title'>Category:</div>
            //                 <div class='value'>" . @prefixConvertorService($service) . "</div>
            //             </div>
            //             <div class='section'>
            //                 <div class='section-title'>Item:</div>
            //                 <div class='value'>" . prefixConvertorServiceList($problem) . "</div>
            //             </div>
            //             <div class='section'>
            //                 <div class='section-title'>Problem Found:</div>
            //                 <div class='value'>{$other}</div>
            //             </div>
            //             <div class='section'>
            //                 <div class='section-title'>Date:</div>
            //                 <div class='value'>{$date_send}</div>
            //             </div>
            //             <div class='section'>
            //                 <div class='section-title'>Link:</div>
            //                 <div class='value'>" . @urllink() . "</div>
            //             </div>
            //         </div>
            //         <div class='footer'>
            //             <p>Thank you</p>
            //         </div>
            //     </div>
            // </body>
            // </html>
            // ";



            lineNotify($line_text, $line_token); // เรียกใช้ Functions line
            //echo "<META HTTP-EQUIV='Refresh' CONTENT = '1; URL='" . $SERVER_NAME . "'>";
            // require_once 'get_mail.php';
            $alert = $success;
        } else {
            $alert = $warning;
            //echo "<META HTTP-EQUIV='Refresh' CONTENT = '2; URL='" . $SERVER_NAME . "'>";
        }
    }

    if (isset($_POST['save_offcase'])) {
        if (htmlspecialchars($_POST['off_case_status']) != NULL && htmlspecialchars($_POST['comment']) != NULL) {
            $getdata->my_sql_update(
                $connect,
                "problem_list",
                "card_status='" . htmlspecialchars($_POST['off_case_status']) . "',
                admin_update='" . $_SESSION['ukey'] . "',
                date_update='" . htmlspecialchars($_POST['date_off_case']) . "',
                time_update='" . date("H:i:s") . "'", //เพิ่ม เวลา
                "ticket='" . htmlspecialchars($_POST['card_key']) . "'"
            );

            $getdata->my_sql_insert(
                $connect,
                "problem_comment",
                "card_status='" . htmlspecialchars($_POST['off_case_status']) . "',
                admin_update='" . $_SESSION['ukey'] . "',
                comment='" . htmlspecialchars($_POST['comment']) . "',
                date ='" . date("Y-m-d H:i:s") . "',
                ticket='" . htmlspecialchars($_POST['card_key']) . "'"
            );

            // ส่งข้อมูลเข้าไลน์
            $ticket = $_POST['ticket'];
            $name_user = $_POST['name_user'];
            $other = $_POST['comment'];
            $date_send = date('d/m/Y');

            $line_token = $getalert->alert_line_token; // Token
            $line_text = "
                 /*** Please Check Again ***/
                 ------------------------
                 Ticket : {$ticket}
                 ------------------------
                 {$name_user}
                 ------------------------
                 รายละเอียด : {$other}
    
                 วันที่ : {$date_send}
                 Link : " . @urllink() . "
                 ";

            lineNotify($line_text, $line_token); // เรียกใช้ Functions line

            $alert = $success;
            //echo "<META HTTP-EQUIV='Refresh' CONTENT = '1; URL='" . $SERVER_NAME . "'>";
        } else {
            $alert = $warning;
            //echo "<META HTTP-EQUIV='Refresh' CONTENT = '2; URL='" . $SERVER_NAME . "'>";
        }
    }
} else {
    $alert = $warning;
}
if (isset($_POST['save_editcase'])) {
    if (htmlspecialchars($_POST['ticket']) != NULL && htmlspecialchars($_POST['se_asset']) != NULL) {

        if (!defined('pic')) {
            if (!defined('pic')) {
                define('pic', '../resource/it/delevymo/');
            }
            if (is_uploaded_file($_FILES['pic']['tmp_name'])) {
                $remove_charname = array(' ', '`', '"', '\'', '\\', '/', '_');
                $pic = str_replace($remove_charname, '', $_FILES['pic']['name']);
                $fixname_pic = $_POST['card_key'] . '-after-' . $pic;
                $File_tmpname = $_FILES['pic']['tmp_name'];
                if (move_uploaded_file($File_tmpname, (pic . $fixname_pic)));
                resizepic($pic, $fixname_pic);
                $getdata->my_sql_update($connect, 'problem_list', "pic_before ='" . $fixname_pic . "'", "ticket='" . htmlspecialchars($_POST['card_key']) . "'");
            }
        } else {
            $editpic = $_POST['pic_log'];
            $getdata->my_sql_update($connect, 'problem_list', "pic_before ='" . $editpic . "'", "ticket='" . htmlspecialchars($_POST['card_key']) . "'");
        }


        $getdata->my_sql_update(
            $connect,
            "problem_list",
            "se_asset = '" . htmlspecialchars($_POST['se_asset']) . "',
            se_id = '" . htmlspecialchars($_POST['se_id']) . "',
            se_li_id = '" . htmlspecialchars($_POST['se_li']) . "',
            se_other = '" . htmlspecialchars($_POST['other']) . "',
      admin_edit='" . $name_key . "'", //เพิ่ม เวลา
            "ticket='" . htmlspecialchars($_POST['card_key']) . "'"
        );


        $alert = $success;
    } else {
        $alert = $warning;
    }
}

if (isset($_POST['save_approve'])) {
    if (!empty($_POST['approve_status'])) {
        // $getApproveDep = in_array($_POST['se_id'], ['13', '16']) ? 'HR' : 'IT';

        if ($_POST['approve_status'] == "Y") {
            if (in_array($_POST['se_id'], ['13', '16'])) {
                $getFlag = 'wait_approve_hr';
            } else {
                $getFlag = 'approve_mg';
            }
        } else {
            $getFlag = $_POST['approve_status'];
        }

        if ($_POST['approve_status'] == 'Y') {
            $status = 'อนุมัติดำเนินงานแจ้ง';
        } else {
            $status = @cardStatus_for_line($_POST['approve_status']);
        }
        
        // $getFlag = $_POST['approve_status'] == "Y" ? 'approve_mg' : $_POST['approve_status'];
        $getdata->my_sql_update(
            $connect,
            "problem_list",
            "card_status='" . $getFlag . "',
            manager_approve_status = 'Y',
            admin_update = '" . $name_key . "',
      date_update='" . date("Y-m-d") . "',
      time_update='" . date("H:i:s") . "'", //เพิ่ม เวลา
            "ticket='" . htmlspecialchars($_POST['card_key']) . "'"
        );

        $getdata->my_sql_insert(
            $connect,
            "problem_comment",
            "card_status='" . htmlspecialchars($getFlag) . "',
      admin_update='" . $name_key . "',
      comment='" . htmlspecialchars($_POST['comment']) . " - ".$status."จากผู้บังคับบัญชา',
      date ='" . date("Y-m-d H:i:s") . "',
      ticket='" . htmlspecialchars($_POST['card_key']) . "'"
        );


        $remove_charname = array('&', '!', '"', '%', 'amp;', 'quot;');
        // ส่งข้อมูลเข้าไลน์
        $ticket = $_POST['ticket'];
        $name_admin = $_POST['admin'];
        
        // $status = $_POST['off_case_status'];
        $date_send = date('d/m/Y');
        $time_send = date("H:i");
        $namecall = $_POST['namecall'];
        $location = $_POST['location'];
        $detail = $_POST['detail'];
        $service = prefixConvertorService($_POST['se_id']);
        $problem = prefixConvertorServiceList($_POST['se_li']);

        $line_token = $getalert->alert_line_token; // Token
        $line_text = "
         /*** $status จากผู้บังคับบัญชา ***/
         ------------------------
         Ticket : $ticket
         ------------------------
         ผู้ดำเนินการ : $name_admin
         สถานะ :  $status 
         ผู้แจ้ง : " . @getemployee($namecall) . "
         สาขา : $location
         ------------------------
         หมวดหมู่ : " . str_replace($remove_charname, '', $service) . " 
         รายการ : " . str_replace($remove_charname, '', $problem) . "
         รายละเอียด : $detail
         ------------------------
         วันที่: {$date_send}
         เวลา: {$time_send}
         ";

        lineNotify($line_text, $line_token); // เรียกใช้ Functions line

        $alert = $success;
    }
}

if (isset($_POST['save_approve_cctv'])) {
    if (!empty($_POST['approve_status'])) {
        $getFlag = $_POST['approve_status'] == "Y" ? 'work_cctv' : $_POST['approve_status'];
        $getdata->my_sql_update(
            $connect,
            "problem_list",
            "card_status='" . $getFlag . "',
            work_flag = '" . $getFlag . "',
            admin_update = '" . $name_key . "
      date_update='" . date("Y-m-d") . "',
      time_update='" . date("H:i:s") . "'", //เพิ่ม เวลา
            "ticket='" . htmlspecialchars($_POST['card_key']) . "'"
        );

        $getdata->my_sql_insert(
            $connect,
            "problem_comment",
            "card_status='" . htmlspecialchars($getFlag) . "',
      admin_update='" . $name_key . "',
      comment='" . htmlspecialchars($_POST['comment']) . " - อนุมัติจาก Support Manager',
      date ='" . date("Y-m-d H:i:s") . "',
      ticket='" . htmlspecialchars($_POST['card_key']) . "'"
        );


        // ส่งข้อมูลเข้าไลน์
        $ticket = $_POST['ticket'];
        $name_admin = $_POST['admin'];
        if ($_POST['approve_status'] == 'Y') {
            $status = 'อนุมัติดำเนินงานประเภท CCTV';
        } else {
            $status = @cardStatus_for_line($_POST['approve_status']);
        }
        // $status = $_POST['off_case_status'];
        $date_send = date('d/m/Y');
        $time_send = date("H:i");
        $namecall = $_POST['namecall'];
        $location = $_POST['location'];
        $detail = $_POST['detail'];
        $service = $_POST['se_id'];
        $problem = $_POST['se_li_id'];
        $line_token = $getalert->alert_line_token; // Token
        $line_text = "
         /*** อนุมัติจาก Support Manager ***/
         ------------------------
         Ticket : $ticket
         ------------------------
         ผู้ดำเนินการ : $name_admin
         สถานะ :  $status 
         ผู้แจ้ง : " . @getemployee($namecall) . "
         สาขา : $location
         ------------------------
         หมวดหมู่ : " . @prefixConvertorService($service) . " 
         รายการ : " . prefixConvertorServiceList($problem) . "
         รายละเอียด : $detail
         ------------------------
         วันที่: {$date_send}
         เวลา: {$time_send}
         ";

        lineNotify($line_text, $line_token); // เรียกใช้ Functions line

        $alert = $success;
    }
}

if (isset($_POST['save_checkwork'])) {
    if (!empty($_POST['checkwork_status'])) {
        // $getFlag = $_POST['checkwork_status'] == "Y" ? "fe8ae3ced9e7e738d78589bf6610c4da" : 'reject';

        if ($_POST['checkwork_status'] == 'Y') {
            $getFlag = "wait_checkwork";
            $status = 'ผ่านการตรวจสอบจาก Support Manager';
            $detail = $_POST['comment'] . ' - ' . $status;
        } else {
            $getFlag = 'reject';
            $status = 'ไม่ผ่านการตรวจสอบจาก Support Manager';
            $detail = $_POST['comment'] . ' - ' . $status;
        }
        $getdata->my_sql_update(
            $connect,
            "problem_list",
            "card_status='" . $getFlag . "'",
            "ticket='" . htmlspecialchars($_POST['card_key']) . "'"
        );

        $getdata->my_sql_insert(
            $connect,
            "problem_comment",
            "card_status='" . $getFlag . "',
      admin_update='" . $name_key . "',
      comment='" . $detail . "',
      date ='" . date("Y-m-d H:i:s") . "',
      ticket='" . htmlspecialchars($_POST['card_key']) . "'"
        );


        // ส่งข้อมูลเข้าไลน์
        $ticket = $_POST['ticket'];
        $name_admin = $_POST['admin'];

        // $status = $_POST['off_case_status'];
        $date_send = date('d/m/Y');
        $time_send = date("H:i");
        $namecall = $_POST['namecall'];
        $location = $_POST['location'];
        $detail = $_POST['detail'];
        $line_token = $getalert->alert_line_token; // Token
        $line_text = "
         /*** " . $status . " ***/
         ------------------------
         Ticket : $ticket
         ------------------------
         ผู้ดำเนินการ : $name_admin
         สถานะ :  $status 
         ผู้แจ้ง : " . @getemployee($namecall) . "
         สาขา : $location
         รายละเอียด : $detail
         ------------------------
         วันที่: {$date_send}
         เวลา: {$time_send}
         ";

        lineNotify($line_text, $line_token); // เรียกใช้ Functions line

        $alert = $success;
    }
}

if (isset($_POST['save_checkwork_user'])) {
    if (!empty($_POST['checkwork_user'])) {
        if ($_POST['checkwork_user'] == 'Y') {
            $getFlag = "fe8ae3ced9e7e738d78589bf6610c4da";
            $status = 'ผ่านการตรวจแล้วสอบจากผู้ใช้งาน';
            $detail = $_POST['comment'] . ' - ' . $status;
            $work_flag = 'work_success';
        } else {
            $getFlag = 'reject';
            $status = 'ไม่ผ่านการตรวจสอบจากผู้ใช้งาน';
            $detail = $_POST['comment'] . ' - ' . $status;
            $work_flag = 'work_reject';
        }
        $getdata->my_sql_update(
            $connect,
            "problem_list",
            "card_status='" . $getFlag . "',
            work_flag = '" . $work_flag . "'",

            "ticket='" . htmlspecialchars($_POST['card_key']) . "'"
        );

        $getdata->my_sql_insert(
            $connect,
            "problem_comment",
            "card_status='" . $getFlag . "',
      admin_update='" . $name_key . "',
      comment='" . $detail . "',
      date ='" . date("Y-m-d H:i:s") . "',
      ticket='" . htmlspecialchars($_POST['card_key']) . "'"
        );


        // ส่งข้อมูลเข้าไลน์
        $ticket = $_POST['ticket'];
        $name_admin = $_POST['admin'];

        // $status = $_POST['off_case_status'];
        $date_send = date('d/m/Y');
        $time_send = date("H:i");
        $namecall = $_POST['namecall'];
        $location = $_POST['location'];
        $detail = $_POST['detail'];
        $line_token = $getalert->alert_line_token; // Token
        $line_text = "
         /*** " . $status . " ***/
         ------------------------
         Ticket : $ticket
         ------------------------
         ผู้ดำเนินการ : $name_admin
         สถานะ :  $status 
         ผู้แจ้ง : " . $namecall . "
         สาขา : $location
         รายละเอียด : $detail
         ------------------------
         วันที่: {$date_send}
         เวลา: {$time_send}
         ";

        lineNotify($line_text, $line_token); // เรียกใช้ Functions line

        $alert = $success;
    }
}

if (isset($_POST['save_approve_hr'])) {
    if (!empty($_POST['approve_status'])) {
        // $getFlag = $_POST['approve_status'] == "Y" ? null : $_POST['approve_status'];
        $getFlag = $_POST['approve_status'] == "Y" ? 'work_hr' : $_POST['approve_status'];

        $getdata->my_sql_update(
            $connect,
            "problem_list",
            "card_status='" . $getFlag . "',
            manager_approve_status = 'Y',
            approve_department = 'HR',
            work_flag = 'work_hr',
            admin_update = '" . $name_key . "',
      date_update='" . date("Y-m-d") . "',
      time_update='" . date("H:i:s") . "'", //เพิ่ม เวลา
            "ticket='" . htmlspecialchars($_POST['card_key']) . "'"
        );

        $getdata->my_sql_insert(
            $connect,
            "problem_comment",
            "card_status='" . htmlspecialchars($getFlag) . "',
      admin_update='" . $name_key . "',
      comment='" . htmlspecialchars($_POST['comment']) . " - อนุมัติจาก HR',
      date ='" . date("Y-m-d H:i:s") . "',
      ticket='" . htmlspecialchars($_POST['card_key']) . "'"
        );


        // ส่งข้อมูลเข้าไลน์
        $ticket = $_POST['ticket'];
        $name_admin = $_POST['admin'];
        $status = $_POST['off_case_status'];
        $date_send = date('d/m/Y');
        $time_send = date("H:i");
        $namecall = $_POST['namecall'];
        $location = $_POST['location'];
        $detail = $_POST['detail'];
        $line_token = $getalert->alert_line_token; // Token
        $line_text = "
         /*** อนุมัติจาก HR ***/
         ------------------------
         Ticket : $ticket
         ------------------------
         ผู้ดำเนินการ : $name_admin
         สถานะ :  อนุมัติจาก HR
         ผู้แจ้ง : " . @getemployee($namecall) . "
         สาขา : $location
         รายละเอียด : $detail
         ------------------------
         วันที่: {$date_send}
         เวลา: {$time_send}
         ";

        lineNotify($line_text, $line_token); // เรียกใช้ Functions line

        $alert = $success;
    }
}

if (isset($_POST['save_reopen_case'])) {
    if (!empty($_POST['reopen_case'])) {
        if ($_POST['reopen_case'] == 'Y') {
            $getFlag = "wait_approve";
            $status = 'แจ้งดำเนินงานจากผู้ใช้งานอีกครั้ง';
            $detail = $_POST['comment'] . ' - ' . $status;
            $work_flag = 'work_success';
        } else {
            $getFlag = null;
            $status = 'ยกเลิกงาน';
            $detail = $_POST['comment'] . ' - ' . $status;
            $work_flag = '';
        }
        $getdata->my_sql_update(
            $connect,
            "problem_list",
            "card_status='" . $getFlag . "',
            work_flag = '" . $work_flag . "'",

            "ticket='" . htmlspecialchars($_POST['card_key']) . "'"
        );

        $getdata->my_sql_insert(
            $connect,
            "problem_comment",
            "card_status='" . $getFlag . "',
      admin_update='" . $name_key . "',
      comment='" . $detail . "',
      date ='" . date("Y-m-d H:i:s") . "',
      ticket='" . htmlspecialchars($_POST['card_key']) . "'"
        );


        // ส่งข้อมูลเข้าไลน์
        $ticket = $_POST['ticket'];
        $name_admin = $_POST['admin'];

        // $status = $_POST['off_case_status'];
        $date_send = date('d/m/Y');
        $time_send = date("H:i");
        $namecall = $_POST['namecall'];
        $location = $_POST['location'];
        $detail = $_POST['detail'];
        $line_token = $getalert->alert_line_token; // Token
        $line_text = "
         /*** " . $status . " ***/
         ------------------------
         Ticket : $ticket
         ------------------------
         สถานะ :  $status 
         ผู้แจ้ง : " . $namecall . "
         สาขา : $location
         รายละเอียด : $detail
         ------------------------
         วันที่: {$date_send}
         เวลา: {$time_send}
         ";

        lineNotify($line_text, $line_token); // เรียกใช้ Functions line

        $alert = $success;
    }
}
