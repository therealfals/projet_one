<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
if (!isset($_SESSION["username"]) && !isset($_SESSION["password"])){
    header('Location:servers.php');

}

$servername = $_SESSION['server'];
$username = $_SESSION['username'];
$password = $_SESSION['password'];

$conn = new PDO("mysql:host=$servername;dbname=".$_GET['db1'], $username, $password);
require_once "fonctions.php";
?>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<a href="index.php" class="m-2 mt-2 btn btn-warning rounded rounded-pill" onclick="goBack()">Précédent</a>
<a href="logout.php" class="m-2 mt-2 btn btn-danger rounded rounded-pill float-right" >Se deconnecter</a>

<script>
    function goBack() {
        window.history.back();
    }
</script>
<?php
if (isset($_POST['execute'])){
    if (!file_exists("sauvegarde/execute")) {
        mkdir("sauvegarde/execute",0777, true);
    }
    $fileName = time().'.sql';
    $handle = fopen("sauvegarde/execute/".$fileName,'w+');
    fwrite($handle, $_POST['diffDb']);
    if(fclose($handle)){

      //  restoreDatabaseTables($dbHost, $dbUsername, $dbPassword, $dbName, $filePath)
        $result=restoreDatabaseTables($servername, $username, $password, $_POST['db'], "sauvegarde/execute/$fileName");
if($result===true){
    echo "<div class='alert  col-6 mx-auto alert-success'><h3 class='text-center'>Requete éxécutée avec succes!</h3></div>";
}else{
    echo "<div class='alert  col-6 mx-auto alert-danger'><h3 class='text-center'> Erreur lors de l'execution de la requete </h3><p>$result</p></div>";

}
    }
    /*$connDiff = new PDO("mysql:host=$servername;dbname=".$_POST['db'], $username, $password);
    $query = $connDiff->prepare($_POST['diffDb']);
    $res=$query->execute();*/
 }
if (isset($_POST['backup'])){

    if (!file_exists("sauvegarde/dbdiff/".$_POST['dbs'])) {
        mkdir("sauvegarde/dbdiff/".$_POST['dbs'],0777, true);
    }
    $fileName =$_POST['dbs']."-";
    $fileName .= time().'.sql';
    $handle = fopen("sauvegarde/dbdiff/".$_POST['dbs']."/".$fileName,'w+');
    fwrite($handle, $_POST['diffDb']);
    if(fclose($handle)){
        echo "<div class='alert  col-6 mx-auto alert-success'><h3 class='text-center'>Backup éxécutée avec succes!</h3></div>";

        //  restoreDatabaseTables($dbHost, $dbUsername, $dbPassword, $dbName, $filePath)
      //  $result=restoreDatabaseTables($servername, $username, $password, $_POST['db'], "sauvegarde/execute/$fileName");
     /*   if($result===true){
        }else{
            echo "<div class='alert  col-6 mx-auto alert-danger'><h3 class='text-center'> Erreur lors de l'execution de la requete </h3><p>$result</p></div>";

        }*/
    }else{
        echo "<div class='alert  col-6 mx-auto alert-danger'><h3 class='text-center'>Erreur lors du backup!</h3></div>";

    }
}
?>

<?php
echo "<h3 class='text-center mb-5 mt-5'>Comparaison entre la base <strong>".$_GET['db1']." et ".$_GET['db2']." </strong> </h3>";


$conn= new PDO("mysql:host=$servername;dbname=".$_GET['db1'], $username, $password);

$query = $conn->prepare('show tables');
$query->execute();

$connDb2 = new PDO("mysql:host=$servername;dbname=".$_GET['db2'], $username, $password);
$queryDb2 = $connDb2->prepare('show tables');
$queryDb2->execute();
  $basesDb2=[];
$basesDb1=[];
while($rows = $query->fetch(PDO::FETCH_ASSOC)){
    $rows=array_values($rows);
    if( isset($rows[0])){
        $basesDb1[]=$rows[0];
       // echo "<tr><td>". $rows[0]."</td><td><a href='backup.php?table=$rows[0]&db=".$_GET['db1']."'>Faire un backup</a><a href='list_backup.php?table=$rows[0]&db=".$_GET['db1']."'>Voir les backup</a></td></tr>";
    }

}
while($rows = $queryDb2->fetch(PDO::FETCH_ASSOC)){
    $rows=array_values($rows);
    if( isset($rows[0])){
        $basesDb2[]=$rows[0];
       // echo "<tr><td>". $rows[0]."</td><td><a href='backup.php?table=$rows[0]&db=".$_GET['db1']."'>Faire un backup</a><a href='list_backup.php?table=$rows[0]&db=".$_GET['db1']."'>Voir les backup</a></td></tr>";
    }

}
$diffDb1="";
$diff=array_diff($basesDb1,$basesDb2);
 echo "<div class='row'>
<div  class='col-6 '><h5 class='text-center mb-2'>Liste des tables presentes dans <strong>".$_GET['db1']."</strong> et non dans la base <strong>".$_GET['db2']."</strong>  (".count($diff).")</h5><div style='height: 450px;'   class='overflow-auto'>";
if (count($diff)>0){
    echo "<ul>";
    foreach ($diff as $differences){
        echo  "<li>".$differences."</li>";
       $res=backup_tables($servername, $username, $password, $_GET['db1'],$differences);
        $diffDb1.= $res['sql'];

    }
    echo "</ul>";
}
echo "</div><form method='post'><input type='hidden' name='diffDb' value='$diffDb1'><input type='hidden' name='db' value='".$_GET['db2']."'><input type='hidden' name='dbs' value='".$_GET['db2']."-".$_GET['db1']."'>";
echo "<h3 class='text-center'>Requete Sql</h3><textarea rows='10' readonly class='form-control'>$diffDb1</textarea><div class='col-12 text-center mt-3 mb-5'><input type='submit' name='backup' value='Faire un backup' class='btn btn-outline-warning '>&nbsp;<input type='submit' value='Executer' name='execute'  class='btn btn-outline-danger'></div></div></form>";


$diff2=array_diff($basesDb2,$basesDb1);

$diffDb2="";
 echo "<div class='col-6'><h5 class='text-center mb-2'>Liste des tables présentes dans la base <strong>".$_GET['db2']."</strong> et non dans la base <strong>".$_GET['db1']."</strong> (".count($diff2).")</h5><div style='height: 450px;'   class='overflow-auto'> ";
if (count($diff2)>0){
    echo "<ul>";
    foreach ($diff2 as $differences){
        echo  "<li>".$differences."</li>";
        $res=backup_tables($servername, $username, $password, $_GET['db2'],$differences);
        $diffDb2.= $res['sql'];

    }
    echo "</ul>";
}

echo "</div><form method='post'><input type='hidden' name='diffDb' value='$diffDb2'><input type='hidden' name='db' value='".$_GET['db1']."'><input type='hidden' name='dbs' value='".$_GET['db1']."-".$_GET['db2']."'>";
echo "<h3 class='text-center'>Requete Sql</h3><textarea rows='10' readonly class='form-control'>$diffDb2</textarea><div class='col-12 text-center mt-3 mb-5'><input type='submit' name='backup' value='Faire un backup' class='btn btn-outline-warning '>&nbsp;<input type='submit' value='Executer' name='execute'  class='btn btn-outline-danger'></div></div></form></div>";


?>

</body>
</html>
