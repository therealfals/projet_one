<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}?>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">

</head>
<body>

<form method="GET" class="col-6 mx-auto">
<?php

$servername = "localhost";
$username ="root";
$password ="";
try {
    $conn = new PDO("mysql:host=$servername;", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Connected successfully";
} catch(PDOException $e) {
    echo "<div class='col-6 mx-auto alert alert-danger'><h3 class='text-center'>Erreur lors de la connexion!<br> Veuillez vérifier vos identifiants!</h3> </div>";// . $e->getMessage();
    exit();
}
$statement = $conn->query("SELECT * FROM mysql.user as u GROUP BY u.host");
$result=$statement->fetchAll() ;
if($result){
    echo "<h3 class='text-center mt-4 mb-5'>Liste des serveurs disponibles</h3>";
    echo "<select class=' form-control' name='server'>";

    foreach ($result as $host){
        echo "<option value='".$host['Host']."'>";
         echo $host['Host'];
         echo "</option>";
    }
    echo "</select><input class='btn btn-outline-danger mt-3' type='submit' value='Choisir'>";

}
?>
    </form>
<form method="post" class="col-6 mx-auto mt-5">

    <?php

if (isset($_GET['server'])){
    $statement = $conn->prepare("SELECT * FROM mysql.user as u  WHERE u.Host = ?");
    $result=$statement->execute([$_GET['server']]);

    $result=$statement->fetchAll() ;
    echo "<h3 class='text-center mb-2'>Liste des utilisateurs du serveur <span class='text-danger'>".$_GET['server']." </span>disponibles</h3>";
    echo "<label class='mt-3'>Nom d'utilisateur</label><select  class='form-control mb-4'  name='username'>";
    foreach ($result as $host){
        echo "<option value='".$host['User']."'>";
        echo $host['User'];
        echo "</option>";
    }
    echo "</select><label>Mot de passe</label>
<input type='password' class='form-control mt-2' name='password' >
<input type='submit' name='connect' class='btn btn-outline-danger mt-3 float-right'  value='Se connecter'>
";

}


?>
</form>
<?php
if (isset($_POST['connect'])){
    $_SESSION['username']=$_POST['username'];
    $_SESSION['password']=$_POST['password'];
    $_SESSION['server']=$_GET['server'];
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
    header('Location:index.php');
}
?>

</body>
</html>


