<?php

require_once "../src/Services/AuthService.php";
require_once "../src/Repository/UserRepository.php";

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

?>


<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">

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
                <form method="POST">
                    <h2>Mon Compte</h2>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input id="email" name="email" type="email"
                               value="<?php echo htmlspecialchars($user->getEmail()) ?>">
                    </div>
                    <div class="form-group">
                        <label for="firstname">Prénom</label>
                        <input id="firstname" name="firstname" type="text"
                               value="<?php echo htmlspecialchars($user->getFirstname()) ?>">
                    </div>
                    <div class="form-group">
                        <label for="lastname">Nom</label>
                        <input id="lastname" name="lastname" type="text"
                               value="<?php echo htmlspecialchars($user->getLastname()) ?>">
                    </div>
                    <div class="form-group">
                        <label for="birth">Date de naissance</label>
                        <input id="birth" name="birth" type="date" value="<?php echo htmlspecialchars($user->getBirth()) ?>">
                    </div>
                    <button class="btn-primary" type="submit">Sauvegarder mes informations</button>
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
                <li class="cruise-item">
                    <h3>Tour des Caraïbes</h3>
                    <span class="cruise-date">25 Mars 2025</span>
                    <p>Croisière de 5 jours dans les Caraïbes</p>
                    <a class="reservation-status pending" href="reservation-details.html">En attente de payment</a>
                </li>
                <li class="cruise-item">
                    <h3>Tour des Caraïbes</h3>
                    <span class="cruise-date">10 Aout 2025</span>
                    <p>Croisière de 14 jours dans les Caraïbes</p>
                    <a class="reservation-status cancelled" href="reservation-details.html">Annulé</a>
                </li>
                <li class="cruise-item">
                    <h3>Tour des Caraïbes</h3>
                    <span class="cruise-date">10 Aout 2025</span>
                    <p>Croisière de 14 jours dans les Caraïbes</p>
                    <a class="reservation-status confirmed" href="reservation-details.html">Confirmée</a>
                </li>
                <li class="cruise-item">
                    <h3>Tour des Caraïbes</h3>
                    <span class="cruise-date">10 Aout 2025</span>
                    <p>Croisière de 14 jours dans les Caraïbes</p>
                    <a class="reservation-status confirmed" href="reservation-details.html">Confirmée</a>
                </li>

            </ul>
        </div>

        <div class="account-section">
            <h2>Mes dernières croisières</h2>
            <ul class="cruise-list">
                <li class="cruise-item">
                    <h3>Croisière Paradis Caraïbes</h3>
                    <span class="cruise-date">15 Décembre 2024</span>
                    <p>Croisière de 7 jours à la Jamaïque, aux îles Caïmans et au Mexique</p>
                </li>
                <li class="cruise-item">
                    <h3>Aventure Méditerranéenne</h3>
                    <span class="cruise-date">5 Août 2024</span>
                    <p>Croisière de 10 jours en Grèce, Italie et Espagne</p>
                </li>
                <li class="cruise-item">
                    <h3>Découverte de l'Alaska</h3>
                    <span class="cruise-date">20 Juin 2024</span>
                    <p>Croisière de 5 jours à travers l'Inside Passage</p>
                </li>
                <li class="cruise-item">
                    <h3>Découverte de l'Alaska</h3>
                    <span class="cruise-date">20 Juin 2024</span>
                    <p>Croisière de 5 jours à travers l'Inside Passage</p>
                </li>
                <li class="cruise-item">
                    <h3>Découverte de l'Alaska</h3>
                    <span class="cruise-date">20 Juin 2024</span>
                    <p>Croisière de 5 jours à travers l'Inside Passage</p>
                </li>
                <li class="cruise-item">
                    <h3>Découverte de l'Alaska</h3>
                    <span class="cruise-date">20 Juin 2024</span>
                    <p>Croisière de 5 jours à travers l'Inside Passage</p>
                </li>
                <li class="cruise-item">
                    <h3>Découverte de l'Alaska</h3>
                    <span class="cruise-date">20 Juin 2024</span>
                    <p>Croisière de 5 jours à travers l'Inside Passage</p>
                </li>

            </ul>
        </div>
    </div>
</main>


<?php include "../component/footer.php"; ?>
</body>

</html>