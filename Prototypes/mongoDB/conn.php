<?php
$serverName = "localhost";
$uid = "bramb";
$pwd = "bramb";
$databaseName = "MongoDB";

$connectionInfo = array("UID" => $uid, "PWD" => $pwd, "Database" => $databaseName);
$conn = sqlsrv_connect($serverName, $connectionInfo);

if(!$conn){
    echo"Connection failed";
    die();
}