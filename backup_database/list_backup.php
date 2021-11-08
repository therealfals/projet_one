<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
if (!isset($_SESSION["username"]) && !isset($_SESSION["password"])){
    header('Location:index.php');

}?>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<?php if (!isset($_GET['table']) && !isset($_GET['type'])){
    echo "<a href='index.php' class=\"m-2 mt-2 btn btn-warning rounded rounded-pill\" >Précédent</a>";
}elseif (!isset($_GET['table']) && isset($_GET['type'])){
    echo "<a href='traitement_db.php?dbname=".$_GET['db']."' class=\"m-2 mt-2 btn btn-warning rounded rounded-pill\" >Précédent</a>";

}else{
    echo "<a href=\"traitement_db.php?dbname=".$_GET['db']."\" class=\"m-2 mt-2 btn btn-warning rounded rounded-pill\" onclick=\"goBack()\">Précédent</a>";

}

    ?>
<a href="logout.php" class="m-2 mt-2 btn btn-danger rounded rounded-pill float-right" >Se deconnecter</a>

<script>
    function goBack() {
        window.history.back();
    }
</script>
<div class="row"><div class="col-4">
<?php
require_once 'fonctions.php';
$dbHost     =  $_SESSION['server'];
$dbUsername = $_SESSION['username'];
$dbPassword = $_SESSION['password'];
$dbName     = $_GET['db'];
require_once "menu.php" ;
echo '</div>';
if (!empty($_GET['action'])){
    if ($_GET['action'] == 'delete'){
        if (file_exists("sauvegarde/bases/".$_GET['link']."/".$_GET['file'])){
            unlink("sauvegarde/bases/".$_GET['link']."/".$_GET['file']);
            echo "<div class='alert  col-6 mx-auto alert-success'><h3 class='text-center'>Suppression traitée avec succes!</h3></div>";

        }else{
            echo "<div class='alert  col-6 mx-auto alert-danger'><h3 class='text-center'>Fichier de sauvegarde inexistant!</h3></div>";

        }
        // echo "<a href='#'>Retout a la liste</a>";

    }
    if ($_GET['action'] =='restore') {

        $filePath   = "sauvegarde/bases/".$_GET['link']."/".$_GET['file'];
        $success=restoreDatabaseTables($dbHost, $dbUsername, $dbPassword, $dbName, $filePath);
        if ($success===true){
            if($_GET['type'] == 'db'){
                echo "<br><div class='alert alert-success col-6 mx-auto'><h4 class='text-center '>La base <strong>$dbName</strong> a été restaurée avec succés</h4></div>";

            }else{
                echo "<br><div class='alert alert-success col-6 mx-auto'><h4 class='text-center '>La table <strong>".$_GET['table']." </strong>de la base <strong>$dbName</strong> a été restaurée avec succés</h4></div>";

            }
        }else{
            echo "<br><div class='alert alert-danger col-6 mx-auto'><h4 class='text-center'>Erreur lors de la restauration</h4><p>$success</p></div>";

        }
    }
}

if (!empty($_GET['table']) && !empty($_GET['db']) && isset($_GET['type'])){
    if (isset($_GET['type'])){
        $type=$_GET['type']=='db'?"base de donnée":"table";
        $doss=$_GET['type']=='db'?"bases":"tables";
    }

    echo "<div class='col-8 mx-auto'><h3 class='text-center'>Liste des sauvegarges de la $type <strong>".$_GET['table']." </strong></h3>
 <table class='table table-striped'><thead><th>Date</th><th>Actions</th></thead><tbody>";
    $cpt=0;
    if (file_exists("sauvegarde/bases/".$_GET['db']."/$doss/".$_GET['table'])){

        if ($handle = opendir("sauvegarde/bases/".$_GET['db']."/$doss/".$_GET['table'])) {

            while (false !== ($entry = readdir($handle))) {
                if ($entry != "." && $entry != "..") {
                    $file=explode(".",$entry);
                    if ($file){
                        $cpt++;
                        $link=$_GET['db']."/$doss/".$_GET['table'];
                        echo "<tr><td>".date('d/m/Y à H:i:s', $file[0])." </td><td><a class='btn btn-sm btn-outline-warning' href='list_backup.php?action=restore&file=$entry&link=$link&db=".$_GET['db']."&table=".$_GET['table']."&type=".$_GET['type']."'>Restaurer</a> <a  class='btn btn-sm btn-outline-danger' href='list_backup.php?action=delete&file=$entry&link=$link&type=".$_GET['type']."'>Supprimer</a></td>";
                    }
                    // echo "$entry\n";
                }
            }

            closedir($handle);
        }
    }
    echo "</tbody></table>";

    if ($cpt == 0){
        echo "<h3 class='text-center text-danger'>Aucune sauvegarde pour l'instant!</h3>";

    }
    echo "</div>";

}
if (empty($_GET['table']) && !empty($_GET['db'])){
    echo "<div class='col-8 mx-auto'><h3 class='text-center'>Liste des sauvegarges de la base <strong>".$_GET['db']." </strong></h3>
 <table class='table table-striped'><thead><th>Date</th><th>Actions</th></thead><tbody>";
    $cpt=0;

    if (file_exists("sauvegarde/bases/".$_GET['db']."/bases/")){
$_GET['table']="";
        if (file_exists("sauvegarde/bases/".$_GET['db']."/bases/".$_GET['table'])){

        if ($handle = opendir("sauvegarde/bases/".$_GET['db']."/bases/".$_GET['table'])) {

            while (false !== ($entry = readdir($handle))) {
                if ($entry != "." && $entry != "..") {
                    $file=explode(".",$entry);
                    if ($file){
                        $cpt++;
                        $link=$_GET['db']."/bases";
                        echo "<tr><td>".date('d/m/Y à H:i:s', $file[0])."</td><td> <a class='btn btn-sm btn-outline-warning' href='list_backup.php?action=restore&file=$entry&link=$link&db=".$_GET['db']."&type=db'>Restaurer</a> <a style='margin-left: 5px !important;' class='btn btn-sm btn-outline-danger' href='list_backup.php?action=delete&file=$entry&link=$link&type=db'>Supprimer</a></td>";
                    }
                    // echo "$entry\n";
                }
            }

            closedir($handle);
        }
        }
        echo "</tbody></table>";

    }
    if ($cpt == 0){
        echo "<h3 class='text-center text-danger'>Aucune sauvegarde pour l'instant!</h3>";

    }
    echo "</div>";

}


?>
</div>
</body>
</html>
