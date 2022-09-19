<?php
require "conn.php";

$getTablesQuery = "SELECT name FROM SYSOBJECTS WHERE xtype = 'U'";
$getTables = sqlsrv_query($conn, $getTablesQuery);

function insertquote($value)
{
    return "$value";
}

while ($tables = sqlsrv_fetch_array($getTables, SQLSRV_FETCH_NUMERIC)) {
    $table = $tables[0];

    $tableHeadersQuery = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = N'$table'";
    $getTableHeaders = sqlsrv_query($conn, $tableHeadersQuery);

    $headers = [];
    while ($export = sqlsrv_fetch_array($getTableHeaders, SQLSRV_FETCH_NUMERIC)) {
        $headers[] = $export[0];
    }

    $getDataQuery = "SELECT * FROM " . $table;
    $csvName = $table . ".csv";
    $getData = sqlsrv_query($conn, $getDataQuery);

    $fp = fopen($csvName, 'wb');


    while ($export = sqlsrv_fetch_array($getData, SQLSRV_FETCH_NUMERIC)) {
        if (!isset($headings)) {
            $headings = $headers;
            fputcsv($fp, $headings, ',', '"');
        }
        fputcsv($fp, array_map("insertquote", $export), ',', '"');
    }
    fclose($fp);
    unset($headings);

    exec('mongoimport --host localhost --port 27017 --db testing --collection ' . $table .
        ' --file ' . $csvName . ' --type csv --headerline --drop');

    unlink($csvName);
}

if ($http_response_header == 200){
    echo 'successful';
} else {
    echo $http_response_header . 'Er is iets fout gegaan';
}