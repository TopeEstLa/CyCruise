<?php

require_once "../../src/Services/AuthService.php";

session_start();

$authService = new AuthService();

$userList = UserRepository::getInstance()->findAll();

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
        <h2>Liste des utilisateurs</h2>
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Prénom</th>
                <th>Email</th>
                <th>Statut</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($userList as $user): ?>
                <tr>
                    <td>#<?php echo $user->getId() ?></td>
                    <td><?php echo $user->getLastname() ?></td>
                    <td><?php echo $user->getFirstname() ?></td>
                    <td><a href="mailto:<?php echo $user->getEmail() ?>"><?php echo $user->getEmail() ?> <i
                                    class="fa fa-external-link"></i></a></td>
                    <td><?php echo $user->getRole()->toString() ?></td>
                    <td>
                        <form method="POST" action="details-user.php" style="display:inline;">
                            <input type="hidden" name="user_id" value="<?php echo $user->getId() ?>">
                            <button type="submit" class="btn-edit">Modifier</button>
                        </form>
                        <form method="POST" action="delete-user.php" style="display:inline;">
                            <input type="hidden" name="user_id" value="<?php echo $user->getId() ?>">
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
