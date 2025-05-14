<?php

require_once "../src/Services/AuthService.php";
require_once "../src/Repository/UserRepository.php";
require_once "../src/Repository/InvoiceRepository.php";

session_start();

$authService = new AuthService();
if (!$authService->isLoggedIn()) {
    header("Location: login.php");
    exit;
}

$user = UserRepository::getInstance()->findById($_SESSION['user_id']);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!isset($_POST['firstname']) || !isset($_POST['lastname']) || !isset($_POST['email']) || !isset($_POST['birth'])) {
        header("Location: account.php");
        exit;
    }

    $user->setFirstname($_POST['firstname']);
    $user->setLastname($_POST['lastname']);
    $user->setEmail($_POST['email']);
    $user->setBirth($_POST['birth']);

    UserRepository::getInstance()->update($user);
}

$currentInvoices = InvoiceRepository::getInstance()->findAllCurrentByUserIdOrderByCreatedAt($user->getId());
$oldInvoices = InvoiceRepository::getInstance()->findAllOldByUserAndStateIdOrderByCreatedAt($user->getId(), InvoiceState::CONFIRMED);

?>


<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <script src="assets/js/darkTheme.js"></script>
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/btn-kit.css">
    <link rel="stylesheet" href="assets/css/navbar.css">
    <link rel="stylesheet" href="assets/css/footer.css">

    <link rel="stylesheet" href="assets/css/account.css">

    <title>CyCruise - Your best cruise</title>
</head>
<body>
<?php include "../component/navbar.php"; ?>

<main>
    <div class="account-container">
        <div class="account-section">
            <div class="account-info">
                <form id="account-form">
                    <h2>Mon Compte</h2>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input disabled id="email" name="email" type="email"
                               value="<?php echo htmlspecialchars($user->getEmail()) ?>">
                    </div>
                    <div class="form-group">
                        <label for="firstname">Prénom</label>
                        <input disabled id="firstname" name="firstname" type="text"
                               value="<?php echo htmlspecialchars($user->getFirstname()) ?>">
                    </div>
                    <div class="form-group">
                        <label for="lastname">Nom</label>
                        <input disabled id="lastname" name="lastname" type="text"
                               value="<?php echo htmlspecialchars($user->getLastname()) ?>">
                    </div>
                    <div class="form-group">
                        <label for="birth">Date de naissance</label>
                        <input disabled id="birth" name="birth" type="date"
                               value="<?php echo htmlspecialchars($user->getBirth()) ?>">
                    </div>
                    <button class="btn-primary" id="update-account-info">Modifier mes informations</button>
                </form>

                <div class="status-section">
                    <h2>Badge de Compte</h2>
                    <?php switch ($user->getRole()) { ?>
<?php case UserRole::DEFAULT: ?>
                            <span class="status-badge standard">Client STANDARD</span>
                            <?php break; ?>
                        <?php case UserRole::VIP: ?>
                            <span class="status-badge vip">Client VIP</span>
                            <?php break; ?>
                        <?php case UserRole::PREMIUM: ?>
                            <span class="status-badge premium">Client PREMIUM</span>
                            <?php break; ?>
                        <?php case UserRole::BAN: ?>
                            <span class="status-badge ban">BAN</span>
                            <?php break; ?>
                        <?php case UserRole::ADMIN: ?>
                            <span class="status-badge vip">ADMIN</span>
                            <?php break; ?>
                        <?php } ?>

                </div>
            </div>
        </div>

        <div class="account-section">
            <h2>Mes réservations</h2>
            <ul class="cruise-list">
                <?php foreach ($currentInvoices as $invoice): ?>
                    <li class="cruise-item">
                        <h3><?php echo htmlspecialchars($invoice->getCruise()->getName()) ?></h3>
                        <span class="cruise-date"><?php echo date("d F Y", strtotime($invoice->getCruise()->getStartDate())) ?></span>
                        <p><?php echo htmlspecialchars($invoice->getCruise()->getShortDescriptions()) ?></p>
                        <?php switch ($invoice->getState()) {
                            case InvoiceState::CONFIRMED: ?>
                                <a class="reservation-status confirmed"
                                   href="invoice.php?id=<?php echo htmlspecialchars($invoice->getId()) ?>">Confirmée</a>
                                <?php break; ?>
                            <?php case InvoiceState::PENDING: ?>
                                <a class="reservation-status pending"
                                   href="invoice.php?id=<?php echo htmlspecialchars($invoice->getId()) ?>">En attente de
                                    payment</a>
                                <?php break; ?>
                            <?php case InvoiceState::CANCELED: ?>
                                <a class="reservation-status cancelled"
                                   href="invoice.php?id=<?php echo htmlspecialchars($invoice->getId()) ?>">Annulé</a>
                                <?php break; ?>
                                <?php break; ?>
                            <?php } ?>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>

        <div class="account-section">
            <h2>Mes dernières croisières</h2>
            <ul class="cruise-list">
                <?php foreach ($oldInvoices as $invoice): ?>
                    <li class="cruise-item">
                        <h3><?php echo htmlspecialchars($invoice->getCruise()->getName()) ?></h3>
                        <span class="cruise-date"><?php echo date("d F Y", strtotime($invoice->getCruise()->getStartDate())) ?></span>
                        <p><?php echo htmlspecialchars($invoice->getCruise()->getShortDescriptions()) ?></p>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
</main>


<?php include "../component/footer.php"; ?>
<script src="assets/js/account.js"></script>
</body>
</html>