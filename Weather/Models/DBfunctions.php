<?php
function selectCity(){
 try{
 $db = new PDO('mysql:host=localhost;dbname=weather;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT city_name FROM cities");
$sth->execute();

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}


function selectCityId($city_name){
 try{
 $db = new PDO('mysql:host=localhost;dbname=weather;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT city_id FROM cities WHERE city_name=?");
$sth->execute(array($city_name));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}

function selectPeriod(){
 try{
 $db = new PDO('mysql:host=localhost;dbname=weather;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT period_name FROM period");
$sth->execute();

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}

function selectPeriodLength($period_name){
 try{
 $db = new PDO('mysql:host=localhost;dbname=weather;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT period_length FROM period WHERE period_name=?");
$sth->execute(array($period_name));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}

function insertForecast($control_id,$city_name,$date_raw,$tempk,$wind_knot,$humidity,$f_condition){
 try{
 $db = new PDO('mysql:host=localhost;dbname=weather;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

 $query = $db->prepare("INSERT INTO forecasts SET control_id=?,city_name=?,date_raw=?,tempk=?,wind_knot=?,humidity=?,f_condition=?");
 $result=$query->execute(array($control_id,$city_name,$date_raw,$tempk,$wind_knot,$humidity,$f_condition));
}

function selectDateControl($city_name,$control_id){
 try{
 $db = new PDO('mysql:host=localhost;dbname=weather;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT date_raw FROM forecasts WHERE city_name=? AND control_id=?");
$sth->execute(array($city_name,$control_id));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}

function updateForecast($control_id,$city_name,$date_raw,$tempk,$wind_knot,$humidity,$f_condition,$city_name2,$control_id2){
 try{
 $db = new PDO('mysql:host=localhost;dbname=weather;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

 $query = $db->prepare("UPDATE forecasts SET control_id=?,city_name=?,date_raw=?,tempk=?,wind_knot=?,humidity=?,f_condition=? WHERE city_name=? AND control_id=?");
 $result=$query->execute(array($control_id,$city_name,$date_raw,$tempk,$wind_knot,$humidity,$f_condition,$city_name2,$control_id2));
}

function selectTemp($city_name){
 try{
 $db = new PDO('mysql:host=localhost;dbname=weather;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT tempk FROM forecasts WHERE city_name=?");
$sth->execute(array($city_name));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}

function selectWind($city_name){
 try{
 $db = new PDO('mysql:host=localhost;dbname=weather;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT wind_knot FROM forecasts WHERE city_name=?");
$sth->execute(array($city_name));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}

function selectDate($city_name){
 try{
 $db = new PDO('mysql:host=localhost;dbname=weather;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT date_raw FROM forecasts WHERE city_name=?");
$sth->execute(array($city_name));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}

function selectHumidity($city_name){
 try{
 $db = new PDO('mysql:host=localhost;dbname=weather;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT humidity FROM forecasts WHERE city_name=?");
$sth->execute(array($city_name));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}

function selectCondition($city_name){
 try{
 $db = new PDO('mysql:host=localhost;dbname=weather;charset=utf8','root','');
 }catch(PDOException $e){
 echo 'Hata: '.$e->getMessage();
 }   

$sth = $db->prepare("SELECT f_condition FROM forecasts WHERE city_name=?");
$sth->execute(array($city_name));

$result = $sth->fetchAll(\PDO::FETCH_ASSOC);
 return $result;
}