<?php
include 'connection.php';

$insert ="";
$result = mysqli_query($conn,$insert);
if($result){

    $response["message"]="Survey Submitted";
    echo json_encode($response);

}else{


}
?>