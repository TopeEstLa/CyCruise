<?php

session_start();

?>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/btn-kit.css">
    <link rel="stylesheet" href="assets/css/navbar.css">
    <link rel="stylesheet" href="assets/css/footer.css">

    <link rel="stylesheet" href="assets/css/about.css">


    <title>CyCruise - Your best cruise</title>
</head>

<body>
<?php include "../component/navbar.php"; ?>

<header class="video-header">
    <video autoplay class="video-bg" loop muted playsinline>
        <!-- For the moment I can't find a nice cruise video so, while waiting for a great ✨ Arcane ✨ video -->
        <source src="https://cdn.antoninp.dev/videos/arcane.mp4" type="video/mp4">
    </video>
    <div class="overlay"></div>
    <div class="header-content">
        <h1 class="header-title">Découvrez l'Excellence des Croisières de Luxe</h1>
        <div class="scroll-indicator">
            <span>Scroll pour découvrir</span>
            <i class="fas fa-chevron-down"></i>
        </div>
    </div>
</header>

<main>
    <section class="content-section">
        <div class="content-row">
            <div class="content-image">
                <img alt="Luxury Cruise Experience" src="assets/img/cruise-data/caribbean-miami.png">
            </div>
            <div class="content-text">
                <h2>Notre Histoire</h2>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                    industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type
                    and scrambled it to make a type specimen book. It has survived not only five centuries, but also the
                    leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
        </div>

        <div class="content-row">
            <div class="content-image">
                <img alt="Premium Service" src="assets/img/cruise-image.png">
            </div>
            <div class="content-text">
                <h2>Notre Engagement</h2>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                    industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type
                    and scrambled it to make a type specimen book. It has survived not only five centuries, but also the
                    leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
        </div>

        <div class="content-row">
            <div class="content-image">
                <img alt="Sustainable Tourism" src="assets/img/cruise-data/mediterranean.png">
            </div>
            <div class="content-text">
                <h2>Notre Vision Durable</h2>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                    industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type
                    and scrambled it to make a type specimen book. It has survived not only five centuries, but also the
                    leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
        </div>
    </section>
</main>

<?php include "../component/footer.php"; ?>
</body>

</html>