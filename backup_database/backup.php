<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
if (!isset($_SESSION["username"]) && !isset($_SESSION["password"])){
    header('Location:servers.php');

}
$dbhost =  $_SESSION['username'];
$dbuser = $_SESSION['username'];
$dbpass = $_SESSION['password'];
//$dbname = 'gdi';
//$tables = '*';

require_once 'fonctions.php';
if (!empty($_GET['table']) && !empty($_GET['db'])){
    $result=backup_tables($dbhost, $dbuser, $dbpass, $_GET['db'], $_GET['table']);
    if($result['isOk']==true){
        echo $result["msg"];
    }
}
if (empty($_GET['table']) && !empty($_GET['db'])){
    $result=backup_tables($dbhost, $dbuser, $dbpass, $_GET['db'],"*");
    if($result['isOk']==true){
        echo $result["msg"];
    }
}

