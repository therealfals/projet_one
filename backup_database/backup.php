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
    echo "Les tables ont été backupées avec succés! (".count($ok)."/$size)<button style='cursor: pointer;color:white;border-radius: 5px;height: 30px; border:solid 1px red;background-color: red;' onclick='goBack()'>Precedent</button>";

 }
if (empty($_GET['table']) && !empty($_GET['db'])){
    if (count($_GET)==2){
        $result=backup_tables($dbhost, $dbuser, $dbpass, $_GET['db'],"*");
        echo "La base a été backupée avec succés!<button style='cursor: pointer;color:white;border-radius: 5px;height: 30px; border:solid 1px red;background-color: red;' onclick='goBack()'>Precedent</button>";
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
        echo "Les bases ont été backupées avec succés! (".count($ok)."/$size).<button  style='cursor: pointer;color:white;border-radius: 5px;height: 30px; border:solid 1px red;background-color: red;' > <a style='text-decoration: none;color: white' href='servers.php'>Precedent</a></button>";
    //var_dump($_GET);
    exit();
   }

