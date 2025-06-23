<?php
include 'config.php';

$visitor_id = $_GET['visitor_id'];
$sql = "SELECT * FROM AnimalDetail";
$result = $conn->query($sql);

?>

<!DOCTYPE html>
<html>
<head>
    <title>Animal Details</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Animal Details</h1>
    <table>
        <tr>
            <th>Animal Name</th>
            <th>Height</th>
            <th>Weight</th>
            <th>Age</th>
            <th>Color</th>
        </tr>
        <?php
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>".$row["animal_name"]."</td><td>".$row["height"]."</td><td>".$row["weight"]."</td><td>".$row["age"]."</td><td>".$row["color"]."</td></tr>";
            }
        } else {
            echo "<tr><td colspan='5'>No animal details found</td></tr>";
        }
        ?>
    </table>
</body>
</html>

<?php
$conn->close();
?>
