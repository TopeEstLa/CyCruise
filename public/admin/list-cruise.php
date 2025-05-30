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
            <?php foreach ($cruiseList as $cruise): ?>
                <tr>
                    <td>#<?php echo htmlspecialchars($cruise->getId()) ?></td>
                    <td><?php echo htmlspecialchars($cruise->getName()) ?></td>
                    <td><?php echo date("d F Y", strtotime($cruise->getStartDate())) ?></td>
                    <td><?php echo date("d F Y", strtotime($cruise->getEndDate())) ?></a></td>
                    <td><?php echo htmlspecialchars($cruise->getBoat()->getName()) ?></td>
                    <td>
                        <a href="details-cruise.php?id=<?php echo htmlspecialchars($cruise->getId()) ?>" style="display:inline;">
                            <button type="submit" class="btn-edit">Modifier</button>
                        </a>
                        <form method="POST" action="delete-cruise.php" style="display:inline;">
                            <input type="hidden" name="id" value="<?php echo htmlspecialchars($cruise->getId()) ?>">
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
