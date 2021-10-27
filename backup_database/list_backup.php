<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
require_once 'fonctions.php';
if (!empty($_GET['table']) && !empty($_GET['db'])){
    echo "<h6>Liste des sauvegarges de la table <strong>".$_GET['table']." </strong></h6>";
    if (file_exists("sauvegarde/bases/".$_GET['db']."/tables/".$_GET['table'])){

        if ($handle = opendir("sauvegarde/bases/".$_GET['db']."/tables/".$_GET['table'])) {

            while (false !== ($entry = readdir($handle))) {
                if ($entry != "." && $entry != "..") {
                    $file=explode(".",$entry);
                    if ($file){
                        $link=$_GET['db']."/tables/".$_GET['table'];
                        echo date('d/m/Y à H:i:s', $file[0])." <a href='list_backup.php?action=restore&file=$entry&link=$link&db=".$_GET['db']."&table=".$_GET['table']."'>Restaurer</a> <a href='list_backup.php?action=delete&file=$entry&link=$link'>Supprimer</a>";
                        echo '<br>';
                    }
                    // echo "$entry\n";
                }
            }

            closedir($handle);
        }
    }
 }
if (empty($_GET['table']) && !empty($_GET['db'])){
    echo "<h6>Liste des sauvegarges de la base <strong>".$_GET['db']." </strong></h6>";
    if (file_exists("sauvegarde/bases/".$_GET['db']."/bases/")){
$_GET['table']="";
        if ($handle = opendir("sauvegarde/bases/".$_GET['db']."/bases/".$_GET['table'])) {

            while (false !== ($entry = readdir($handle))) {
                if ($entry != "." && $entry != "..") {
                    $file=explode(".",$entry);
                    if ($file){
                        $link=$_GET['db']."/tables/".$_GET['table'];
                        echo date('d/m/Y à H:i:s', $file[0])." <a href='list_backup.php?action=restore&file=$entry&link=$link&db=".$_GET['db']."'>Restaurer</a> <a href='list_backup.php?action=delete&file=$entry&link=$link'>Supprimer</a>";
                        echo '<br>';
                    }
                    // echo "$entry\n";
                }
            }

            closedir($handle);
        }
    }
 }


if (!empty($_GET['action'])){
    if ($_GET['action'] == 'delete'){
         unlink("sauvegarde/bases/".$_GET['link']."/".$_GET['file']);
        // echo "<a href='#'>Retout a la liste</a>";

    }
    if ($_GET['action'] =='restore') {
        $dbHost     = 'localhost';
        $dbUsername = $_SESSION['username'];
        $dbPassword = $_SESSION['password'];
        $dbName     = $_GET['db'];
        $filePath   = "sauvegarde/bases/".$_GET['link']."/".$_GET['file'];
        $success=restoreDatabaseTables($dbHost, $dbUsername, $dbPassword, $dbName, $filePath);
        if ($success==true){
            echo "<br>La table <strong>".$_GET['table']." </strong>de la base <strong>$dbName</strong> a été restaurée avec succés";
        }
     }
}
