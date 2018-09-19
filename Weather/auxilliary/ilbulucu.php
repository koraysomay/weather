<?php

$url = 'http://volkansengul.com/havadurumu/';
$il='istanbul';
$app_id=md5('koray');
$ch = curl_init($url.'?city='.$il.'&app_id='.$app_id);
curl_setopt($ch, CURLOPT_TIMEOUT, 5);
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$data = curl_exec($ch);
curl_close($ch);
$result=json_decode($data);

echo $result->main->temp;
