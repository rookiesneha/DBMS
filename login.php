<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];

    $sql = "SELECT visitor_id FROM Visitor WHERE email='$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $visitor_id = $row['visitor_id'];
        header("Location: animal_details.php?visitor_id=$visitor_id");
    } else {
        echo "Invalid email.";
    }

    $conn->close();
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Visitor Login</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Visitor Login</h1>
    <form action="login.php" method="POST">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
