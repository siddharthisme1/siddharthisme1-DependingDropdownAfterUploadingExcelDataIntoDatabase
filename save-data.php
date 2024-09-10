<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
  
    $phone = trim($_POST['phone']);
    $voterStatus = isset($_POST['voter-status']) ? $_POST['voter-status'] : '';
    $districtName = isset($_POST['district-name']) ? $_POST['district-name'] : '';
    $acName = isset($_POST['ac-name']) ? $_POST['ac-name'] : '';
    $age = isset($_POST['age']) ? $_POST['age'] : '';
    $gender = isset($_POST['gender']) ? $_POST['gender'] : '';
    $residentialArea = isset($_POST['residential-area']) ? $_POST['residential-area'] : '';
    $givenVote = isset($_POST['given_vote']) ? $_POST['given_vote'] : '';
    $givingVote = isset($_POST['giving_vote']) ? $_POST['giving_vote'] : '';
    $religion = isset($_POST['religion']) ? $_POST['religion'] : '';
    $casteCategory = isset($_POST['caste-category']) ? $_POST['caste-category'] : '';


    include 'connection.php';


    $sql = "INSERT INTO `survey_data`(`mobile`, `v_state`, `v_district`,
     `v_assembly`, `v_area`, `v_age`, `v_gender`, `v_vote_party_name`, `v_future_vote_party_name`,
      `v_religion`, `v_categeory`) 
    VALUES ('$phone','$voterStatus','$districtName','$acName','$residentialArea',
    '$age','$gender','$givenVote',' $givingVote','$religion','$casteCategory')";

    if (mysqli_query($conn, $sql)) {
        // echo "Form data submitted successfully!";
        echo "<script>
        alert('Survey Submitted successfully');
        window.location.href = 'index.php'; // Redirect to index.php 
      </script>";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        echo "<script>
        alert('Error While submitting the Survey!');
        window.location.href = 'index.php'; // Redirect to index.php 
      </script>";
    }

    mysqli_close($conn);
} else {
  
    header("Location: index.php");
    exit();
}
?>
