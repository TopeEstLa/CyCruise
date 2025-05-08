<?php

require_once "../src/Services/AuthService.php";

session_start();

$authService = new AuthService();

if ($authService->isLoggedIn()) {
    header("Location: account.php");
    exit;
}

if (isset($_POST['register'])) {
    $email = $_POST['email'];

    if ($authService->hasAccount($email)) {
        $error = "An account with this email already exists!";
    } else {
        $password = $_POST['password'];
        $passwordConfirm = $_POST['password-confirm'];

        if ($password != $passwordConfirm) {
            $error = "Passwords do not match!";
        } else {
            $firstname = $_POST['firstname'];
            $lastname = $_POST['lastname'];

            if (!preg_match("/^[a-zA-Z]+$/", $firstname)) {
                $error = "Invalid first name!";
            } elseif (!preg_match("/^[a-zA-Z]+$/", $lastname)) {
                $error = "Invalid last name!";
            } elseif (empty($email) || empty($password) || empty($firstname) || empty($lastname)) {
                $error = "All fields are required!";
            }

            $birth = $_POST['birth'];

            if ($authService->register($email, $password, $firstname, $lastname, $birth)) {
                header("Location: account.php");
            } else {
                $error = "Registration failed! Please try again.";
            }
            exit;
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script src="assets/js/darkTheme.js"></script>

    <link href="assets/css/app.css" rel="stylesheet"> <!-- global css kit -->
    <link href="assets/css/btn-kit.css" rel="stylesheet"> <!-- btn kit for the website -->
    <link href="assets/css/navbar.css" rel="stylesheet"> <!-- navbar css for the website -->
    <link href="assets/css/footer.css" rel="stylesheet">

    <link href="assets/css/register.css" rel="stylesheet">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <title>CyCruise - Your best cruise</title>
</head>


<body>
<?php include "../component/navbar.php"; ?>

<main>
    <section class="register-card">
        <h1>Inscriptions</h1>
        <div class="error-message" id="error-message">
            <?php if (isset($error)): ?>
                <?php echo $error; ?>
            <?php endif; ?>
        </div>
        <form method="POST" action="" id="register-form">
            <div class="input-group">
                <label for="firstname">Prénom</label>
                <input id="firstname" name="firstname" required type="text">
            </div>
            <div class="input-group">
                <label for="lastname">Nom</label>
                <input id="lastname" name="lastname" required type="text">
            </div>
            <div class="input-group">
                <label for="email">Email</label>
                <input id="email" name="email" required type="email">
            </div>
            <div class="input-group">
                <label for="birth">Date de naissance</label>
                <input id="birth" name="birth" required type="date">
            </div>
            <div class="input-group">
                <label for="password">Mot de passe</label>
                <input id="password" name="password" required type="password">
            </div>
            <div class="input-group">
                <label for="password-confirm">Confirmations mot de passe</label>
                <input id="password-confirm" name="password-confirm" required type="password">
            </div>
            <div class="input-group">
                <label for="show-password">
                    <input type="checkbox" id="show-password" name="show-password"> Voir le mots de passe
                </label>
            </div>
            <div class="input-group">
                <button class="btn btn-primary" id="submit-button" name="register">Crée mon compte</button>
            </div>
        </form>
        <div class="register-footer">
            <p>Vous avez un compte ? <a href="login.php">Connectez-vous !</a></p>
        </div>
    </section>
</main>

<?php include "../component/footer.php"; ?>
<script src="assets/js/register.js"></script>
</body>
</html>