<?php
//headers
$data_headers = array(
    'Accept: application/json','api-key: ea670047974b650bbcba5dd759baf1ed','Content-Type: application/json'
);
//body
$data_body = array(
    'shipping_order' => array(
        'n_packages' => '1',
        'content_description' => 'ORDEN 5464564',
        'imported_id' => '255826267',
        'order_price' => '24509.0',
        'weight' => '0.98',
        'volume' => '1.0',
        'type' => 'delivery'
    ),
    'shipping_origin' => array(
        'warehouse_code' => '401'
    ),
    'shipping_destination' => array (
        'customer' => array (
            'name' => 'Bernardita Tapia Riquelme',
            'email' => 'b.tapia@outlook.com',
            'phone' => '977623070'
        ),
        'delivery_address' => array (
            'home_address' => array(
                'place' => 'Puente Alto',
                'full_address' => 'SAN HUGO 01324, Puente Alto, Puente Alto'
            )
        )
    ),
    'carrier' => array(
        'carrier_code' => "",
        'tracking_number' => ""
    )
);
//parser json body
$data_body = json_encode($data_body);
//init curl php
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, 'https://stage.api.enviame.io/api/s2/v2/companies/401/deliveries');
curl_setopt($ch, CURLOPT_POST, TRUE);
curl_setopt($ch, CURLOPT_HTTPHEADER, $data_headers);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data_body);
//get response
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
//create file & write file with response
$file_response_api = fopen("response_api.txt", "w");
fwrite($file_response_api, $res);
fclose($file_response_api);

print_r($res);
?>