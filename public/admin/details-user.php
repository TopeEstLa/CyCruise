<?php

require_once "../../src/Services/AuthService.php";
require_once "../../src/Repository/UserRepository.php";

session_start();

$authService = new AuthService();

if ($_SERVER['REQUEST_METHOD'] != 'GET') {
    header("Location: list-user.php");
    exit;
}

if (!isset($_GET['user_id'])) {
    header("Location: list-user.php");
    exit;
}

$selectUser = UserRepository::getInstance()->findById($_GET['user_id']);
if ($selectUser == null) {
    header("Location: list-user.php");
    exit;
}

?>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <link href="../assets/css/app.css" rel="stylesheet"> <!-- global css kit -->
    <link href="../assets/css/btn-kit.css" rel="stylesheet"> <!-- btn kit for the website -->
    <link href="../assets/css/admin/navbar.css" rel="stylesheet">
    <link href="../assets/css/admin/dashboard.css" rel="stylesheet">

    <link href="../assets/css/admin/user-details.css" rel="stylesheet">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <title>CyCruise - Admin dashboard</title>
</head>

<body>
<?php include "../../component/admin/sidebar.php"; ?>

<main>
    <div class="user-header">
        <h1>Gestion de l'utilisateur</h1>
    </div>

    <div>
        <form class="user-grid" id="update-user-form">
            <input type="hidden" id="target_user_id" name="target_user_id" value="<?php echo $selectUser->getId() ?>">
            <div class="user-info-card">
                <div class="card-header">
                    <h2>Informations personnelles</h2>
                </div>
                <div class="form-group">
                    <label for="firstname">Prénom</label>
                    <input id="firstname" name="firstname" type="text"
                           value="<?php echo htmlspecialchars($selectUser->getFirstname()) ?>"/>
                </div>
                <div class="form-group">
                    <label for="lastname">Nom</label>
                    <input id="lastname" name="lastname" type="text"
                           value="<?php echo htmlspecialchars($selectUser->getLastname()) ?>"/>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" name="email" type="email"
                           value="<?php echo htmlspecialchars($selectUser->getEmail()) ?>"/>
                </div>
                <div class="form-group">
                    <label for="password">Mots de passe</label>
                    <input id="password" name="password" type="password"
                           value=""/>
                </div>
                <div class="form-group">
                    <label for="register-date">Date d'inscription</label>
                    <input disabled id="register-date" name="register-date" type="text"
                           value="<?php echo htmlspecialchars($selectUser->getCreatedAt()) ?>"/>
                </div>
                <div class="form-group">
                    <label for="update-date">Mis à jour</label>
                    <input disabled id="update-date" name="update-date" type="text"
                           value="<?php echo htmlspecialchars($selectUser->getUpdatedAt()) ?>"/>
                </div>
            </div>

            <div class="user-status-card">
                <div class="card-header">
                    <h2>Statut et permissions</h2>
                </div>
                <div class="status-options">
                    <label class="status-option <?php if ($selectUser->getRole() == UserRole::DEFAULT) echo 'current' ?>">
                        <input name="role" type="radio"
                               value="DEFAULT" <?php if ($selectUser->getRole() == UserRole::DEFAULT) echo 'checked' ?>/>
                        <div>
                            <h3>Utilisateur standard</h3>
                            <p>Client standard aucune offres exclusives ou remises</p>
                        </div>
                    </label>
                    <label class="status-option <?php if ($selectUser->getRole() == UserRole::VIP) echo 'current' ?>">
                        <input name="role" type="radio"
                               value="VIP" <?php if ($selectUser->getRole() == UserRole::VIP) echo 'checked' ?>/>
                        <div>
                            <h3>VIP</h3>
                            <p>Accès aux offres exclusives et remises</p>
                        </div>
                    </label>
                    <label class="status-option <?php if ($selectUser->getRole() == UserRole::PREMIUM) echo 'current' ?>">
                        <input name="role" type="radio"
                               value="PREMIUM" <?php if ($selectUser->getRole() == UserRole::PREMIUM) echo 'checked' ?>/>
                        <div>
                            <h3>Premium</h3>
                            <p>Accès aux offres exclusives + et remises + </p>
                        </div>
                    </label>
                    <label class="status-option <?php if ($selectUser->getRole() == UserRole::BAN) echo 'current' ?>">
                        <input name="role" type="radio"
                               value="BAN" <?php if ($selectUser->getRole() == UserRole::BAN) echo 'checked' ?>/>
                        <div>
                            <h3>Bannir</h3>
                            <p>Ban</p>
                        </div>
                    </label>
                    <label class="status-option <?php if ($selectUser->getRole() == UserRole::ADMIN) echo 'current' ?>">
                        <input name="role" type="radio"
                               value="ADMIN" <?php if ($selectUser->getRole() == UserRole::ADMIN) echo 'checked' ?>/>
                        <div>
                            <h3>Administrateur</h3>
                            <p>Admin</p>
                        </div>
                    </label>
                </div>

                <div class="actions">
                    <button id="save-button-submit" class="btn btn-primary">Sauvegarder les modifications</button>
                </div>
            </div>
        </form>
    </div>
</main>

<script src="../assets/js/admin/userUpdate.js"></script>
</body>
</html>