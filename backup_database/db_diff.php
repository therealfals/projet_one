<?php
echo "<h6>Liste des sauvegarges de la base <strong>".$_GET['db']." </strong></h6>";
if ($handle = opendir($_GET['db']."/bases")) {

    while (false !== ($entry = readdir($handle))) {
        if ($entry != "." && $entry != "..") {
            $file=explode(".",$entry);
            if ($file){
                $link=$_GET['db']."/".$_GET['table'];
                echo date('d/m/Y à H:i:s', $file[0])." <a href='list_backup.php?action=restore&file=$entry&link=$link&db=".$_GET['db']."&table=".$_GET['table']."'>Restaurer</a> <a href='list_backup.php?action=delete&file=$entry&link=$link'>Supprimer</a>";
            }
            // echo "$entry\n";
        }
    }

    closedir($handle);
}
var_dump($_POST);
