<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<?php
if (!empty($_GET)){
    $servername = "localhost";
    $username = "root";
    $password = "";
    $conn = new PDO("mysql:host=$servername;dbname=".$_GET['dbname'], $username, $password);

    $query = $conn->prepare('show tables');
    $query->execute();
    echo "<h3 class='text-center'>Basee de donnée: ".$_GET['dbname']."<a href='list_backup.php?db=".$_GET['dbname']."'>Voir les backup</a><a href='backup.php?db=".$_GET['dbname']."'>Faire un backup</a></h3>";
    echo "<table class='table table-striped'><thead> <td>Nom table</td><td>Actions</td> </thead><tbody>";

    while($rows = $query->fetch(PDO::FETCH_ASSOC)){
        $rows=array_values($rows);
        if( isset($rows[0])){
            echo "<tr><td>". $rows[0]."</td><td><a href='backup.php?table=$rows[0]&db=".$_GET['dbname']."'>Faire un backup</a><a href='list_backup.php?table=$rows[0]&db=".$_GET['dbname']."'>Voir les backup</a><button>Supprimer</button></td></tr>";
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



}?>
</body>
</html>

