<!DOCTYPE html>
<html>
<head>
<style>
.flex-container {
  display: flex;
  flex-direction: row;
  background-color: DodgerBlue;
  display:inline-block;
  width:24%;
 margin-left: 4px;
 margin-bottom: 5px;
}

.flex-container > div {
  background-color: #f1f1f1;
  margin: 2px;
  padding: 1px;
  font-size: 15px;
  text-align: center;
}
</style>
</head>
<body>
    
  <?php   setlocale(LC_TIME, 'tr_TR');?>
<div>
<FORM action="http://localhost/weather/index.php" method="post">   
 <?php
echo "İl Seçiniz:&emsp;&emsp;";
include './Models/DBfunctions.php';
$result= selectCity();
echo '<select name="city_name">';
for($i=0;$i<count($result);$i++){
    echo '<option>'.$result[$i]["city_name"].'</option>';
}
echo '</select>'; 
echo "&emsp;&emsp;";

echo "Periyot Seçiniz:&emsp;&emsp;";

$result_period= selectPeriod();
echo '<select name="period_name">';
for($i=0;$i<count($result);$i++){
    echo '<option>'.$result_period[$i]["period_name"].'</option>';
}
echo '</select>'; 
echo "&emsp;&emsp;";
?>
<input type="submit" value="Hava Durumunu Gör" name="submit" />
</form>
</div>
<br/>
 <?php
if(isset($_POST["submit"])){
    $period_name=$_POST["period_name"];
    $test_period= selectPeriodLength($period_name);
    $period_length=$test_period[0]["period_length"];
    $city_name=$_POST["city_name"];
    $test_city=selectCityId($city_name);
    $city_id=$test_city[0]["city_id"];
         
$url = 'http://volkansengul.com/havadurumu/detay.php';
$il_id=$city_id;
$app_id=md5('koray');
$ch = curl_init($url.'?city_id='.$il_id.'&app_id='.$app_id);
curl_setopt($ch, CURLOPT_TIMEOUT, 5);
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$data = curl_exec($ch);
curl_close($ch);
$result=json_decode($data);

$date_raw_curl=$result->list[0]->dt_txt;
$control_id=0;
$sonuc_control= selectDateControl($city_name,$control_id);
$date_raw_db=$sonuc_control[0]["date_raw"];



/* BİR SEFERLİK CURL'DEN GELEN DATALAR TÜM ŞEHİRLER İÇİN INSERT EDİLDİ.  
for($i=0;$i<40;$i++){
$control_id=$i;
$il_adi=$city_name;
$date_raw=$result->list[$i]->dt_txt;
$tempk= $result->list[$i]->main->temp;
$wind_knot=$result->list[$i]->wind->speed;
$humidity=$result->list[$i]->main->humidity;
$f_condition=$result->list[$i]->weather[0]->description;
insertForecast($control_id,$il_adi,$date_raw,$tempk,$wind_knot,$humidity,$f_condition);
}
*/


if ($date_raw_curl==$date_raw_db){
for($i=0;$i<$period_length;$i++){
setlocale(LC_TIME, 'tr_TR');   
$sonuc_temp=selectTemp($city_name);
$tempK=$sonuc_temp[$i]["tempk"];
$sonuc_wind=selectWind($city_name);
$wind_knot=$sonuc_wind[$i]["wind_knot"];
$wind=round(($wind_knot*1.852),0);
$sonuc_date= selectDate($city_name);
$date_raw=$sonuc_date[$i]["date_raw"];
$timestamp= strtotime($date_raw);
$date=strftime('%d %B %Y %A - %T',$timestamp);
$sonuc_humidity=selectHumidity($city_name);
$humidity=$sonuc_humidity[$i]["humidity"];
$sonuc_condition=selectCondition($city_name);
$condition=$sonuc_condition[$i]["f_condition"];
$tempC=round(($tempK-273),0);
echo "<div class='flex-container'>";
echo  "<div><p style='font-style:bold;font-size:17px'>İl: $city_name</p><p>Tarih-Saat: $date</p><p>Sıcaklık: $tempC °C</p><p>Rüzgar Hızı: $wind km/h</p><p>Nem: $humidity %</p><p>$condition</p></div>";
echo "</div>";
}
}else{
for($i=0;$i<$period_length;$i++){
setlocale(LC_TIME, 'tr_TR');
$tempK= $result->list[$i]->main->temp;
$wind_knot=$result->list[$i]->wind->speed;
$wind=round(($wind_knot*1.852),0);
$date_raw=$result->list[$i]->dt_txt;
$timestamp= strtotime($date_raw);
$date=strftime('%d %B %Y %A - %T',$timestamp);
$humidity=$result->list[$i]->main->humidity;
$condition=$result->list[$i]->weather[0]->description;
$tempC=round(($tempK-273),0);

echo "<div class='flex-container'>";
echo  "<div><p style='font-style:bold;font-size:17px'>İl: $city_name</p><p>Tarih-Saat: $date</p><p>Sıcaklık: $tempC °C</p><p>Rüzgar Hızı: $wind km/h</p><p>Nem: $humidity %</p><p>$condition</p></div>";
echo "</div>";
}
for($j=0;$j<40;$j++){
$control_id=$j;
$il_adi=$city_name;
$date_raw=$result->list[$j]->dt_txt;
$tempk= $result->list[$j]->main->temp;
$wind_knot=$result->list[$j]->wind->speed;
$humidity=$result->list[$j]->main->humidity;
$f_condition=$result->list[$j]->weather[0]->description;
updateForecast($control_id, $city_name, $date_raw, $tempk, $wind_knot, $humidity, $f_condition,$city_name,$control_id);
}
}
}


