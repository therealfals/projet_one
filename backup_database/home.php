<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
if (!empty($_POST)){
    $_SESSION['username']=$_POST['username'];
    $_SESSION['password']=$_POST['password'];
    header('Location:index.php');
}
?>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<form method="post">
    <div class="col-8 mx-auto">
        <h3 class="text-center mt-5 mb-3">Données de connexion a la base de donnée</h3>
        <label>Nom d'utilisateur</label>
        <input type="text" placeholder="Ex: root" name="username" class="form-control">
        <label>Mot de passe</label>
        <input type="text" name="password" class="form-control">
        <input type="submit" name="enregistrer" class="btn btn-outline-danger mt-3" value="Se connecter">
    </div>
</form>
</body>
</html>
