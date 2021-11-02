<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
if (!isset($_SESSION["username"]) && !isset($_SESSION["password"])){
    header('Location:servers.php');

}?>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<a href="index.php" class="m-2 mt-2 btn btn-warning rounded rounded-pill" >Précédent</a>
<a href="logout.php" class="m-2 mt-2 btn btn-danger rounded rounded-pill float-right" >Se deconnecter</a>

<script>
    function goBack() {
        window.history.back();
    }
    function checkVerif(type) {
        var cboxes = document.getElementsByName('tb[]');
        var db = document.getElementById('dbNameTxt');
        var len = cboxes.length;

        if (type=='backup'){
            let cpt=1;
            let hrefLink="backup.php?type=table&table=true&db="+db.getAttribute('value')+"&table1=";
            for (var i=0; i<len; i++) {
                if (cboxes[i].checked){
                    cpt++;
                    hrefLink+= cboxes[i].value+"&table"+cpt+"="

                }
                //  console.log(i + (cboxes[i].checked?' checked ':' unchecked ') + cboxes[i].value);
            }
            if (cpt==1){
                alert("Veuillez choisir au moins une table !")
                return;
            }
            hrefLink+=(cpt-1)
            window.location.href=hrefLink
            //alert(hrefLink)
            //  const backupBtn=document.getElementById('backupBtn');
            // backupBtn.setAttribute('href',hrefLink)

        }else if (type =='compare'){
            let cptr=0;
            let tabTb=[];
            for (var i=0; i<len; i++) {
                if (cboxes[i].checked){
                    tabTb.push(cboxes[i].value)
                    cptr++;
                }
            }
            if (cptr<2 || cptr>2){
                alert("La comparaison ne peut se faire qu'avec 2 tables");
                return;
            }
            const tb1Val=document.getElementById('tb1Val');
            tb1Val.setAttribute("value", tabTb[0])
            const tb2Val=document.getElementById('tb2Val');
            tb2Val.setAttribute("value", tabTb[1])
            btnCmpr.click()
        }

        //const t = document.querySelectorAll('.backup:checked')
        //console.log(t)
    }
</script>
<?php
if (!empty($_GET)){
    $servername =  $_SESSION['server'];
    $username = $_SESSION['username'];
    $password = $_SESSION['password'];
    $conn = new PDO("mysql:host=$servername;dbname=".$_GET['dbname'], $username, $password);

    $query = $conn->prepare('show tables');
    $query->execute();
    $result=$query->fetchAll() ;

    echo "<input type='hidden' id='dbNameTxt' value='".$_GET['dbname']."'><h3 class='text-center'>Base de donnée: ".$_GET['dbname']."<br><div><a class='btn btn-outline-warning' href='backup.php?db=".$_GET['dbname']."&type=db'>Faire un backup</a><a class='btn btn-outline-danger' style='margin-left: 5px !important;' href='list_backup.php?db=".$_GET['dbname']."'>Voir les backup</a></div></h3>";
  echo "<form method='get' action='tb_diff.php'>
<input type='hidden' name='db' value='".$_GET['dbname']."'><div class=' col-8 mx-auto '>
<input type='hidden' id='tb1Val' name='tb1'>
<input type='hidden' id='tb2Val' name='tb2'>
<input type='submit' style='display: none' id='btnCmpr' name='btnCmpr'>";
/*Choisir une table
<select  class='form-control' name='tb1'>";

    foreach($result as $rows ){
        $rows=array_values($rows);
        if( isset($rows[0])){
            echo "<option value='".$rows[0]."'>". $rows[0]."</option>";
        }

    }
    echo "</select>";
  echo "Choisir une table
<select  class='form-control' name='tb2'>";
    foreach($result as $rows ){
        $rows=array_values($rows);
        if( isset($rows[0])){
            echo "<option value='".$rows[0]."'>". $rows[0]."</option>";
        }

    }
    echo "</select>";
    echo "<input class='btn btn-outline-danger mt-3' type='submit' name='compare' value='Comparer'>*/echo "</div></form>";
    echo "<div class=' col-8 mx-auto'><h3 class='mb-2 mt-2 text-center'>Tables</h3>
 <div class='col-12 text-center'><input onclick='checkVerif(\"backup\")' type='button' value='Faire un backup'>&nbsp;<input type='button' onclick='checkVerif(\"compare\")' value='Comparer'></div>
 <table class='table table-striped'><thead> <th>Nom table</th><th>Actions</th> </thead><tbody>";

    foreach($result as $rows ){
        $rows=array_values($rows);
        if( isset($rows[0])){
            echo "<tr><td>". $rows[0]."</td><td><a class='btn btn-outline-danger ml-1' href='list_backup.php?table=$rows[0]&db=".$_GET['dbname']."&type=table'>Voir les backup</a>&nbsp;<input name='tb[]' type='checkbox' class='backup' value='".$rows[0]."'></td></tr>";
        }

    }
    echo "</tbody></table> </div>";


//MySQL server and database
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
    $dbname = 'gdi';
    $tables = '*';

//Call the core function

//Core function



}?>
</body>
</html>

