<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Upload CSV File to Database</title>
</head>
<body>
    
    <form action="upload_process.php" method="post" enctype="multipart/form-data">
    <h2>Upload Excel(CSV) File to Database </h2>
    
    <input type="file" name="file" id="file">
    <input type="submit" value="Upload File" name="submit">
</form>
</body>
</html>
<style>
body {
    font-family: 'Poppins', sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-color: #f5f5f5;
}


form {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
    width: 300px;
}


h2 {
    margin-bottom: 20px;
    font-size: 1.5rem;
    color: #333;
}


input[type="file"] {
    margin-bottom: 15px;
    padding: 5px;
    border: 1px solid #ddd;
    border-radius: 5px;
    width: 100%;
}


input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #45a049;
}
</style>