<?php

require_once "../../src/Services/AuthService.php";
require_once "../../src/Repository/ContactRepository.php";

session_start();

$authService = new AuthService();

if (!$authService->isLoggedIn()) {
    header('Location: login.php');
}

if (!$authService->isAdmin()) {
    header('Location: account.php');
}

$contactList = ContactRepository::getInstance()->findAll();


?>


<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <link href="../assets/css/app.css" rel="stylesheet"> <!-- global css kit -->
    <link href="../assets/css/btn-kit.css" rel="stylesheet"> <!-- btn kit for the website -->
    <link href="../assets/css/admin/navbar.css" rel="stylesheet">
    <link href="../assets/css/admin/dashboard.css" rel="stylesheet">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <title>CyCruise - Admin dashboard</title>
</head>

<body>
<?php include "../../component/admin/sidebar.php"; ?>

<main>
    <div class="content-table">
        <h2>Liste des demandes de contact</h2>
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Prénom</th>
                <th>Sujet</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($contactList as $contactRequest): ?>
                <tr>
                    <td>#<?php echo htmlspecialchars($contactRequest->getId()) ?></td>
                    <td><?php echo htmlspecialchars($contactRequest->getLastname()) ?></td>
                    <td><?php echo htmlspecialchars($contactRequest->getFirstname()) ?></td>
                    <td><?php echo htmlspecialchars($contactRequest->getSubject()) ?></td>
                    <td>
                        <form method="POST" action="details-user.php" style="display:inline;">
                            <input type="hidden" name="contact_id" value="<?php echo htmlspecialchars($contactRequest->getId()) ?>">
                            <button type="submit" class="btn-edit">Modifier</button>
                        </form>
                        <form method="POST" action="delete-user.php" style="display:inline;">
                            <input type="hidden" name="contact_id" value="<?php echo htmlspecialchars($contactRequest->getId()) ?>">
                            <button type="submit" class="btn-delete">Supprimer</button>
                        </form>
                    </td>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</main>


</body>
