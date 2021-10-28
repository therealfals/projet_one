<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}
unset($_SESSION["username"]);
unset($_SESSION["password"]);
header('Location:home.php');

