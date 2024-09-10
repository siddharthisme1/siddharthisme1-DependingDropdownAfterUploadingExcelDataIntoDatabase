<?php
include 'connection.php'; 

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['districtName'])) {
    $districtName = $_POST['districtName'];

    $sql = "SELECT DISTINCT ac_name FROM district_ass WHERE district_name = '$districtName' ORDER BY ID ASC";
    $result = mysqli_query($conn, $sql);

    $acNames = array();
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $acNames[] = $row;
        }
    }

    echo json_encode($acNames);
} else {
    echo json_encode(array()); 
}
?>
