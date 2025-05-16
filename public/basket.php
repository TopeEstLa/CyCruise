<?php
require_once "../src/Services/AuthService.php";
require_once "../src/Repository/InvoiceRepository.php";
require_once "../src/Enums/InvoiceState.php";
require_once "../src/Services/InvoiceService.php";

session_start();

$authService = new AuthService();

if (!$authService->isLoggedIn()) {
    header("Location: login.php");
    exit();
}

$invoiceService = new InvoiceService();

$user = $authService->getUser();
$basketInvoices = InvoiceRepository::getInstance()->findAllCurrentByUserIdAndStateOrderByCreatedAt($user->getId(), InvoiceState::PENDING);


$totalBasketPrice = 0;
foreach ($basketInvoices as $invoice) {
    $totalBasketPrice += $invoice->getTotalPrice();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="assets/js/darkTheme.js"></script>

    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/btn-kit.css">
    <link rel="stylesheet" href="assets/css/navbar.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/basket.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <title>CyCruise - Votre panier</title>
</head>
<body>
<?php include "../component/navbar.php"; ?>

<main>
    <div class="basket-container">
        <div class="basket-header">
            <h1>Votre panier</h1>
            <p><?php echo count($basketInvoices); ?> croisière(s) en attente de paiement</p>
        </div>

        <?php if (empty($basketInvoices)): ?>
            <div class="empty-basket">
                <i class="fas fa-shopping-cart main-empty-basket-icon"></i>
                <h2>Votre panier est vide</h2>
                <p>Découvrez nos croisières et ajoutez-les à votre panier.</p>
                <a href="cruise-list.php" class="btn-primary">
                    <i class="fas fa-ship btn-icon"></i>
                    Voir les croisières
                </a>
            </div>
        <?php else: ?>
            <div class="basket-items">
                <?php foreach ($basketInvoices as $invoice): ?>
                    <div class="basket-item">
                        <div class="item-image">
                            <img src="<?php echo htmlspecialchars($invoice->getCruise()->getImg()); ?>"
                                 alt="<?php echo htmlspecialchars($invoice->getCruise()->getName()); ?>">
                        </div>
                        <div class="item-details">
                            <h3><?php echo htmlspecialchars($invoice->getCruise()->getName()); ?></h3>
                            <div class="item-metadata">
                                <div class="metadata-row">
                                    <i class="fas fa-calendar"></i>
                                    <span>Du <?php echo date('d/m/Y', strtotime($invoice->getCruise()->getStartDate())); ?> au <?php echo date('d/m/Y', strtotime($invoice->getCruise()->getEndDate())); ?></span>
                                </div>
                                <div class="metadata-row">
                                    <i class="fas fa-clock"></i>
                                    <span><?php echo htmlspecialchars($invoice->getCruise()->getDuration()); ?> jours</span>
                                </div>
                                <div class="metadata-row">
                                    <i class="fas fa-users"></i>
                                    <span><?php echo $invoice->getPassengerCount(); ?> passager(s)</span>
                                </div>
                            </div>

                            <div class="item-options">
                                <h4>Options sélectionnées:</h4>
                                <ul>
                                    <?php foreach ($invoice->getOptions() as $option): ?>
                                        <li>
                                            <span><?php echo htmlspecialchars($option->getName()); ?></span>
                                            <span>
                                                <?php if ($option->isPerPassenger()): ?>
                                                    <?php echo number_format($option->getPrice() * $invoice->getPassengerCount(), 2); ?> €
                                                    (<?php echo number_format($option->getPrice(), 2); ?> € × <?php echo $invoice->getPassengerCount(); ?>)
                                                <?php else: ?>
                                                    <?php echo number_format($option->getPrice(), 2); ?> €
                                                <?php endif; ?>
                                            </span>
                                        </li>
                                    <?php endforeach; ?>
                                </ul>
                            </div>
                        </div>
                        <div class="item-actions">
                            <div class="item-price">
                                <span class="price-label">Prix total:</span>
                                <span class="price-value"><?php echo number_format($invoice->getTotalPrice(), 2); ?> €</span>
                            </div>
                            <div class="item-buttons">
                                <a href="invoice.php?id=<?php echo htmlspecialchars($invoice->getId()); ?>"
                                   class="btn-secondary">
                                    <i class="fas fa-eye"></i> Détails
                                </a>
                                <form action="https://www.plateforme-smc.fr/cybank/index.php" method="POST" class="payment-form">
                                    <input type="hidden" name="transaction" value=<?php echo $invoice->getId() ?>>
                                    <input type="hidden" name="montant" value="<?php echo $invoice->getTotalPrice() ?>">
                                    <input type="hidden" name="vendeur" value="<?php echo $GLOBALS["SELLER"] ?>">
                                    <input type="hidden" name="retour" value=<?php echo $GLOBALS["CALLBACK_URL"] ?>>
                                    <input type="hidden" name="control"
                                           value="<?php echo $invoiceService->generatePaymentSalt($invoice) ?>">

                                    <button type="submit" class="btn-primary">
                                        <i class="fas fa-credit-card btn-icon"></i> Payer
                                    </button>
                                </form>
                                <form action="api/invoice/cancel.php" method="POST" class="cancel-form">
                                    <input type="hidden" name="invoice_id"
                                           value="<?php echo htmlspecialchars($invoice->getId()); ?>">
                                    <button type="submit" class="btn-danger">
                                        <i class="fas fa-trash"></i> Supprimer
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>

            <div class="basket-summary">
                <div class="summary-details">
                    <div class="summary-row">
                        <span>Total du panier</span>
                        <span><?php echo number_format($totalBasketPrice, 2); ?> €</span>
                    </div>
                </div>
                <div class="checkout-actions">
                    <a href="cruise-list.php" class="btn-secondary">
                        <i class="fas fa-arrow-left"></i> Continuer mes achats
                    </a>
                    <!--  Removed for now cause we can't paid bulk invoices
                    <?php if (count($basketInvoices) > 0): ?>
                        <form action="checkout.php" method="POST">
                            <?php foreach ($basketInvoices as $invoice): ?>
                                <input type="hidden" name="invoice_ids[]"
                                       value="<?php echo htmlspecialchars($invoice->getId()); ?>">
                            <?php endforeach; ?>
                            <button type="submit" class="btn-primary">
                                <i class="fas fa-credit-card btn-icon"></i> Payer maintenant
                            </button>
                        </form>
                    <?php endif; ?>
                    -->
                </div>
            </div>
        <?php endif; ?>
    </div>
</main>

<?php include "../component/footer.php"; ?>
</body>
</html>