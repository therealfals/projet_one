<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}?>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>

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
 $diff=array_diff($basesDb1,$basesDb2);
echo "<div class='row'><div  class='col-6 '><h5 class='text-center mb-2'> Liste des colonnes presentes dans <strong>".$_GET['tb1']."</strong> et non dans la base <strong>".$_GET['tb2']."</strong>  (".count($diff).")</h5> <div style='height: 450px;'   class='overflow-auto'>";
if (count($diff)>0){
    echo "<ul>";
    foreach ($diff as $differences){
        echo  "<li>".$differences."</li>";
    }
    echo "</ul></div></div>";
}

$diff=array_diff($basesDb2,$basesDb1);
echo "<div class='col-6'><h5 class='text-center mb-2'>Liste des tables présentes dans la base <strong>".$_GET['tb1']."</strong> et non dans la base <strong>".$_GET['tb2']."</strong> (".count($diff).") </h5><div style='height: 450px;'   class='overflow-auto'> ";
if (count($diff)>0){
    echo "<ul>";
    foreach ($diff as $differences){
        echo  "<li>".$differences."</li>";
    }
    echo "</ul></div></div></div>";
}?>
</body>
</html>