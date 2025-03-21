<?php

require_once "../src/Services/AuthService.php";
require_once "../src/Services/InvoiceService.php";

session_start();

$authService = new AuthService();
$invoiceService = new InvoiceService();

if (!$authService->isLoggedIn()) {
    header("Location: login.php");
    exit();
}

if (!isset($_GET['status'])) {
    header("Location: index.php");
    exit();
}

if (!isset($_GET['transaction'])) {
    header("Location: index.php");
    exit();
}

$status = $_GET['status'];
$transaction = $_GET['transaction'];

$user = $authService->getUser();

if ($user == null) {
    header("Location: login.php");
    exit();
}

$invoice = $invoiceService->getInvoice($transaction, $user);

if ($invoice == null) {
    header("Location: index.php");
    exit();
}

$state = $status;

if ($status === "success") {
    $invoice->setState(InvoiceState::CONFIRMED);
    if (!$invoiceService->updateInvoice($invoice)) {
        $state = "failed";
    }
} else {
    $state = "failed";
}
?>


<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/btn-kit.css">
    <link rel="stylesheet" href="assets/css/navbar.css">
    <link rel="stylesheet" href="assets/css/footer.css">

    <link rel="stylesheet" href="assets/css/payment-callback.css">

    <title>CyCruise - Your best cruise</title>
</head>

<body>
<?php include "../component/navbar.php"; ?>


<main>
    <div class="payment-container">
        <div class="payment-card">
            <?php if ($state === "success"): ?>
                <div class="payment-status success">
                    <div class="status-icon">
                        <i class="fas fa-check-circle"></i>
                    </div>
                    <h1>Paiement Réussi!</h1>
                    <p>Votre réservation a été confirmée et le paiement a été traité avec succès.</p>
                    <p class="reservation-id"><span>Référence: REF-<?php echo htmlspecialchars($transaction) ?></span></p>
                    <div class="payment-details">
                        <div class="detail-item">
                            <span class="detail-label">Date de paiement</span>
                            <span class="detail-value"><?php echo date("d F Y") ?></span>
                        </div>
                        <div class="detail-item">
                            <span class="detail-label">Montant payé</span>
                            <span class="detail-value"><?php echo number_format($invoice->getTotalPrice()) ?> €</span>
                        </div>
                        <div class="detail-item">
                            <span class="detail-label">Croisière</span>
                            <span class="detail-value"><?php echo htmlspecialchars($invoice->getCruise()->getName()) ?></span>
                        </div>
                    </div>
                </div>
            <?php else: ?>
                <div class="payment-status failed">
                    <div class="status-icon">
                        <i class="fas fa-times-circle"></i>
                    </div>
                    <h1>Paiement Échoué</h1>
                    <p>Nous n'avons pas pu traiter votre paiement. Veuillez réessayer ou contacter notre service client.</p>
                    <p class="reservation-id"><span>Référence: REF-<?php echo htmlspecialchars($transaction) ?></span></p>
                </div>
            <?php endif; ?>

            <div class="payment-actions">
                <?php if ($status === "success"): ?>
                    <a href="invoice.php?id=<?php echo htmlspecialchars($transaction) ?>" class="btn-primary">
                        <i class="fas fa-receipt"></i> Voir les détails de la réservation
                    </a>
                    <button class="btn-secondary">
                        <i class="fas fa-download"></i> Télécharger la confirmation
                    </button>
                <?php else: ?>
                    <a href="invoice.php?id=<?php echo htmlspecialchars($transaction) ?>" class="btn-primary">
                        <i class="fas fa-credit-card"></i> Réessayer le paiement
                    </a>
                    <a href="index.php" class="btn-secondary">
                        <i class="fas fa-home"></i> Retour à l'accueil
                    </a>
                <?php endif; ?>
            </div>
        </div>
    </div>
</main>

<?php include "../component/footer.php"; ?>
</body>

</html>
