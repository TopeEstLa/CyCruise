<?php

session_start();

require_once "../src/Repository/BoatRepository.php";

$boatRepository = BoatRepository::getInstance();

$defaultBoats = $boatRepository->selectAllByType(BoatType::DEFAULT);
$exploraBoats = $boatRepository->selectAllByType(BoatType::EXPLORA);

?>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="stylesheet" href="assets/css/btn-kit.css">
    <link rel="stylesheet" href="assets/css/navbar.css">
    <link rel="stylesheet" href="assets/css/footer.css">

    <link rel="stylesheet" href="assets/css/fleet-list.css">

    <title>CyCruise - Your best cruise</title>
</head>

<body>
<?php include "../component/navbar.php"; ?>
<main>
    <section class="fleet-list-header">
        <h1>NOS NAVIRES DE CROISIÈRE</h1>
        <p>Alors que nous continuons à développer et à améliorer notre flotte, <span class="highlight">chaque navire de CyCruise</span>
            offre
            à nos hôtes un large éventail de services. <br>
            Alliant élégance classique et innovations de pointe, nos navires de croisière proposent ce qu’il y a de
            mieux en matière <span class="highlight">de confort, de restauration, d'innovation, de divertissement et de vie à bord.</span>
            <br> Nos
            navires de croisière les plus récents sont également dotés d'une technologie embarquée qui vise à
            atténuer notre impact sur la nature.
        </p>
    </section>

    <section class="fleet-list">
        <div class="grid-container">
            <?php foreach ($defaultBoats as $defaultBoat) { ?>
                <div class="grid-item">
                    <a class="image-container" >
                        <img alt="<?= $defaultBoat->getName() ?>" src="<?= $defaultBoat->getImg() ?>">
                        <h2><?= $defaultBoat->getName() ?></h2>
                    </a>
                </div>
            <?php } ?>
        </div>
    </section>

    <section class="fleet-list-header">
        <h1>DÉCOUVREZ EXPLORA JOURNEYS</h1>
        <p>Immergez-vous dans l'univers des <span class="highlight">navires Explora Journeys</span> et laissez-vous
            séduire par leur design raffiné
            et leur technologie de pointe. <br>
            Chaque détail a été pensé pour vous offrir une expérience de <span class="highlight">voyages en
            mer d'exception</span> et pour se sentir <span class="highlight">comme à bord d'un yacht privé</span>, <br>
            des <span class="highlight">suites élégantes avec vue
            sur
            l'océan</span> aux services personnalisés, en passant par <span
                class="highlight">une gastronomie unique</span>, des <span
                class="highlight">divertissements variés</span> et
            des <span class="highlight">activités de bien-être</span>.
        </p>
    </section>

    <section class="fleet-list">
        <div class="grid-container">
            <?php foreach ($exploraBoats as $exploraBoat) { ?>
                <div class="grid-item">
                    <a class="image-container" >
                        <img alt="<?= $exploraBoat->getName() ?>" src="<?= $exploraBoat->getImg() ?>">
                    </a>
                </div>
            <?php } ?>
        </div>
    </section>
</main>

<?php include "../component/footer.php"; ?>
</body>

