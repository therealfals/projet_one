<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
if (!isset($_SESSION["username"]) && !isset($_SESSION["password"])){
    header('Location:servers.php');

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
    echo "Les tables ont été backupées avec succés! (".count($ok)."/$size)";

  //  var_dump($_GET);
    exit();
    $result=backup_tables($dbhost, $dbuser, $dbpass, $_GET['db'], $_GET['table']);
    if($result['isOk']==true){
        echo $result["msg"];
    }
}
if (empty($_GET['table']) && !empty($_GET['db'])){
    $ok=array();
    $size=0;
    $tab=array_values($_GET);
    for ($i=2;$i<(count($_GET)-1);$i++){
        $size++;
        $result=backup_tables($dbhost, $dbuser, $dbpass, $tab["$i"],"*");
        if($result['isOk']==true){
            $ok[]=$tab["$i"];
          //  echo $result["msg"];
        }
    }
        echo "Les bases ont été backupées avec succés! (".count($ok)."/$size)";
    //var_dump($_GET);
    exit();
    unset($_GET[(count($_GET)-1)]);
    for ($i=2;$i<(count($_GET)-1);$i++){
        echo $_GET["db$i"]."<br>";
    }
    var_dump($_GET);exit();
    $result=backup_tables($dbhost, $dbuser, $dbpass, $_GET['db'],"*");
    if($result['isOk']==true){
        echo $result["msg"];
    }
}

