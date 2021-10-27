<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
if (!isset($_SESSION["username"]) && !isset($_SESSION["password"])){
    header('Location:home.php');

}
?>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>

</body>
</html>
<script>
    function connectDatabase(db) {
        const y=document.getElementById("dbname")
        y.value=db
        const dbTxt=document.getElementById("dbTxt")
        dbTxt.innerText=db
     }

</script>

<?php
/*$set = mysql_query('SHOW DATABASES;');
$dbs = array();
while($db = mysql_fetch_row($set))
$dbs[] = $db[0];
echo implode('<br/>', $dbs);*/

$servername = "localhost";
$username = $_SESSION['username'];
$password = $_SESSION['password'];
try {
    $conn = new PDO("mysql:host=$servername;", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   // echo "Connected successfully";
} catch(PDOException $e) {
  //  echo "Connection failed: " . $e->getMessage();
}
//$dbh = new PDO('mysql:host=localhost;user=root;password=;dbname=baz');
$statement = $conn->query('SHOW DATABASES');
//print_r( $statement->fetchAll() );


$query = "SELECT schema_name FROM information_schema.schemata WHERE schema_name
    NOT IN ('information_schema', 'mysql', 'performance_schema', 'phpmyadmin')";
$statement = $conn->query($query);
$result=$statement->fetchAll() ;

echo "<form method='get' action='db_diff.php'><div class='col-6 mx-auto'>
<h3 class='text-center mt-2 mb-2'>Comparer 2 bases de donées</h3>
Choisir une base
<select class='form-control' name='db1'>";

foreach( $result as $p){

    echo("<option value='".  $p ["schema_name"]."'>");
    echo  $p ["schema_name"];
    echo "</option>";
}
echo "</select>";

echo "Choisir une base
<select class='form-control'  name='db2'>";

foreach( $result as $p){

    echo("<option value='".  $p ["schema_name"]."'>");
    echo  $p ["schema_name"];
    echo "</option>";
}
echo "</select><input class='mt-3 btn btn-outline-danger' type='submit' value='Comparer'></div></form>";

echo "<h2 class='text-center mt-5 mb-4'>Liste des bases de données</h2><div class='row col-10 mx-auto'>
<h2 id='dbTxt' class='text-center text-danger '></h2>
<form method=\"get\" action=\"traitement_db.php\">
    <input class=\"form-control col-6\" type=\"hidden\" name=\"dbname\" id=\"dbname\">
    <div  class=\"text-center mb-5 col-12\">
        <input class=\"btn btn-outline-danger\" type='submit'name=\"submit\" value=\"Se connecter\">

    </div>

</form>
";
foreach( $result as $p){

    echo("<div class='col-4 mt-1 text-left'>".$p ["schema_name"]);
    echo "<button style='margin-left:5px !important' type='button' class='btn btn-sm btn-outline-danger rounded rounded-pill' onclick='connectDatabase(\"".$p ["schema_name"]."\")'>Choisir</button>";
    echo "</div>";
}
echo '</div>';
?>

<?php

exit();
//$result = mysqli_query($link, $query) or die(mysqli_error($link));
$dbs = array();
while($db = mysqli_fetch_row($result))
    $dbs[] = $db[0];
echo implode('<br/>', $dbs);
?>

<?php

?>
