<?php  

require_once 'dbConfig.php';
require_once 'models.php';

if (isset($_POST['insertUserBtn'])) {
    $insertUser = insertNewApplicant(
        $pdo, 
        $_POST['first_name'], 
        $_POST['last_name'], 
        $_POST['email'], 
        $_POST['gender'], 
        $_POST['address'], 
        $_POST['job_position'], 
        $_POST['application_status']
    );

    if ($insertUser) {
        $_SESSION['message'] = "Successfully inserted!";
        header("Location: ../index.php");
        exit;
    }
}

if (isset($_POST['editUserBtn'])) { // Corrected to match form button
    $editUser = editApplicant(
        $pdo, 
        $_POST['first_name'], 
        $_POST['last_name'], 
        $_POST['email'], 
        $_POST['gender'], 
        $_POST['address'], 
        $_POST['job_position'], 
        $_POST['application_status'], 
        $_POST['id'] // Changed from $_GET to $_POST
    );

    if ($editUser) {
        $_SESSION['message'] = "Successfully edited!";
        header("Location: ../index.php");
        exit;
    }
}

if (isset($_POST['deleteUserBtn'])) { // Corrected to match form button
    $deleteUser = deleteApplicant($pdo, $_POST['id']); // Changed from $_GET to $_POST

    if ($deleteUser) {
        $_SESSION['message'] = "Successfully deleted!";
        header("Location: ../index.php");
        exit;
    }
}

if (isset($_GET['searchBtn'])) {
    $searchForAUser = searchForApplicant($pdo, $_GET['searchInput']);
    foreach ($searchForAUser as $row) {
        echo "<tr> 
                <td>{$row['id']}</td>
                <td>{$row['first_name']}</td>
                <td>{$row['last_name']}</td>
                <td>{$row['email']}</td>
                <td>{$row['gender']}</td>
                <td>{$row['address']}</td>
                <td>{$row['job_position']}</td>
                <td>{$row['application_status']}</td>
              </tr>";
    }
}
?>
