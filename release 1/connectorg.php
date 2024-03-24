<?php
// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Create connection
    $conn = mysqli_connect('localhost', 'root', '', 'db_iams');

    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Prepare SQL query
    $sql = "INSERT INTO organisation (orgName, supervisorName, supervisorEmail, orgEmail, address, orgId, password, phoneNumber,typeOfWork, location) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    // Prepare statement
    $stmt = $conn->prepare($sql);

    // Bind parameters
    $stmt->bind_param("ssssssssss", $_POST["orgName"], $_POST["supervisorName"], $_POST["supervisorEmail"], $_POST["orgEmail"], $_POST["address"], $_POST["orgId"], $_POST["password"], $_POST["phoneNumber"], $_POST["typeOfWork"], $_POST["location"]);

    // Execute query
    if ($stmt->execute()) {
        echo "Registration successful";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close statement
    $stmt->close();

    // Close connection
    $conn->close();
}
?>
