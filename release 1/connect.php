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
    $sql = "INSERT INTO student (firstName, lastName, email, studentid, age, password, location, typeOfWork, bio) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

    // Prepare statement
    $stmt = $conn->prepare($sql);

    // Bind parameters
    $stmt->bind_param("ssssissss", $_POST["firstName"], $_POST["lastName"], $_POST["email"], $_POST["studentid"], $_POST["age"], $_POST["password"], $_POST["location"], $_POST["typeOfWork"], $_POST["bio"]);

    // Execute query
    if ($stmt->execute()) {
        echo "Registration successful";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close statement
    $stmt->close();

    // Handle file upload
    if (isset($_FILES['file'])) {
        $errors = array();
        $file_name = $_FILES['file']['name'];
        $file_size = $_FILES['file']['size'];
        $file_tmp = $_FILES['file']['tmp_name'];
        $file_type = $_FILES['file']['type'];
        $file_ext = strtolower(end(explode('.', $_FILES['file']['name'])));

        $extensions = array("jpeg", "jpg", "png");

        if (in_array($file_ext, $extensions) === false) {
            $errors[] = "extension not allowed, please choose a JPEG or PNG file.";
        }

        if ($file_size > 2097152) {
            $errors[] = 'File size must be exactly 2 MB';
        }

        if (empty($errors) == true) {
            move_uploaded_file($file_tmp, "uploads/" . $file_name);
            echo "Success";
        } else {
            print_r($errors);
        }
    }

    // Close connection
    $conn->close();
}
?>
