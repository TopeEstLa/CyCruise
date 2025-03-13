<?php

require_once "../src/Repository/ContactRepository.php";

session_start();

$contactRepository = ContactRepository::getInstance();


if (isset($_POST['contact'])) {
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $subject = $_POST['subject'];
    $content = $_POST['content'];

    if ($contactRepository->insert($firstname, $lastname, $email, $phone, $subject, $content)) {
    } else {
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

    <link href="assets/css/contact.css" rel="stylesheet">

    <title>CyCruise - Your best cruise</title>
</head>
<body>
<?php include "../component/navbar.php"; ?>

<main>
    <div class="contact-header">
        <h1>CONTACTEZ-NOUS</h1>
        <p>Notre équipe est à votre disposition pour répondre à toutes vos questions</p>
    </div>

    <div class="contact-container">
        <div class="contact-info">
            <div class="info-card">
                <i class="fas fa-phone"></i>
                <h3>Par téléphone</h3>
                <p>Du lundi au vendredi</p>
                <p>9h00 - 18h00</p>
                <a href="tel:+33000000000">+33 1 00 00 00 00</a>
            </div>

            <div class="info-card">
                <i class="fas fa-envelope"></i>
                <h3>Par email</h3>
                <p>Réponse sous 24h</p>
                <a href="mailto:contact@squid.dev">contact@squid.dev</a>
            </div>

            <div class="info-card">
                <i class="fas fa-map-marker-alt"></i>
                <h3>Notre adresse</h3>
                <p>Avenue du Parc</p>
                <p>95000 Cergy, France</p>
            </div>
        </div>

        <div class="contact-form-container">
            <div class="form-header">
                <h2>Envoyez-nous un message</h2>
            </div>

            <form method="post" class="contact-form">
                <div class="form-row">
                    <div class="form-group">
                        <label for="firstname">Prénom</label>
                        <input id="firstname" name="firstname" required type="text">
                    </div>
                    <div class="form-group">
                        <label for="lastname">Nom</label>
                        <input id="lastname" name="lastname" required type="text">
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input id="email" name="email" required type="email">
                    </div>
                    <div class="form-group">
                        <label for="phone">Téléphone</label>
                        <input id="phone" name="phone" type="tel">
                    </div>
                </div>

                <div class="form-group">
                    <label for="subject">Sujet</label>
                    <select id="subject" name="subject" required>
                        <option value="">Sélectionnez un sujet</option>
                        <option value="reservation">Question sur une réservation</option>
                        <option value="information">Demande d'information</option>
                        <option value="complaint">Réclamation</option>
                        <option value="partnership">Proposition de partenariat</option>
                        <option value="other">Autre</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="content">Message</label>
                    <textarea id="content" name="content" required rows="6"></textarea>
                </div>

                <button class="btn-primary" type="submit" name="contact">
                    <i class="fas fa-paper-plane btn-icon"></i>
                    Envoyer le message
                </button>
            </form>
        </div>
    </div>

    <div class="map-container">
        <h2>Où nous trouver</h2>
        <div class="map">
            <iframe
                    allowfullscreen=""
                    height="450"
                    loading="lazy"
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2290.3330472759944!2d2.0697195729084314!3d49.0345785629014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e6f5265bbc2f79%3A0x301dd6c7102e1852!2sCY%20Tech!5e1!3m2!1sfr!2sfr!4v1739103234628!5m2!1sfr!2sfr"
                    style="border:0;"
                    width="100%">
            </iframe>
        </div>
    </div>
</main>

<?php include "../component/footer.php"; ?>
</body>
</html>

