<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $credit_card_number = $_POST['credit_card_number'];

    $sql = "INSERT INTO Visitor (name, email, address, credit_card_number) VALUES ('$name', '$email', '$address', '$credit_card_number')";

    if ($conn->query($sql) === TRUE) {
        header("Location: login.php");
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
