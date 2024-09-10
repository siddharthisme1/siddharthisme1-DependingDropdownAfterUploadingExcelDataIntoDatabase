<div class="form-group">
    <label for="select-district">Please name the district from where you are registered as a voter?</label><br>
    <select class="select-district" id="select-district" name="district-name">
        <?php
        include 'connection.php';
        $sql = "SELECT DISTINCT district_name FROM district_ass ORDER BY ID ASC";
        $result = mysqli_query($conn, $sql);
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
    <label for="select-ac">What is your assembly constituency name where you are registered as a voter?</label>
    <select class="select-ac" id="select-ac" name="ac-name">
        <!-- Options will be dynamically populated based on the selected district -->
    </select>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
    $('#select-district').change(function() {
        var districtName = $(this).val(); // Get selected district name
        $.ajax({
            url: 'get_ac_names.php', // PHP script to fetch assembly constituencies
            method: 'POST',
            data: { districtName: districtName },
            dataType: 'json',
            success: function(response) {
                var options = '<option value="">Select Assembly Constituency</option>';
                if (response.length > 0) {
                    $.each(response, function(index, data) {
                        options += '<option value="' + data.ac_name + '">' + data.ac_name + '</option>';
                    });
                } else {
                    options += '<option value="">No assembly constituencies found</option>';
                }
                $('#select-ac').html(options); // Update select-ac with new options
            },
            error: function(xhr, status, error) {
                console.error('Error:', status, error);
                alert('Failed to fetch assembly constituencies. Please try again.');
            }
        });
    });
});
</script>

