<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
if (!isset($_SESSION["username"]) && !isset($_SESSION["password"])){
    header('Location:index.php');

}

$servername = $_SESSION['server'];
$username = $_SESSION['username'];
$password = $_SESSION['password'];
require_once 'fonctions.php';
?>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<button class="m-2 mt-2 btn  btn-warning rounded rounded-pill" onclick="goBack()">Précédent</button>
<a href="logout.php" class="m-2 mt-2 btn btn-danger rounded rounded-pill float-right" >Se deconnecter</a>

<script>
    function goBack() {
        window.history.back();
    }
</script>

<?php
require_once 'menu.php';

if (isset($_POST['execute'])){
    $link = mysqli_connect($servername,$username,$password, $_GET['db']);
    $result = mysqli_query($link, $_POST['diffTb']);
   //  exit(mysqli_error($link));

}
if (isset($_POST['backup'])){

    if (!file_exists("sauvegarde/tbdiff/".$_POST['dbs'])) {
        mkdir("sauvegarde/tbdiff/".$_POST['dbs'],0777, true);
    }
    $fileName =$_POST['dbs']."-";
    $fileName .= time().'.sql';
    $handle = fopen("sauvegarde/tbdiff/".$_POST['dbs']."/".$fileName,'w+');
    fwrite($handle, $_POST['diffTb']);
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
echo "<h3  class='text-center mb-5 mt-5'>Comparaison entre les tables <strong>".$_GET['tb1']." et ".$_GET['tb2']." </strong> </h3>";

$servername = "localhost";
$username = $_SESSION['username'];
$password = $_SESSION['password'];
$conn = new PDO("mysql:host=$servername;dbname=".$_GET['db'], $username, $password);
$sql1="SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = '".$_GET['db']."' AND TABLE_NAME = '".$_GET['tb1']."'";

$query = $conn->prepare($sql1);
$query->execute();

$connDb2 = new PDO("mysql:host=$servername;dbname=".$_GET['db'], $username, $password);
$sql2="SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = '".$_GET['db']."' AND TABLE_NAME = '".$_GET['tb2']."'";

$queryDb2 = $connDb2->prepare($sql2);

$queryDb2->execute();
$basesDb2=[];
$basesDb1=[];
$tabTables=[];
 while($rows = $query->fetch(PDO::FETCH_ASSOC)){
    $rows=array_values($rows);
    if( isset($rows[0])){
        $tabTables[]=$rows[0];
        $basesDb1[]=$rows[0];
        // echo "<tr><td>". $rows[0]."</td><td><a href='backup.php?table=$rows[0]&db=".$_GET['db1']."'>Faire un backup</a><a href='list_backup.php?table=$rows[0]&db=".$_GET['db1']."'>Voir les backup</a></td></tr>";
    }

}
while($rows = $queryDb2->fetch(PDO::FETCH_ASSOC)){
    $rows=array_values($rows);

    if( isset($rows[0])){
        $tabTables[]=$rows[0];
        $basesDb2[]=$rows[0];
        // echo "<tr><td>". $rows[0]."</td><td><a href='backup.php?table=$rows[0]&db=".$_GET['db1']."'>Faire un backup</a><a href='list_backup.php?table=$rows[0]&db=".$_GET['db1']."'>Voir les backup</a></td></tr>";
    }

}
 $diff=array_diff($basesDb1,$basesDb2);
echo "<div class='row'><div  class='col-6 '><h5 class='text-center mb-2'> Liste des colonnes presentes dans <strong>".$_GET['tb1']."</strong> et non dans la base <strong>".$_GET['tb2']."</strong>  (".count($diff).")</h5> <div style='height: 350px;'   class='overflow-auto'>";
$requete1="";
if (count($diff)>0){
    $requete1.="ALTER TABLE ".$_GET['tb2']."  ";
    echo "<ul>";
    $i=0;
    foreach ($diff as $differences){
        $sqlCol="select *
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='".$_GET['tb1']."' AND COLUMN_NAME ='$differences' AND TABLE_SCHEMA ='".$_GET['db']."'";
        // $res=backup_tables($servername, $username, $password, $_GET['db'],$_GET['tb1']);


        $queryDsb2 = $conn->prepare($sqlCol);

        $queryDsb2->execute();
       // echo"<pre>";
        $resu=$queryDsb2->fetchAll();
        if($resu){
            $res=$resu[0];
            $requete1.="ADD ".$res['COLUMN_NAME']." ".$res['COLUMN_TYPE'];
            $requete1.=$res['IS_NULLABLE'] == "YES" ?  " DEFAULT NULL " : " NOT NULL ";
            $requete1.=$res['EXTRA'];
            $requete1.=$res['COLUMN_KEY'] == "PRI" ?  "   PRIMARY KEY (`".$differences."`), " : "  ";
            if ($i  < count($diff)-1 ){
                $requete1.=" , ";
            }
            $i++;
        }

       // echo"</pre>";
       // exit();
       // echo  "<li>".$differences."</li>";
    }
    foreach ($tabTables as $tTbl){
        $bool=false;
    foreach ($basesDb2 as $bDb2){
        if ($tTbl == $bDb2){
            $bool=true;
        }
    }
    if ($bool==false){
        echo  "<li style='color: red'>".$tTbl."</li>";
    }else{
        echo  "<li >".$tTbl."</li>";
    }
    }
    echo "</ul>";

}
echo "</div><form method='post'><input type='hidden' name='diffTb' value='$requete1'><input type='hidden' name='db' value='".$_GET['db']."'><input type='hidden' name='dbs' value='".$_GET['tb1']."-".$_GET['tb2']."'>";
echo "<h3 class='text-center'>Requete Sql</h3><textarea rows='10' readonly class='form-control'>$requete1</textarea><div class='col-12 text-center mt-3 mb-5'><input type='submit' name='backup' value='Faire un backup' class='btn btn-outline-warning '>&nbsp;<input type='submit' value='Executer' name='execute'  class='btn btn-outline-danger'></div></div></form>";

$diff=array_diff($basesDb2,$basesDb1);
echo "<div class='col-6'><h5 class='text-center mb-2'>Liste des tables présentes dans la base <strong>".$_GET['tb2']."</strong> et non dans la base <strong>".$_GET['tb1']."</strong> (".count($diff).") </h5><div style='height: 350px;'   class='overflow-auto'> ";
$requete2=" ";
$i=0;
if (count($diff)>0){
    $requete2.="ALTER TABLE ".$_GET['tb1']."  ";

    echo "<ul>";
    foreach ($diff as $differences){
        $sqlCol2="select *
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='".$_GET['tb2']."' AND COLUMN_NAME ='$differences' AND TABLE_SCHEMA ='".$_GET['db']."'";
        // $res=backup_tables($servername, $username, $password, $_GET['db'],$_GET['tb1']);


        $queryDsbb = $conn->prepare($sqlCol2);

        $queryDsbb->execute();
        // echo"<pre>";
        $resu=$queryDsbb->fetchAll();
        if($resu){
            $res=$resu[0];
            $requete2.="ADD ".$res['COLUMN_NAME']." ".$res['COLUMN_TYPE'];
            $requete2.=$res['IS_NULLABLE'] == "YES" ?  " DEFAULT NULL " : " NOT NULL ";
            $requete2.=$res['EXTRA'];
            $requete2.=$res['COLUMN_KEY'] == "PRI" ?  "   PRIMARY KEY (`".$differences."`), " : "  ";
            if ($i  < count($diff)-1 ){
                $requete2.=" , ";
            }
            $i++;
        }


    }
    foreach ($tabTables as $tTbl){
        $bool=false;
        foreach ($basesDb1 as $bDb1){
            if ($tTbl == $bDb1){
                $bool=true;
            }
        }
        if ($bool==false){
            echo  "<li style='color: red'>".$tTbl."</li>";
        }else{
            echo  "<li >".$tTbl."</li>";
        }
    }
    echo "</ul>";
}
echo "</div><form method='post'><input type='hidden' name='diffTb' value='$requete2'><input type='hidden' name='db' value='".$_GET['db']."'><input type='hidden' name='dbs' value='".$_GET['tb1']."-".$_GET['tb2']."'>";
echo "<h3 class='text-center'>Requete Sql</h3><textarea rows='10' readonly class='form-control'>$requete2</textarea><div class='col-12 text-center mt-3 mb-5'><input type='submit' name='backup' value='Faire un backup' class='btn btn-outline-warning '>&nbsp;<input type='submit' value='Executer' name='execute'  class='btn btn-outline-danger'></div></div></form></div>";


?>
</body>
</html>
