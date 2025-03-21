<?php

require_once "../src/Services/AuthService.php";
require_once "../src/Services/InvoiceService.php";
require_once "../src/Models/Invoice.php";

session_start();

$authService = new AuthService();
$invoiceService = new InvoiceService();

if (!$authService->isLoggedIn()) {
    header("Location: login.php");
    exit();
}

if (!isset($_GET['id'])) {
    header("Location: index.php");
    exit();
}

$invoiceId = $_GET['id'];
$invoice = $invoiceService->getInvoice($invoiceId, $authService->getUser());

if ($invoice === null) {
    header("Location: index.php");
    exit();
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

    <link rel="stylesheet" href="assets/css/reservation-details.css">

    <title>CyCruise - Your best cruise</title>
</head>

<body>
<?php include "../component/navbar.php"; ?>

<main>
    <div class="reservation-container">
        <div class="reservation-header">
            <div class="header-content">
                <h1><?php echo htmlspecialchars($invoice->getCruise()->getName()) ?></h1>
                <?php switch ($invoice->getState()) {
                    case InvoiceState::CONFIRMED: ?>
                        <span class="reservation-status confirmed">Réservation confirmée</span>
                        <?php break; ?>
                    <?php case InvoiceState::PENDING: ?>
                        <span class="reservation-status pending">Réservation en attente</span>
                        <?php break; ?>
                    <?php case InvoiceState::CANCELED: ?>
                        <span class="reservation-status failed">Réservation annulé</span>
                        <?php break; ?>
                    <?php } ?>
                <p class="reservation-id">Référence: REF-<?php echo htmlspecialchars($invoice->getId()) ?></p>
            </div>
        </div>

        <div class="reservation-grid">
            <div class="reservation-section">
                <h2>Détails du voyage</h2>
                <div class="info-grid">
                    <div class="info-item">
                        <span class="info-label">Date de départ</span>
                        <span class="info-value"><?php echo date("d F Y", strtotime($invoice->getCruise()->getStartDate())) ?></span>
                    </div>
                    <div class="info-item">
                        <span class="info-label">Date de retour</span>
                        <span class="info-value"><?php echo date("d F Y", strtotime($invoice->getCruise()->getEndDate())) ?></span>
                    </div>
                    <div class="info-item">
                        <span class="info-label">Durée</span>
                        <span class="info-value"><?php echo htmlspecialchars($invoice->getCruise()->getDuration()) ?> jours</span>
                    </div>
                    <div class="info-item">
                        <span class="info-label">Bateau</span>
                        <span class="info-value"><?php echo htmlspecialchars($invoice->getCruise()->getBoat()->getName()) ?></span>
                    </div>
                </div>
            </div>

            <div class="reservation-section">
                <h2>Votre cabine</h2>
                <div class="cabin-details">
                    <div class="cabin-info">
                        <h3>Suite Vue Mer Premium</h3>
                        <p>Cabine N° 2445</p>
                        <ul class="cabin-features">
                            <li><i class="fas fa-user-friends"></i> 2 personnes</li>
                            <li><i class="fas fa-ruler-combined"></i> 28m²</li>
                            <li><i class="fas fa-bed"></i> Grand lit double</li>
                            <li><i class="fas fa-water"></i> Vue mer panoramique</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="reservation-section">
                <h2>Itinéraire</h2>
                <ul class="itinerary">
                    <?php foreach ($invoice->getCruise()->getStages() as $stage): ?>
                        <li class="itinerary-item">
                            <div class="itinerary-date"><?php echo date("d F Y", strtotime($stage->getStartDate())) ?></div>
                            <div class="itinerary-content">
                                <h4><?php echo htmlspecialchars($stage->getName()) ?></h4>
                                <p><?php echo nl2br(htmlspecialchars($stage->getDescriptions())) ?></p>
                            </div>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>

            <div class="reservation-section">
                <h2>Informations de paiement</h2>
                <div class="payment-info">
                    <div class="price-breakdown">
                        <div class="price-item">
                            <span>Croisière <?php echo htmlspecialchars($invoice->getCruise()->getName()) ?></span>
                            <span><?php echo htmlspecialchars($invoice->getCruise()->getPrice()) ?> €</span>
                        </div>
                        <?php foreach ($invoice->getOptions() as $option): ?>
                            <div class="price-item">
                                <span><?php echo htmlspecialchars($option->getName()) ?></span>
                                <?php if ($option->isPerPassenger()): ?>
                                    <span><?php echo number_format($option->getPrice() * $invoice->getPassengerCount()) ?> €</span>
                                <?php else: ?>
                                    <span><?php echo number_format($option->getPrice()) ?> €</span>
                                <?php endif; ?>
                            </div>
                        <?php endforeach; ?>
                        <div class="price-total">
                            <span>Total</span>
                            <span><?php echo number_format($invoice->getTotalPrice()) ?> €</span>
                        </div>
                    </div>
                    <div class="payment-status">

                        <?php switch ($invoice->getState()) {
                            case InvoiceState::CONFIRMED: ?>
                                <p class="ok"><i class="fas fa-check-circle"></i> Payé intégralement
                                    le <?php echo date("d F Y", strtotime($invoice->getUpdatedAt())) ?></p>
                                <?php break; ?>
                            <?php case InvoiceState::PENDING: ?>
                                <p class="pending"><i class="fa fa-clock"></i>À payer depuis
                                    le <?php echo date("d F Y", strtotime($invoice->getCreatedAt())) ?></p>
                                <?php break; ?>
                            <?php case InvoiceState::CANCELED: ?>
                                <p class="failed"><i class="fa fa-circle-xmark"></i>Annulé
                                    le <?php echo date("d F Y", strtotime($invoice->getUpdatedAt())) ?></p>
                                <?php break; ?>
                            <?php } ?>
                    </div>
                </div>
            </div>
        </div>

        <div class="reservation-actions">
            <?php if ($invoice->getState() == InvoiceState::CONFIRMED): ?>
                <button class="btn-primary"><i class="fas fa-download"></i> Télécharger la confirmation</button>
            <?php endif; ?>
            <button class="btn-secondary"><i class="fas fa-print"></i> Imprimer</button>
            <?php if ($invoice->getState() == InvoiceState::PENDING): ?>
                <button class="btn-danger"><i class="fas fa-times"></i> Annuler la réservation</button>
                <form action="https://www.plateforme-smc.fr/cybank/index.php" method="POST">
                    <input type="hidden" name="transaction" value=<?php echo $invoice->getId() ?>>
                    <input type="hidden" name="montant" value="<?php echo $invoice->getTotalPrice() ?>">
                    <input type="hidden" name="vendeur" value="<?php echo $GLOBALS["SELLER"] ?>">
                    <input type="hidden" name="retour" value=<?php echo $GLOBALS["CALLBACK_URL"] ?>>
                    <input type="hidden" name="control"
                           value="<?php echo $invoiceService->generatePaymentSalt($invoice) ?>">

                    <button class="btn-primary" type="submit"><i class="fas fa-credit-card"></i> Payer la réservation
                    </button>
                </form>
            <?php endif; ?>
        </div>
    </div>
</main>

<?php include "../component/footer.php"; ?>
</body>
</html>
