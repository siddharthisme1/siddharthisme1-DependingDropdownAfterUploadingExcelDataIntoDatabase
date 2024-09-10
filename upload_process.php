<?php
include 'connection.php';

if(isset($_POST["submit"]))
{
    
if($_FILES['file']['name'])
{
$filename = explode(".", $_FILES['file']['name']);
if($filename[1] == 'csv')
{
$handle = fopen($_FILES['file']['tmp_name'], "r");
while($data = fgetcsv($handle))//handling csv file 
{


$districtName = mysqli_real_escape_string($conn, $data[0]);
$ac_name = mysqli_real_escape_string($conn, $data[1]);


$query="INSERT INTO `district_ass`(`district_name`, `ac_name`) VALUES ('$districtName','$ac_name')";
mysqli_query($conn, $query);
  
        echo '<script>window.location.href="index.php";</script>';
}
fclose($handle);
//echo "File sucessfully imported";
}
}
}
?>