<?php
$getalert = $getdata->my_sql_query($connect, NULL, "system_alert", NULL);
$card_detail2 = $getdata->my_sql_select($connect, NULL, "card_info", "card_key <> 'hidden' AND card_delete ='1'");
while ($showdate = mysqli_fetch_object($card_detail2)) {
    $getdate_start = dateOnlyConvertor($showdate->card_date_ex);
    $getdate_end = dateOnlyConvertor($showdate->card_date_ex);
    $day_use = (int)datediff($getdate_start, $getdate_end) + 1;
    $date_total = 365 - $day_use;

    $originalDate = $showdate->card_date_ex;
    $newDate1 = date("d-m-Y", strtotime($originalDate));

    $originalDate2 = $showdate->card_date_ex;
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

    if ($date_current == 30 || $date_current == 15 || $date_current == 7 || $date_current == 5 || $date_current == 3 || $date_current == 2 || $date_current == 1) {
        // ส่งข้อมูลเข้าไลน์
        $getcheck = $getdata->my_sql_show_rows($connect, "card_for_ex", "card_info_key = '" . $showdate->card_key . "' AND card_date_ex = '" . $showdate->card_date_ex . "'");
        if ($getcheck == 0) {
            $getdata->my_sql_insert(
                $connect,
                "card_for_ex",
                "card_info_key='" . $showdate->card_key . "',
                card_date_ex = '" . $showdate->card_date_ex . "'"
            );

            $line_token = $getalert->alert_line_token; // Token
            $line_text = "
                ---------- ระยะเวลาการรับประกันใกล้สิ้นสุด ----------
รหัสสินทรัพย์ : $showdate->asset_code
อุปกรณ์ : " . @prefixConvertorequipment($showdate->card_equipment) . "
ยี่ห้อ : $showdate->card_brand
Model : $showdate->card_model
Serial : $showdate->card_serial
วันที่หมดประกัน :  " . @dateConvertor($showdate->card_date_ex) . "
ขณะนี้คงเหลือวันรับประกันอีก : $date_current วัน
Link: " . @urllink() . "
                ";

            lineNotify($line_text, $line_token); // เรียกใช้ Functions line
        }
    }
}
