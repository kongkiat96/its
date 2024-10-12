<?php 
require '../../core/config.core.php';
require '../../core/connect.core.php';
require '../../core/functions.core.php';

$getdata = new clear_db();
$connect = $getdata->my_sql_connect(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

mysqli_set_charset($connect, "utf8");
date_default_timezone_set('Asia/Bangkok');
$system_info = $getdata->my_sql_query($connect, null, 'system_info', null);
$chk_case = $getdata->my_sql_query($connect, NULL, "problem_list", "ticket='" . htmlspecialchars($_GET['key']) . "'");
?>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <title>แบบฟอร์มใบงานฝ่าย IT</title>
    <style>
        body { 
            font-family: "THSarabunNew", sans-serif; 
            margin: 20px; 
            font-size: 14px;
        }
        .card { 
            border: 1px solid #28a745; 
            border-radius: 5px; 
            padding: 15px; 
        }
        .card-header { 
            background-color: #28a745; 
            color: white; 
            padding: 10px; 
            text-align: center; 
            margin-bottom: 15px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            text-align: end;
        }
        .text-highlight { 
            font-weight: bold; 
            font-size: 1.1em; 
            color: #000; 
        }
        .text-center { text-align: center; }
        .img-thumbnail { 
            border: 1px solid #ddd; 
            border-radius: 4px; 
            padding: 5px; 
            max-width: 40%;
            height: auto;
        }
        .footer-label { 
            margin-top: 30px; 
            text-align: center; 
        }
        .remark { 
            border-top: 1px solid #000; 
            padding-top: 10px; 
            margin-top: 20px; 
        }
        .signature-line {
            border-bottom: 1px solid #000;
            width: 80%;
            margin: 10px auto;
        }
    </style>
</head>
<body>
    <div class="card">
        <div class="card-header">
            <h3><b>แบบฟอร์มใบงานฝ่าย IT</b></h3>
        </div>
        <div class="card-body">
            <table>
                <tr>
                    <th>Ticket Number</th>
                    <td class="text-highlight">IT2024-09-19-W70</td>
                </tr>
                <tr>
                    <th>รหัสสินทรัพย์</th>
                    <td class="text-highlight">ASSET_CODE</td>
                </tr>
                <tr>
                    <th>ผู้แจ้ง</th>
                    <td class="text-highlight">REPORTER_NAME</td>
                </tr>
                <tr>
                    <th>วันที่แจ้งปัญหา</th>
                    <td class="text-highlight">REPORT_DATE</td>
                </tr>
                <tr>
                    <th>หมวดหมู่</th>
                    <td class="text-highlight">CATEGORY_NAME</td>
                </tr>
                <tr>
                    <th>ปัญหาที่พบ</th>
                    <td class="text-highlight">ISSUE_NAME</td>
                </tr>
                <tr>
                    <th>ชื่อผู้แจ้ง</th>
                    <td class="text-highlight">CALLER_NAME</td>
                </tr>
                <tr>
                    <th>สาขา</th>
                    <td class="text-highlight">BRANCH_NAME</td>
                </tr>
                <tr>
                    <th>รายละเอียดเพิ่มเติม</th>
                    <td class=""><?php echo $chk_case->se_other; ?></td>
                </tr>
                <tr>
                    <th>ผู้อนุมัติ</th>
                    <td class="text-highlight">APPROVER_NAME</td>
                </tr>
                <tr>
                    <th>รูปภาพก่อนแจ้ง</th>
                    <td class="text-center">
                        <img class="img-thumbnail" src="../../resource/it/file_pic_now/no-img.png" alt="รูปภาพก่อนแจ้ง">
                    </td>
                </tr>
            </table>
        </div>
        <div class="card-footer text-center footer-label">
            <div class="form-group">
                <div style="width: 50%; float: left;">
                    <label>ผู้ปฏิบัติงาน:</label>
                    <div class="signature-line" style="margin-top: 50px"></div>
                </div>
                <div style="width: 50%; float: right;">
                    <label>ผู้ขอใช้บริการ:</label>
                    <div class="signature-line" style="margin-top: 50px"></div>
                </div>
            </div>
            <div style="clear: both;"></div>
            <div class="remark">
                <label>หมายเหตุเพิ่มเติม:</label>
                <p style="border-bottom: 1px solid #000; padding-bottom: 20px;"></p>
            </div>
        </div>
    </div>
</body>
</html>