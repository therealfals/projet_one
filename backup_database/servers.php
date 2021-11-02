<?php
if (session_status()==PHP_SESSION_NONE){
    session_start();
}


?>

<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.css">

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>

<form method="post">
    <input type="hidden" name="serverTxt" id="serverTxt">
    <input type="hidden" name="userTxt" id="userTxt">
    <input type="hidden" name="pwdTxt" id="pwdTxt">
    <input  id="setData" type="submit" style="display: none" name="setData" >
</form>

<div id="accordian">
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
<style>
    * {
        margin: 0;
        padding: 0;
    }
    /* Scrollbar-effect------- */
    #accordian::-webkit-scrollbar {
        width: 5px;
        height: 8px;
    }
    #accordian::-webkit-scrollbar-track {
        border-radius: 10px;
        background-color: #e4e4e4;
    }
    #accordian::-webkit-scrollbar-thumb {
        background: #0089ff;
        border-radius: 10px;
        transition: 0.5s;
    }
    #accordian::-webkit-scrollbar-thumb:hover {
        background: #d5b14c;
        transition: 0.5s;
    }



    /* --------- */
    body {
        background: #C8CACE;
        font-family: Nunito, arial, verdana;
    }

    #accordian {
        background: #fff;
        width: 450px;
        padding: 10px;
        float: left;
        height: 100vh;
        overflow-x: hidden;
    }


    #accordian a {



    }


    i {
        margin-right: 10px;
    }

    #accordian li {
        list-style-type: none;
    }

    #accordian ul li span{
        color: black;
        text-decoration: none;
        font-size: 15px;
        display: block;
        /* 	line-height: 34px; */
        padding: 12px 15px;
        transition: all 0.15s;
        position: relative;
        border-radius: 3px;
    }

    #accordian>ul.show-dropdown>li.active>span,
    #accordian>ul>li>ul.show-dropdown>li.active>span,
    #accordian>ul>li>ul>li>ul.show-dropdown>li.active>span,
    #accordian>ul>li>ul>li>ul>li>ul.show-dropdown>li.active>span,
    #accordian>ul>li>ul>li>ul>li>ul>li>ul.show-dropdown>li.active>span{
        background-color: #E9EBEC;
        color: #0089ff;
        box-shadow: 0px 1px 2px rgba(0, 137, 255, 0.2);
    }

    #accordian>ul>li>ul,
    #accordian>ul>li>ul>li>ul,
    #accordian>ul>li>ul>li>ul>li>ul,
    #accordian>ul>li>ul>li>ul>li>ul>li>ul {
        display: none;
    }


    #accordian>ul>li.active>ul.show-dropdown,
    #accordian>ul>li>ul>li.active>ul.show-dropdown,
    #accordian>ul>li>ul>li>ul>li.active>ul.show-dropdown,
    #accordian>ul>li>ul>li>ul>li>ul>li.active>ul.show-dropdown {
        display: block;
    }

    #accordian>ul>li>ul,
    #accordian>ul>li>ul>li>ul,
    #accordian>ul>li>ul>li>ul>li>ul,
    #accordian>ul>li>ul>li>ul>li>ul>li>ul {
        padding-left: 20px;
    }

    #accordian span:not(:only-child):after {
        content: "\f105";
        position: absolute;
        right: 20px;
        top: 14px;
        font-size: 15px;
        font-family: "Font Awesome 5 Free";
        display: inline-block;
        padding-right: 3px;
        vertical-align: middle;
        font-weight: 900;
        transition: 0.5s;
    }
    span{
        cursor: pointer;
    }
    #accordian .active>span:not(:only-child):after {
        transform: rotate(90deg);
    }
    .forms{


        height: 30px;
        border: black 1px solid;
        padding: 6px;
        border-radius: 5px;

    }
    .btns{

        background-color: #0089ff;
        height: 30px;
        border: #0089ff 1px solid;
        color: white;
        padding: 6px;
        cursor: pointer;
        border-radius: 5px;

    }
</style>
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
if (!empty($_POST['setData'])){
    $_SESSION['server'] = $_POST['serverTxt'];
    $_SESSION['username'] = $_POST['userTxt'];
    $_SESSION['password'] = $_POST['pwdTxt'];
    $servername = $_SESSION['server'];
    $username = $_SESSION['username'];
    $password = $_SESSION['password'];
    try {
        $conn = new PDO("mysql:host=$servername;", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        // echo "Connected successfully";
    } catch(PDOException $e) {
        echo "<div style='height: 200px;width: 100%;margin: auto;padding: 10px;text-align: center' class='col-6 mx-auto alert alert-danger'><h3 style='color: orangered' class='text-center'>Erreur lors de la connexion!  Veuillez vérifier vos identifiants!</h3> </div>";// . $e->getMessage();
        exit();
    }
    echo "<script>window.location.href='index.php'</script>";
}
?>
</body>
</html>
