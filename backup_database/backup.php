<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
//$dbname = 'gdi';
//$tables = '*';

require_once 'fonctions.php';
if (!empty($_GET['table']) && !empty($_GET['db'])){
    backup_tables($dbhost, $dbuser, $dbpass, $_GET['db'], $_GET['table']);
}
if (empty($_GET['table']) && !empty($_GET['db'])){
    backup_tables($dbhost, $dbuser, $dbpass, $_GET['db'],"*");
}

