<?php

require_once 'dbConfig.php';

function getAllApplicants($pdo) {
    $sql = "SELECT * FROM search_applicant ORDER BY first_name ASC";
    $stmt = $pdo->prepare($sql);
    $executeQuery = $stmt->execute();
    if ($executeQuery) {
        return $stmt->fetchAll();
    }
}

function getApplicantByID($pdo, $id) {
    $sql = "SELECT * FROM search_applicant WHERE id = ?";
    $stmt = $pdo->prepare($sql);
    $executeQuery = $stmt->execute([$id]);
    if ($executeQuery) {
        return $stmt->fetch();
    }
}

function searchForApplicant($pdo, $searchQuery) {
    $sql = "SELECT * FROM search_applicant WHERE 
            CONCAT(first_name, last_name, email, gender, address, job_position, application_status) 
            LIKE ?";
    $stmt = $pdo->prepare($sql);
    $executeQuery = $stmt->execute(["%" . $searchQuery . "%"]);
    if ($executeQuery) {
        return $stmt->fetchAll();
    }
}

function insertNewApplicant($pdo, $first_name, $last_name, $email, $gender, $address, $job_position, $application_status) {
    $sql = "INSERT INTO search_applicant 
            (first_name, last_name, email, gender, address, job_position, application_status) 
            VALUES (?, ?, ?, ?, ?, ?, ?)";
    $stmt = $pdo->prepare($sql);
    $executeQuery = $stmt->execute([
        $first_name, $last_name, $email, $gender, $address, $job_position, $application_status
    ]);
    if ($executeQuery) {
        return true;
    }
}

function editApplicant($pdo, $first_name, $last_name, $email, $gender, $address, $job_position, $application_status, $id) {
    $sql = "UPDATE search_applicant
            SET first_name = ?, last_name = ?, email = ?, gender = ?, address = ?, 
                job_position = ?, application_status = ?
            WHERE id = ?";
    $stmt = $pdo->prepare($sql);
    $executeQuery = $stmt->execute([
        $first_name, $last_name, $email, $gender, $address, $job_position, $application_status, $id
    ]);
    if ($executeQuery) {
        return true;
    }
}

function deleteApplicant($pdo, $id) {
    $sql = "DELETE FROM search_applicant WHERE id = ?";
    $stmt = $pdo->prepare($sql);
    $executeQuery = $stmt->execute([$id]);
    if ($executeQuery) {
        return true;
    }
}

?>