<div class="responsive-data-table">
    <table id="responsive-data-table-it" class="table dt-responsive hover" style="width:100%">
        <thead class="font-weight-bold text-center">
            <tr>
                <!-- <td>ลำดับ</td> -->
                <td>รหัสสินทรัพย์</td>
                <td>ผู้ใช้งาน</td>
                <td>แผนก</td>
                <td>สินทรัพย์ของบริษัท / สังกัด</td>
                <td>ผู้ครอบครองสินทรัพย์</td>

                <td>ชื่อเครื่อง</td>
                <td>อุปกรณ์</td>
                <td>ยี่ห้อ</td>
                <td>สถานะ</td>
                <td>ดำเนินการ</td>
            </tr>
        </thead>
        <tbody>

            <?php
            $l = 0;
            $getcard = $getdata->my_sql_select($connect, NULL, "card_info", "card_status IN ('4386e24965ef6e3b5751cd8f4e7b27db','ea7b77e8f805ee1ba69d5fd8515dea1b','968d42cbf280bc3c26103d31955bae59','5b93205f13e238f5a1904e095016e81f','876e933c13f11540337913cd5eba269e','64739b78967a299e92a4b49b8ae93015','02b5a3574052961b5336356a9a634d05') AND card_delete ='1' ORDER BY card_company ASC");
            while ($showcard = mysqli_fetch_object($getcard)) {
                $l++;
            ?>
                <tr>
                    <!-- <td class="text-center"><?php echo @$l; ?></td> -->
                    <td>
                        <?php
                        if (@$showcard->asset_code != NULL) {
                            echo @$showcard->asset_code;
                        } else {
                            echo '<span class="badge badge-warning">ไม่ระบุ</span>';
                        }
                        ?>
                    </td>
                    <td><?php echo @getemployee($showcard->card_customer_name); ?></td>
                    <td><?php echo @getemployee_department($showcard->card_customer_name); ?></td>
                    <td><?php echo @prefixConvertorCompany($showcard->card_company); ?></td>
                    <td><?php echo @$showcard->card_possess; ?></td>

                    <td><?php echo $showcard->card_note; ?></td>
                    <td><?php echo @prefixConvertorequipment($showcard->card_equipment); ?></td>
                    <td class="text-center"><?php echo $showcard->card_brand; ?></td>
                    <td><?php echo @cardStatus($showcard->card_status); ?></td>
                    <?php if (@$_SESSION['uclass'] == 3 || @$_SESSION['uclass'] == 2) { ?>
                        <td>
                            <a href="?p=asset_it_create_detail&key=<?php echo @$showcard->card_key; ?>" class="btn btn-sm btn-outline-success" data-toggle="toptitle" data-placement="top" title="ตรวจสอบ"><i class="fa fa-edit"></i></a>

                            <a href="asset_it/print_card.php?key=<?php echo @$showcard->card_key; ?>" target="_blank" class="btn btn-sm btn-outline-warning" data-toggle="toptitle" data-placement="top" title="พิมพ์เอกสาร"><i class="fa fa-print"></i></a>

                            <a href="asset_it/print_qr.php?key=<?php echo @$showcard->card_key; ?>" target="_blank" class="btn btn-sm btn-outline-info" data-toggle="toptitle" data-placement="top" title="พิมพ์ QR Code"><i class="fa fa-qrcode"></i></a>
                            <a href="?p=card_all_status&key=<?php echo @$showcard->card_key; ?>" target="_blank" class="btn btn-sm btn-outline-primary" data-toggle="toptitle" data-placement="top" title="ตรวจสอบ"><i class="fa fa-eye"></i></a>
                            <a href="#" onclick="deleteCard('<?php echo @$showcard->card_key; ?>');" class="btn btn-sm btn-outline-danger" data-toggle="toptitle" data-placement="top" title="ลบรายการนี้"><i class="fa fa-times"></i></a>
                        </td>
                    <?php } ?>

                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>