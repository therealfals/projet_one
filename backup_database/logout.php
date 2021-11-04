<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
unset($_SESSION["username"]);
unset($_SESSION["password"]);
unset($_SESSION["server"]);
header('Location:index.php');

