<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}

if (!isset($_SESSION["username"]) && !isset($_SESSION["password"])){
    header('Location:servers.php');

}
?>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
 <a href="servers.php" class="m-2 mt-2 btn btn-warning rounded rounded-pill float-right" >Précédent</a>

<script>
    function goBack() {
        window.history.back();
    }
    function checkVerif(type) {
        var cboxes = document.getElementsByName('db[]');
        var len = cboxes.length;

        if (type=='backup'){
            let cpt=1;
            let hrefLink="backup.php?type=db&db=true&db1=";
            for (var i=0; i<len; i++) {
                if (cboxes[i].checked){
                    cpt++;
                        hrefLink+= cboxes[i].value+"&db"+cpt+"="

                }
              //  console.log(i + (cboxes[i].checked?' checked ':' unchecked ') + cboxes[i].value);
            }
            if (cpt==1){
                alert("Veuillez choisir au moins une base !")
                return;
            }
            hrefLink+=(cpt-1)
            window.location.href=hrefLink
            //alert(hrefLink)
          //  const backupBtn=document.getElementById('backupBtn');
           // backupBtn.setAttribute('href',hrefLink)

        }else if (type =='compare'){
            let cptr=0;
            let tabDb=[];
            for (var i=0; i<len; i++) {
                if (cboxes[i].checked){
                    tabDb.push(cboxes[i].value)
                    cptr++;
                }
            }
            if (cptr<2 || cptr>2){
                alert("La comparaison ne peut se faire qu'avec 2 tables");
                return;
            }
            const db1Val=document.getElementById('db1Val');
            db1Val.setAttribute("value", tabDb[0])
            const db2Val=document.getElementById('db2Val');
            db2Val.setAttribute("value", tabDb[1])
             btnCmpr.click()
        }

        //const t = document.querySelectorAll('.backup:checked')
        //console.log(t)
    }
</script>
</body>
</html>
<script>
    function connectDatabase(db) {
        const y=document.getElementById("dbname")
        const btn=document.getElementById("btn-connect")
        btn.style.display="block";
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

$servername = $_SESSION['server'];
$username = $_SESSION['username'];
$password = $_SESSION['password'];
try {
    $conn = new PDO("mysql:host=$servername;", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   // echo "Connected successfully";
} catch(PDOException $e) {
    echo "<div class='col-6 mx-auto alert alert-danger'><h3 class='text-center'>Erreur lors de la connexion!<br> Veuillez vérifier vos identifiants!</h3> </div>";// . $e->getMessage();
exit();
}
//$dbh = new PDO('mysql:host=localhost;user=root;password=;dbname=baz');
$statement = $conn->query('SHOW DATABASES');
//print_r( $statement->fetchAll() );


$query = "SELECT schema_name FROM information_schema.schemata WHERE schema_name
    NOT IN ('information_schema', 'mysql', 'performance_schema', 'phpmyadmin')";
$statement = $conn->query($query);
$result=$statement->fetchAll() ;

echo "<form method='get' action='db_diff.php'><div class='col-6 mx-auto'>
<input type='hidden' id='db1Val' name='db1'>
<input type='hidden' id='db2Val' name='db2'>
<input type='submit' style='display: none' id='btnCmpr' name='btnCmpr'>
";
/*
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
echo "</select><input class='mt-3 btn btn-outline-danger' type='submit' value='Comparer'>*/echo "</div></form>";

echo "<h2 class='text-center mt-5 mb-4'>Liste des bases de données</h2>
<div class='col-10 text-center mx-auto'><input onclick='checkVerif(\"backup\")' type='button' value='Faire un backup'>&nbsp;<input type='button' onclick='checkVerif(\"compare\")' value='Comparer'></div>
<div class='row col-10 mx-auto'>
<h2 id='dbTxt' class='text-center text-danger '></h2>
<form method=\"get\" action=\"traitement_db.php\">
    <input class=\"form-control col-6\" type=\"hidden\" name=\"dbname\" id=\"dbname\">
    <div style='display:none' id='btn-connect' class=\"text-center mb-5 col-12\">
        <input   class=\"btn btn-outline-danger\" type='submit'name=\"submit\" value=\"Se connecter\">

    </div>

</form>
";
echo"<table class='table table-striped'><thead><th>Base de donnée</th><th>Actions</th></thead><tbody>";
foreach( $result as $p){

    echo("<tr><td>".$p ["schema_name"])."</td><td><form style='display: inline-block' method='get' action='traitement_db.php'>  <input   class='btn btn-sm btn-outline-warning' type='submit' name='submit' value='Tables'>  <input   class='btn btn-outline-danger' type='hidden' name='dbname' value='".$p ["schema_name"]."'></form><a href='list_backup.php?db=".$p ["schema_name"]."' style='margin-left:5px !important' type='button' class='btn btn-sm btn-outline-danger mr-3' >Liste des backup</a>&nbsp;<input name='db[]' type='checkbox' class='backup' value='".$p ["schema_name"]."'></td></tr>";
}

echo '</tbody></table></div>';
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
