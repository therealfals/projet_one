<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
$dbhost = 'localhost';
$dbuser = $_SESSION['username'];
$dbpass = $_SESSION['username'];
//$dbname = 'gdi';
//$tables = '*';

require_once 'fonctions.php';
if (!empty($_GET['table']) && !empty($_GET['db'])){
    backup_tables($dbhost, $dbuser, $dbpass, $_GET['db'], $_GET['table']);
}
if (empty($_GET['table']) && !empty($_GET['db'])){
    backup_tables($dbhost, $dbuser, $dbpass, $_GET['db'],"*");
}

