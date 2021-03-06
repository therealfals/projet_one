
<script>
    function goBack() {
        window.history.back();
    }
</script>
<?php

function backup_tables($host, $user, $pass, $dbname, $tables = '*') {
    $isAll=$tables=="*"?"*":[];
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
    if (!file_exists("sauvegarde/bases/".$dbname."/bases")) {
        mkdir("sauvegarde/bases/".$dbname."/bases", 0777, true);
    }
    $return = '';
    $returnSql = '';
    //cycle through
    foreach($tables as $table)
    {
        if (!file_exists("sauvegarde/bases/".$dbname."/tables/".$table) && $isAll !="*") {
            mkdir("sauvegarde/bases/".$dbname."/tables/".$table, 0777, true);
        }
         $result = mysqli_query($link, 'SELECT * FROM '.$table);
        $num_fields = mysqli_num_fields($result);
        $num_rows = mysqli_num_rows($result);

        $return.= 'DROP TABLE IF EXISTS '.$table.';';
        $returnSql.= 'DROP TABLE IF EXISTS '.$table.';';
        $row2 = mysqli_fetch_row(mysqli_query($link, 'SHOW CREATE TABLE '.$table));
        $return.= "\n\n".$row2[1].";\n\n";
        $returnSql.= "\n\n".$row2[1].";\n\n";
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
        $returnSql.="\n\n\n";
    }

    //save file
    $fileName = time().'.sql';
    if ($isAll=='*'){
        $handle = fopen("sauvegarde/bases/".$dbname."/bases/".$fileName,'w+');
    }else{
        $handle = fopen("sauvegarde/bases/".$dbname."/tables/".$table."/".$fileName,'w+');

    }
    fwrite($handle,$returnSql);
    if(fclose($handle)){
        $msg=$isAll=='*'?"La base de donn??e <strong>".$dbname."<strong> a ??t?? sauvegard??e avec succes":"La table <strong> $table </strong>de la base de donn??e<strong> $dbname</strong> a ??t?? sauvegard??e avec succ??s";
        $msg.="<br> <span onclick=\"goBack()\" style='cursor: pointer' >Pr??c??dent</span>";
        //echo  "<h3 style='text-align:center;color:green'>$msg</h3>";
        return array("isOk"=>true,"msg"=>$msg,"sql"=>$returnSql);
    }
}




function restoreDatabaseTables($dbHost, $dbUsername, $dbPassword, $dbName, $filePath){
    // Connect & select the database
    $db = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName);

    // Temporary variable, used to store current query
    $templine = '';

    // Read in entire file
    if (file_exists($filePath)){
        $lines = file($filePath);
        $error = '';

        // Loop through each line
        foreach ($lines as $line){
            // Skip it if it's a comment
            if(substr($line, 0, 2) == '--' || $line == ''){
                continue;
            }

            // Add this line to the current segment
            $templine .= $line;

            // If it has a semicolon at the end, it's the end of the query
            if (substr(trim($line), -1, 1) == ';'){
                // Perform the query
                if(!$db->query($templine)){
                    $error .= 'Error performing query "<b>' . $templine . '</b>": ' . $db->error . '<br /><br />';
                }

                // Reset temp variable to empty
                $templine = '';
            }
        }
        return !empty($error)?$error:true;

    }
    return false;
    }

function restoreDatabaseDiff($dbHost, $dbUsername, $dbPassword, $dbName, $sql){
    // Connect & select the database
    $db =  mysqli_connect($dbHost, $dbUsername, $dbPassword, $dbName);
    $req=str_replace('`',' ',$sql);
if (mysqli_query($db,$req)){
    var_dump($req);

}else{
   echo mysqli_error($db);
   echo "<br>";
}
    var_dump($req);

exit();
    // Temporary variable, used to store current query
    $templine = '';

        $error = '';
    $db->query($sql);
                 if(!$db->query($sql)){
                    var_dump($sql);
                    exit();
                    $error .= 'Error performing query "<b>' . $templine . '</b>": ' . $db->error . '<br /><br />';
                }



        return !empty($error)?$error:true;


 }
