<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}


?>

<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.css">
    <link rel="stylesheet" href="assets/style.css">

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body style="background-color: #F0F0F0">

<form method="post">
    <input type="hidden" name="serverTxt" id="serverTxt">
    <input type="hidden" name="userTxt" id="userTxt">
    <input type="hidden" name="pwdTxt" id="pwdTxt">
    <input  id="setData" type="submit" style="display: none" name="setData" >
</form>

<div id="accordian">
    <?php
    if (isset($_SESSION['msgSuccess'])){
        echo $_SESSION['msgSuccess'];
        unset($_SESSION['msgSuccess']);
    }

    ?>
    <ul class="show-dropdown">
        <li>
            <span  ><i class="fas fa-tachometer-alt"></i>Liste des serveurs</span>
        </li>
        <?php
        $pp=0;
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
            /* echo "<h3 class='text-center mt-4 mb-5'>Liste des serveurs disponibles</h3>";
             echo "<select class=' form-control' name='server'>";*/
            $op=0;
            foreach ($result as $host){
                $statement = $conn->prepare("SELECT * FROM mysql.user as u  WHERE u.Host = ?");
                $result=$statement->execute([$host['Host']]);

                $result=$statement->fetchAll() ;

                $op++;

                echo " <li>
            <span onclick='getServer(\"".$host['Host']."\")'  ><i class='fas fa-server'></i> ".$host['Host']."</span>
            <ul>";

                foreach ($result as $host){
                    if(trim($host['User']) !=""){
                        echo "           <li><span href='javascript:void(0);'>". $host['User']." &nbsp; <input class='forms' id=\"". $host['User'],$pp."\" type='password'> <button  onclick='getUsrPwd(\"".$host['User']."\",$pp)'  class='btns'>Se connecter</button></a></li>";

                    }
                    $pp++;
                }
                echo"    </ul>
        </li>";
            }

        }
        ?>


    </ul>

</div>

<script>
    // -------multilevel-accordian-menu---------
    $(document).ready(function() {
        $("#accordian span").click(function() {
            var link = $(this);
            var closest_ul = link.closest("ul");
            var parallel_active_links = closest_ul.find(".active")
            var closest_li = link.closest("li");
            var link_status = closest_li.hasClass("active");
            var count = 0;

            closest_ul.find("ul").slideUp(function() {
                if (++count == closest_ul.find("ul").length){
                    parallel_active_links.removeClass("active");
                    parallel_active_links.children("ul").removeClass("show-dropdown");
                }
            });

            if (!link_status) {
                closest_li.children("ul").slideDown().addClass("show-dropdown");
                closest_li.parent().parent("li.active").find('ul').find("li.active").removeClass("active");
                link.parent().addClass("active");
            }
        })
    });






    // --------for-active-class-on-other-page-----------
    jQuery(document).ready(function($){
        // Get current path and find target link
        var path = window.location.pathname.split("/").pop();

        // Account for home page with empty path
        if ( path == '' ) {
            path = 'index.html';
        }

        var target = $('#accordian li a[href="'+path+'"]');
        // Add active class to target link
        target.parents("li").addClass('active');
        target.parents("ul").addClass("show-dropdown");
    });
    function getServer(server) {

        $('#serverTxt').val(server)
    }
    function getUsrPwd(usr,num) {
        const srv=$('#serverTxt').val()
        const id=`${usr}${num}`;
        console.log(id)
        const pwd=$("#"+id).val()
        $('#userTxt').val(usr)
        $('#pwdTxt').val(pwd)
        $('#setData').click()

    }
</script>

<?php
//
if (!empty($_POST['setData'])){

    unset($_SESSION['server']);
    unset  ($_SESSION['username']);
    unset( $_SESSION['password']);
    try {
        $conn = new PDO("mysql:host=".$_POST['serverTxt'].";", $_POST['userTxt'],  $_POST['pwdTxt']);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        // echo "Connected successfully";
        $_SESSION['server'] = $_POST['serverTxt'];
        $_SESSION['username'] = $_POST['userTxt'];
        $_SESSION['password'] = $_POST['pwdTxt'];
        echo "<script>window.location.href='index.php';</script>";
    } catch(PDOException $e) {
        $_SESSION['error']= "<div style='height: 200px;margin: auto;padding: 10px;text-align: center' class='col-6 mx-auto alert alert-danger'><h3 style='color: orangered' class='text-center'>Erreur lors de la connexion!  Veuillez vérifier vos identifiants!</h3> </div>";// . $e->getMessage();

        echo "<script>window.location.href='index.php';</script>";
        // exit();
    }

    //  echo "<script>window.location.href='index.php'</script>";
}
/*if (!empty($_SESSION['server'])){
    require_once( 'databases.php');
}*/
?>
</body>
</html>
