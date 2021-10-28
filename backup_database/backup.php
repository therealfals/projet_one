<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
if (!isset($_SESSION["username"]) && !isset($_SESSION["password"])){
    header('Location:home.php');

}
$dbhost = 'localhost';
$dbuser = $_SESSION['username'];
$dbpass = $_SESSION['password'];
//$dbname = 'gdi';
//$tables = '*';

require_once 'fonctions.php';
if (!empty($_GET['table']) && !empty($_GET['db'])){
    backup_tables($dbhost, $dbuser, $dbpass, $_GET['db'], $_GET['table']);
}
if (empty($_GET['table']) && !empty($_GET['db'])){
    backup_tables($dbhost, $dbuser, $dbpass, $_GET['db'],"*");
}

