<?php

require_once "../../src/Services/AuthService.php";
require_once "../../src/Repository/CruiseRepository.php";

session_start();

$authService = new AuthService();

$cruiseList = CruiseRepository::getInstance()->findAll();

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
        <h2>Liste des croisières <a href="create-cruise.php" class="btn-edit">Créer</a></h2>
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Début</th>
                <th>Fin</th>
                <th>Bateau</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($cruiseList as $user): ?>
                <tr>
                    <td>#<?php echo $user->getId() ?></td>
                    <td><?php echo $user->getName() ?></td>
                    <td><?php echo $user->getStartDate() ?></td>
                    <td><?php echo $user->getEndDate() ?></a></td>
                    <td><?php echo $user->getBoat()->getName() ?></td>
                    <td>
                        <form method="POST" action="details-user.php" style="display:inline;">
                            <input type="hidden" name="user_id" value="<?php echo $user->getId() ?>">
                            <button type="submit" class="btn-edit">Modifier</button>
                        </form>
                        <form method="POST" action="delete-cruise.php" style="display:inline;">
                            <input type="hidden" name="id" value="<?php echo $user->getId() ?>">
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
