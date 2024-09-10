<?php
include 'connection.php'
$district = urldecode($_GET['district']);

$sqlACNames = "SELECT ac_name FROM district_ass WHERE district_name = ? ORDER BY ac_name ASC";
$stmt = $conn->prepare($sqlACNames);
$stmt->bind_param("s", $district);
$stmt->execute();
$resultACNames = $stmt->get_result();

$acNames = [];
if ($resultACNames->num_rows > 0) {
    while ($row = $resultACNames->fetch_assoc()) {
        $acNames[] = $row['ac_name'];
    }
}



$response = [
    'ac_names' => $acNames
];


header('Content-Type: application/json');
echo json_encode($response);
?>
