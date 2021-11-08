<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
if (!isset($_SESSION["username"]) && !isset($_SESSION["password"])){
    header('Location:index.php');

}
$dbhost =  $_SESSION['server'];
$dbuser = $_SESSION['username'];
$dbpass = $_SESSION['password'];
//$dbname = 'gdi';
//$tables = '*';

require_once 'fonctions.php';
if (!empty($_GET['table']) && !empty($_GET['db'])){
    $size=0;
    $tab=array_values($_GET);
    for ($i=3;$i<(count($_GET)-1);$i++){

        $size++;
        $result=backup_tables($dbhost, $dbuser, $dbpass, $_GET['db'],  $tab["$i"]);
        if($result['isOk']==true){
            $ok[]=$tab["$i"];
            //  echo $result["msg"];
        }
    }
    $_SESSION['msgSuccess']= "<div class='alert alert-success col-6 mx-auto'><h6 class='text-center'>Les tables ont été backupées avec succés! (".count($ok)."/$size)</h6></div>";
    echo "<script> window.history.back()</script>";

 }
if (empty($_GET['table']) && !empty($_GET['db'])){
    if (count($_GET)==2){
        $result=backup_tables($dbhost, $dbuser, $dbpass, $_GET['db'],"*");
        $_SESSION['msgSuccess']= "<div class='alert alert-success col-6 mx-auto'><h6 class='text-center'>La base a été backupée avec succés!</h6></div>";
        echo "<script> window.history.back()</script>";

        exit();

    }
    $ok=array();
    $size=0;
    $tab=array_values($_GET);
    for ($i=2;$i<(count($_GET)-1);$i++){
        $size++;
        $result=backup_tables($dbhost, $dbuser, $dbpass, $tab["$i"],"*");
        if($result['isOk']==true){
            $ok[]=$tab["$i"];
         }
    }
    $_SESSION['msgSuccess']= "<div class='alert alert-success col-6 mx-auto'><h6 class='text-center'>Les bases ont été backupées avec succés! (".count($ok)."/$size).</h6></div>";
    echo "<script> window.location.href='index.php'</script>";

    //var_dump($_GET);
    exit();
   }

