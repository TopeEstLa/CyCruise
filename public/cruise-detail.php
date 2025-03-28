<?php

require_once "../src/Repository/CruiseRepository.php";
require_once "../src/Services/AuthService.php";

session_start();

if (!isset($_GET['id'])) {
    header("Location: cruise-list.php");
    exit();
}

$authService = new AuthService();

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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="assets/css/app.css" rel="stylesheet">
    <link href="assets/css/btn-kit.css" rel="stylesheet">
    <link href="assets/css/navbar.css" rel="stylesheet">
    <link href="assets/css/footer.css" rel="stylesheet">
    <link href="assets/css/cruise-details.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <title>CyCruise - Your best cruise</title>
</head>

<body>
<?php include "../component/navbar.php"; ?>

<main>
    <header class="cruise-detail-header">
        <img alt="<?php echo htmlspecialchars($cruise->getName()) ?> Cruises"
             src="assets/img/mediterranean-detail-cruises.png">
        <h1>CROISIÈRES <?php echo htmlspecialchars($cruise->getName()) ?></h1>
    </header>

    <section class="cruise-overview">
        <div class="cruise-image">
            <img alt="<?php echo htmlspecialchars($cruise->getName()) ?> Cruise" src="<?php echo $cruise->getImg() ?>">
        </div>
        <div class="cruise-info">
            <h2>Détails de la croisière</h2>
            <p class="cruise-description"><?php echo nl2br($cruise->getDescription()); ?></p>

            <div class="cruise-metadata">
                <div class="metadata-item">
                    <i class="fas fa-calendar"></i>
                    <span>Du <?php echo date('d/m/Y', strtotime($cruise->getStartDate())); ?> au <?php echo date('d/m/Y', strtotime($cruise->getEndDate())); ?></span>
                </div>
                <div class="metadata-item">
                    <i class="fas fa-clock"></i>
                    <span><?php echo $cruise->getDuration(); ?> jours</span>
                </div>
                <div class="metadata-item">
                    <i class="fas fa-ship"></i>
                    <span>Bateau: <?php echo htmlspecialchars($cruise->getBoat()->getName()); ?></span>
                </div>
                <div class="metadata-item">
                    <i class="fas fa-euro-sign"></i>
                    <span>À partir de <?php echo number_format($cruise->getPrice(), 2, ',', ' '); ?> €</span>
                </div>
            </div>

            <?php if ($authService->isLoggedIn()): ?>
                <a href="reservation.php?id=<?php echo $cruise->getId(); ?>" class="btn-primary">Réserver
                    maintenant</a>
            <?php else: ?>
                <a href="login.php" class="btn-primary">Connectez-vous pour réserver</a>
            <?php endif; ?>
        </div>
    </section>

    <section class="cruise-stages">
        <h2>Étapes de la croisière</h2>
        <div class="stages-container">
            <?php foreach ($cruise->getStages() as $stage): ?>
                <div class="stage-card">
                    <div class="stage-info">
                        <h3><?php echo htmlspecialchars($stage->getName()); ?></h3>
                        <div class="stage-dates">
                            <i class="fas fa-calendar-day"></i>
                            <span>Du <?php echo date('d/m/Y', strtotime($stage->getStartDate())); ?> au <?php echo date('d/m/Y', strtotime($stage->getEndDate())); ?></span>
                        </div>
                        <p><?php echo nl2br(htmlspecialchars($stage->getDescriptions())); ?></p>
                    </div>
                    <div class="stage-map">
                        <iframe
                                src="<?php echo $stage->buildGoogleMapUrl(); ?>"
                                width="100%"
                                height="250"
                                style="border:0;"
                                allowfullscreen=""
                                loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade">
                        </iframe>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </section>

    <section class="cruise-boat">
        <h2>Le bateau</h2>
        <div class="boat-details">
            <div class="boat-image">
                <img src="<?php echo htmlspecialchars($cruise->getBoat()->getImg()); ?>"
                     alt="<?php echo htmlspecialchars($cruise->getBoat()->getName()); ?>">
            </div>
            <div class="boat-info">
                <h3><?php echo htmlspecialchars($cruise->getBoat()->getName()); ?></h3>
                <div class="boat-specs">
                    <div class="spec-item">
                        <i class="fas fa-users"></i>
                        <span>Capacité: <?php echo $cruise->getBoat()->getCapacity() ?> passagers</span>
                    </div>
                    <div class="spec-item">
                        <i class="fas fa-ruler-horizontal"></i>
                        <span>Longueur: <?php echo $cruise->getBoat()->getLength() ?> m</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="cta-section">
        <div class="cta-content">
            <h2>Prêt à embarquer ?</h2>
            <p>Réservez dès maintenant votre place pour cette croisière exceptionnelle</p>
            <?php if ($authService->isLoggedIn()): ?>
                <a href="reservation.php?id=<?php echo $cruise->getId(); ?>" class="btn-primary">Réserver
                    maintenant</a>
            <?php else: ?>
                <a href="login.php" class="btn-primary">Connectez-vous pour réserver</a>
            <?php endif; ?>
        </div>
    </section>
</main>

<?php include "../component/footer.php"; ?>
</body>
</html>