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
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Dropdown
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
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

<div class="row col-12 text-center">
    <div class="col-3">
        <label>Serveurs</label>
        <select  class="form-control">
            <option selected>Liste des serveurs</option>
            <option>Liste des serveurs</option>
            <option>Liste des serveurs</option>
            <option>Liste des serveurs</option>
        </select>
    </div>
    <div class="col-3">
        <label>Utilisateurs</label>
        <select  class="form-control">
            <option selected>Liste des utilisateurs</option>
            <option>Liste des serveurs</option>
            <option>Liste des serveurs</option>
            <option>Liste des serveurs</option>
        </select>
    </div>
    <div class="col-3">
        <label>Mot de passe</label>
        <input type="text" class="form-control">
    </div>
    <div class="col-3">
        <button type="submit" class="btn btn-primary mt-4" value=""> Se connecter</button>
    </div>
</div>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</body>
</html>
