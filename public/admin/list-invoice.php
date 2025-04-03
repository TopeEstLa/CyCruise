<?php

require_once "../../src/Services/AuthService.php";
require_once "../../src/Repository/InvoiceRepository.php";

session_start();

$authService = new AuthService();

$invoices = InvoiceRepository::getInstance()->findAll();

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
        <h2>Liste des réservations</h2>
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>Client</th>
                <th>Croisière</th>
                <th>Date</th>
                <th>Statut</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($invoices as $invoice): ?>
                <tr>
                    <td>#<?php echo $invoice->getId() ?></td>
                    <td>
                        <a href="details-user.php?user_id=<?php echo htmlspecialchars($invoice->getUser()->getId()) ?>"><?php echo htmlspecialchars($invoice->getUser()->getFirstname()) ?>
                            <?php echo htmlspecialchars($invoice->getUser()->getLastname()) ?>
                            <i class="fa fa-external-link"></i></a></td>
                    <td><?php echo htmlspecialchars($invoice->getCruise()->getName()) ?></td>
                    <td><?php echo date("d F Y", strtotime($invoice->getCreatedAt())) ?></td>
                    <td><?php echo $invoice->getState()->toString() ?></td>
                    <td>
                        <a href="details-invoice.php?id=<?php echo htmlspecialchars($invoice->getId()) ?>"
                           style="display:inline;">
                            <button type="submit" class="btn-edit">Modifier</button>
                        </a>
                        <form method="POST" action="delete-invoice.php" style="display:inline;">
                            <input type="hidden" name="id" value="<?php echo htmlspecialchars($invoice->getId()) ?>">
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
