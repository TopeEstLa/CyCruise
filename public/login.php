<?php

require_once "../src/Services/AuthService.php";

session_start();

$authService = new AuthService();

if ($authService->isLoggedIn()) {
    header("Location: account.php");
    exit;
}

if (isset($_POST['login'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    if ($authService->login($email, $password)) {
        header("Location: account.php");
        exit;
    } else {
        $error = "Invalid credentials. Please try again.";
    }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="assets/css/app.css" rel="stylesheet"> <!-- global css kit -->
    <link href="assets/css/btn-kit.css" rel="stylesheet"> <!-- btn kit for the website -->
    <link href="assets/css/navbar.css" rel="stylesheet"> <!-- navbar css for the website -->
    <link href="assets/css/footer.css" rel="stylesheet">

    <link href="assets/css/login.css" rel="stylesheet">

    <title>CyCruise - Your best cruise</title>
</head>
<body>
<?php include "../component/navbar.php"; ?>

<main>
    <main>
        <section class="login-card">
            <h1>Connexion</h1>
            <form method="POST" action="">
                <div class="input-group">
                    <label for="email">Email</label>
                    <input id="email" name="email" required type="email">
                </div>
                <div class="input-group">
                    <label for="password">Mot de passe</label>
                    <input id="password" name="password" required type="password">
                </div>
                <div class="input-group">
                    <button class="btn btn-primary" name="login" type="submit">Se connecter</button>
                </div>
            </form>
            <div class="login-footer">
                <p>Vous n'avez pas de compte ? <a href="register.php">Inscrivez-vous !</a></p>
                <p><a href="#">Mot de passe oublié ?</a></p>
            </div>
        </section>
    </main>
</main>

<?php include "../component/footer.php"; ?>
</body>
