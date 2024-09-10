<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Dropdown System</title>
 <?php
    include 'connection.php';


 ?>

<style>
  .form-group {
    margin-bottom: 15px;
  }

  .hidden {
    display: none;
  }
      
    </style>
<style>
  body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
  }

  .header {
    background-color: #007bff;
    color: #fff;
    padding: 10px 0;
    margin-bottom: 20px;
  }

  .header h1 {
    margin: 0;
  }

  .main {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  .content {
    padding: 20px;
  }

  .form-group {
    margin-bottom: 15px;
  }

  .form-group label {
    font-weight: bold;
  }

  .form-group input[type="text"],
  .form-group input[type="tel"] {
    width: 100%;
    padding: 8px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
  }

  .form-group input[type="radio"] {
    margin-right: 10px;
  }

  #registered-fields {
    margin-top: 15px;
  }

  .hidden {
    display: none;
  }

  #submit-btn {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    font-size: 16px;
    border-radius: 4px;
  }

  #submit-btn:hover {
    background-color: #0056b3;
  }

  .select-district {
        width: 300px; 
        padding: 10px; 
        font-size: 16px; 
        border: 1px solid #ccc; 
        border-radius: 4px; 
        appearance: none; 
        -webkit-appearance: none; 
        -moz-appearance: none; 
        background-color: #fff; 
        background-image: url('data:image/svg+xml;utf8,<svg fill="gray" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M7 10l5 5 5-5z"/><path d="M0 0h24v24H0z" fill="none"/></svg>'); /* Add custom arrow icon */
        background-repeat: no-repeat; 
        background-position-x: 95%; 
        cursor: pointer; 
    }

   
    .select-district:focus {
        outline: none; 
        border-color: dodgerblue; 
    }
</style>

</head>
<body>
<main class="main">
  <div class="content">
    <h1>Depending Dropdown using jquery & Ajax</h1>
  <div id="registered-fields">
    <div class="form-group">
      <label for="district">Select District</label><br>
     <select class="select-district" id="select-district" name="district-name">
     <option value="" disabled selected>Select an District</option>
        <?php

        $sql = "select distinct district_name from district_ass ORDER BY ID ASC";
        $result = mysqli_query($conn,$sql);
        if (mysqli_num_rows($result) > 0) {
           
            while ($row = mysqli_fetch_assoc($result)) {
              
                echo '<option value="' . htmlspecialchars($row['district_name']) . '">' . htmlspecialchars($row['district_name']) . '</option>';
            }
        } else {
           
            echo '<option value="">No districts found</option>';
        }
?>
     </select>
    </div>
    <div class="form-group">
      <label for="voter-area">Select assembly constituencies</label><br><br>

<select class="select-district" id="select-ac" name="ac-name">
<option value="" disabled selected>Select assembly constituencies </option>
      
    </select>
    </div>
 </div>
  </div>
</form>
</main> 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
    $('#select-district').change(function() {
        var districtName = $(this).val(); 
        $.ajax({
            url: 'get_ac_names.php', 
            method: 'POST',
            data: { districtName: districtName },
            dataType: 'json',
            success: function(response) {
                var options = '<option value="">Select assembly constituencies</option>';
                if (response.length > 0) {
                    $.each(response, function(index, data) {
                        options += '<option value="' + data.ac_name + '">' + data.ac_name + '</option>';
                    });
                } else {
                    options += '<option value="">No assembly constituencies found</option>';
                }
                $('#select-ac').html(options); 
            },
            error: function(xhr, status, error) {
                console.error('Error:', status, error);
                alert('Failed to fetch assembly constituencies. Please try again.');
            }
        });
    });
});

const phoneInput = document.getElementById('phone');

phoneInput.addEventListener('input', function() {
    let phoneValue = this.value.replace(/\D/g, ''); 
    if (/^[5-9][0-9]{0,9}$/.test(phoneValue)) {
        this.setCustomValidity('');
    } else {
        this.setCustomValidity('Phone number must start with a digit between 5 and 9, and can only contain digits.');
    }
});

phoneInput.form.addEventListener('submit', function() {
    phoneInput.setCustomValidity('');
});
</script>


</body>
</html>