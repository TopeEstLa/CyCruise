<?php

require_once "../src/Services/AuthService.php";
require_once "../src/Utils/getapikey.php";

session_start();

$authService = new AuthService();

?>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/btn-kit.css">
    <link rel="stylesheet" href="assets/css/navbar.css">
    <link rel="stylesheet" href="assets/css/footer.css">

    <link rel="stylesheet" href="assets/css/home.css">

    <title>CyCruise - Your best cruise</title>
</head>

<body>
<?php include "../component/navbar.php"; ?>
<main>
    <section class="main-section">
        <div class="main-content">
            <h1 class="main-title">
                Votre croisière de <span class="highlight">rêve</span> commence ici.
            </h1>
            <p class="main-subtitle">
                CyCruise vous propose des croisières de luxe à travers le monde entier.
            </p>
            <a class="btn-primary" href="cruise-list.php">
                <i class="fa fa-plane btn-icon"></i>
                VOYAGER MAINTENANT
            </a>
        </div>
        <div class="main-image">
            <img alt="Cruise Image" class="cruise-image" src="assets/img/cruise-image.png">
        </div>
    </section>

    <section class="featured-section">
        <svg viewBox="0 0 1440 320" xmlns="http://www.w3.org/2000/svg">
            <path d="M0,256L60,245.3C120,235,240,213,360,213.3C480,213,600,235,720,250.7C840,267,960,277,1080,282.7C1200,288,1320,288,1380,288L1440,288L1440,320L1380,320C1320,320,1200,320,1080,320C960,320,840,320,720,320C600,320,480,320,360,320C240,320,120,320,60,320L0,320Z"
                  fill="#00b7e0"
                  fill-opacity="1"></path>
        </svg>
        <div class="featured-grid-parent">
            <div class="featured-container">
                <div class="section-header">
                    <h1 class="title">NOS MEILLEURES DESTINATIONS</h1>
                    <h2 class="subtitle">Découvrez les <span
                                class="highlight-secondary">meilleures destinations de croisières</span>, grâce à une
                        multitude
                        d'itinéraires conçus pour révéler les paysages, les sons et les saveurs des <span
                                class="highlight-secondary">cultures les plus
                            fascinantes du monde.</span></h2>
                </div>
                <div>
                    <div class="featured-grid-container">
                        <div class="cruise-card">
                            <img alt="Cruise 1" class="cruise-card-image"
                                 src="public/img/cruise-data/mediterranean.png">
                            <div class="cruise-card-content">
                                <h3>MÉDITERRANÉE</h3>
                                <p>Choisissez CyCruise pour un voyage extraordinaire en Méditerranée ! Que vous
                                    préfériez
                                    explorer la Méditerranée occidentale ou orientale, préparez-vous à découvrir
                                    certains
                                    des
                                    plus beaux sites classés au patrimoine mondial de l'UNESCO.</p>
                                <a class="cruise-card-read-more btn-secondary" href="mediterranean-cruise-detail.html">
                                    <i class="fa fa-compass btn-secondary-icon"></i>
                                    Explorer
                                </a>
                            </div>
                        </div>

                        <div class="cruise-card">
                            <img alt="Cruise 2" class="cruise-card-image"
                                 src="public/img/cruise-data/caribbean-miami.png">
                            <div class="cruise-card-content">
                                <h3>CARAÏBES</h3>
                                <p>CyCruise vous emmène au paradis tropical des Caraïbes ! Des plages de rêve, où le
                                    sable
                                    blanc
                                    et la mer turquoise vous attendent pour nager, faire de la plongée et vous détendre
                                    tout
                                    en
                                    profitant de la beauté des lieux.</p>
                                <a class="cruise-card-read-more btn-secondary" href="mediterranean-cruise-detail.html">
                                    <i class="fa fa-compass btn-secondary-icon"></i>
                                    Explorer
                                </a>
                            </div>
                        </div>

                        <div class="cruise-card">
                            <img alt="Cruise 3" class="cruise-card-image" src="public/img/cruise-data/antilles.png">
                            <div class="cruise-card-content">
                                <h3>ANTILLES</h3>
                                <p>Mettez les voiles avec CyCruise et plongez dans les rythmes dynamiques des Antilles !
                                    Explorez des îles où les traditions colorées et les mélodies créoles prennent
                                    vie.</p>
                                <a class="cruise-card-read-more btn-secondary" href="mediterranean-cruise-detail.html">
                                    <i class="fa fa-compass btn-secondary-icon"></i>
                                    Explorer
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <svg viewBox="0 0 1440 320" xmlns="http://www.w3.org/2000/svg">
            <path d="M0,192L48,176C96,160,192,128,288,96C384,64,480,32,576,32C672,32,768,64,864,85.3C960,107,1056,117,1152,106.7C1248,96,1344,64,1392,48L1440,32L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z"
                  fill="#00b7e0"
                  fill-opacity="1"></path>
        </svg>
    </section>
</main>
<?php include "../component/footer.php"; ?>
</body>
</html>