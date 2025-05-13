<?php
require_once "../src/Services/AuthService.php";
require_once "../src/Repository/CruiseRepository.php";

session_start();

$authService = new AuthService();

if (!$authService->isLoggedIn()) {
    header("Location: login.php");
    exit();
}

$user = $authService->getUser();

if ($user === null) {
    header("Location: cruise-list.php");
    exit();
}

if (!isset($_GET['id'])) {
    header("Location: cruise-list.php");
    exit();
}

$cruise = CruiseRepository::getInstance()->findById($_GET['id']);

if ($cruise === null) {
    header("Location: cruise-list.php");
    exit();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="assets/js/darkTheme.js"></script>

    <link href="assets/css/app.css" rel="stylesheet">
    <link href="assets/css/btn-kit.css" rel="stylesheet">
    <link href="assets/css/navbar.css" rel="stylesheet">
    <link href="assets/css/footer.css" rel="stylesheet">

    <link href="assets/css/reservation.css" rel="stylesheet">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">

    <title>CyCruise - Your best cruise</title>
</head>

<body>
<?php include "../component/navbar.php"; ?>

<div class="reservation-container">
    <div class="cruise-header">
        <img src="<?php echo htmlspecialchars($cruise->getImg()); ?>"
             alt="<?php echo htmlspecialchars($cruise->getName()); ?>" class="cruise-image">
        <div class="cruise-info">
            <h1><?php echo htmlspecialchars($cruise->getName()); ?></h1>
            <div class="metadata-item">
                <i class="fas fa-calendar"></i>
                <span>Du <?php echo date('d/m/Y', strtotime($cruise->getStartDate())); ?> au <?php echo date('d/m/Y', strtotime($cruise->getEndDate())); ?></span>
            </div>
            <div class="metadata-item">
                <i class="fas fa-clock"></i>
                <span><?php echo htmlspecialchars($cruise->getDuration()); ?> Jour</span>
            </div>
            <div class="metadata-item">
                <i class="fas fa-ship"></i>
                <span><?php echo htmlspecialchars($cruise->getBoat()->getName()); ?></span>
            </div>
            <div class="metadata-item">
                <i class="fas fa-book"></i>
                <span><?php echo htmlspecialchars($cruise->getShortDescriptions()); ?></span>
            </div>
            <p class="cruise-price">À partir de <?php echo number_format($cruise->getPrice(), 2); ?> €</p>
        </div>
    </div>

    <form method="post" class="reservation-form">
        <div class="form-section" id="form-options-section">
            <h2>Sélectionnez vos options</h2>

        </div>

        <div class="form-section">
            <h2>Informations sur les passagers</h2>

            <div class="form-group">
                <label for="passengers">Nombre de passagers</label>
                <input type="number" id="passengers" name="passengers" min="1" max="5"
                       value="1">
            </div>

            <div id="passenger-fields">
                <fieldset>
                    <legend>Passager 1</legend>
                    <div class="form-group">
                        <label for="first_name_0">Prénom</label>
                        <input type="text" id="first_name_0" name="first_name_0"
                               value="<?php echo htmlspecialchars($user->getFirstname()) ?>"
                               required>
                    </div>
                    <div class="form-group">
                        <label for="last_name_0">Nom</label>
                        <input type="text" id="last_name_0" name="last_name_0"
                               value="<?php echo htmlspecialchars($user->getLastname()) ?>"
                               required>
                    </div>
                </fieldset>
            </div>
        </div>

        <div class="summary-section" id="summary-section">
            <h2 class="summary-title">Résumé de la réservation</h2>

            <div class="summary-item">
                <span>Prix de base de la croisière</span>
                <span><?php echo number_format($cruise->getPrice(), 2); ?> €</span>
            </div>

            <?php foreach ($selectedOptions as $type => $option): ?>
                <div class="summary-item">
                    <span><?php echo htmlspecialchars(ucfirst($type) . ': ' . $option->getName()); ?></span>
                    <span><?php echo number_format($option->getPrice(), 2); ?> €</span>
                </div>
            <?php endforeach; ?>

            <div class="summary-passenger">
                <span>Par passager </span>
                <span><?php echo number_format($passengerPrice, 2); ?> €</span>
            </div>
            <div class="summary-total">
                <span>Total</span>
                <span><?php echo number_format($totalPrice, 2); ?> €</span>
            </div>
        </div>

        <input type="hidden" name="cruise_id" value="<?php echo htmlspecialchars($cruise->getId()); ?>">

        <div class="submit-container">
            <a href="cruise-detail.php?id=<?php echo htmlspecialchars($cruise->getId()); ?>" class="btn-primary">
                <i class="fas fa-arrow-left btn-secondary-icon"></i> Retour
            </a>
            <button type="submit" formaction="create-invoice.php" class="btn-primary">
                <i class="fas fa-check btn-icon"></i> Confirmer la réservation
            </button>
        </div>
    </form>
</div>


<?php include "../component/footer.php"; ?>

<script src="assets/js/reservation.js"></script>
</body>
</html>
