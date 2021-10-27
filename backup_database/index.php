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
     }

</script>
<form method="get" action="traitement_db.php">
    <input type="text" name="dbname" id="dbname">
    <input type='submit'name="submit" value="Se connecter">

</form>
<?php
/*$set = mysql_query('SHOW DATABASES;');
$dbs = array();
while($db = mysql_fetch_row($set))
$dbs[] = $db[0];
echo implode('<br/>', $dbs);*/
$servername = "localhost";
$username = "root";
$password = "";

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

echo "<form method='post' action='db_diff.php'>
<select name='table1'>";

foreach( $result as $p){

    echo("<option value='".  $p ["schema_name"]."'>");
    echo  $p ["schema_name"];
    echo "</option>";
}
echo "</select>";

echo "<select name='table2'>";

foreach( $result as $p){

    echo("<option value='".  $p ["schema_name"]."'>");
    echo  $p ["schema_name"];
    echo "</option>";
}
echo "</select><input type='submit' value='Comparer'>";

echo "<h2>Liste des bases de données</h2>";
foreach( $result as $p){

    echo($p ["schema_name"]);
    echo "<button type='button' onclick='connectDatabase(\"".$p ["schema_name"]."\")'>Se connecter a la base</button>";
    echo "<br>";
}

/*if (!empty($_POST["submit"])){
    $conn = new PDO("mysql:host=$servername;dbname=".$_POST['dbname'], $username, $password);
    if (!file_exists($_POST['dbname'])) {
        mkdir($_POST['dbname'], 0777, true);
    }
    $query = $conn->prepare('show tables');
    $query->execute();
    echo "<h3>Basee de donnée: ".$_POST['dbname']."</h3>";
    echo "<table class='table table-striped'><thead> <td>Nom table</td><td>Actions</td> </thead><tbody>";

    while($rows = $query->fetch(PDO::FETCH_ASSOC)){
        $rows=array_values($rows);
        if( isset($rows[0])){
            echo "<tr><td>". $rows[0]."</td><td><button>Faire un backup</button><button>Voir les backup</button><button>Supprimer</button></td></tr>";
        }

    }
    echo "</tbody></table>";


//MySQL server and database
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
    $dbname = 'gdi';
    $tables = '*';

//Call the core function

//Core function
    function backup_tables($host, $user, $pass, $dbname, $tables = '*') {
        $link = mysqli_connect($host,$user,$pass, $dbname);

        // Check connection
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
            exit;
        }

        mysqli_query($link, "SET NAMES 'utf8'");

        //get all of the tables
        if($tables == '*')
        {
            $tables = array();
            $result = mysqli_query($link, 'SHOW TABLES');
            while($row = mysqli_fetch_row($result))
            {
                $tables[] = $row[0];
            }
        }
        else
        {
            $tables = is_array($tables) ? $tables : explode(',',$tables);
        }

        $return = '';
        //cycle through
        foreach($tables as $table)
        {
            if (!file_exists($_POST['dbname']."/".$table)) {
                mkdir($_POST['dbname']."/".$table, 0777, true);
            }
            $result = mysqli_query($link, 'SELECT * FROM '.$table);
            $num_fields = mysqli_num_fields($result);
            $num_rows = mysqli_num_rows($result);

            $return.= 'DROP TABLE IF EXISTS '.$table.';';
            $row2 = mysqli_fetch_row(mysqli_query($link, 'SHOW CREATE TABLE '.$table));
            $return.= "\n\n".$row2[1].";\n\n";
            $counter = 1;

            //Over tables
            for ($i = 0; $i < $num_fields; $i++)//structure+donnees
            {   //Over rows
                while($row = mysqli_fetch_row($result))
                {
                    if($counter == 1){
                        $return.= 'INSERT INTO '.$table.' VALUES(';
                    } else{
                        $return.= '(';
                    }

                    //Over fields
                    for($j=0; $j<$num_fields; $j++)
                    {
                        $row[$j] = addslashes($row[$j]);
                        $row[$j] = str_replace("\n","\\n",$row[$j]);
                        if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
                        if ($j<($num_fields-1)) { $return.= ','; }
                    }

                    if($num_rows == $counter){
                        $return.= ");\n";
                    } else{
                        $return.= "),\n";
                    }
                    ++$counter;
                }
            }
            $return.="\n\n\n";
        }

        //save file
        $fileName = 'db-backup-'.time().'-'.(md5(implode(',',$tables))).'.sql';
        $handle = fopen($fileName,'w+');
        fwrite($handle,$return);
        if(fclose($handle)){
            echo "Done, the file name is: ".$fileName;
            exit;
        }
    }
    backup_tables($dbhost, $dbuser, $dbpass, $dbname, $tables);

}*/
exit();
//$result = mysqli_query($link, $query) or die(mysqli_error($link));
$dbs = array();
while($db = mysqli_fetch_row($result))
    $dbs[] = $db[0];
echo implode('<br/>', $dbs);
?>

<?php

?>
