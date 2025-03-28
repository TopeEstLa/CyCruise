<?php

require_once "../src/Services/AuthService.php";
require_once "../src/Repository/BoatRepository.php";
require_once "../src/Repository/CruiseRepository.php";

if ($_SERVER["REQUEST_METHOD"] != "POST") {
    header("Location: index.php");
    exit;
}

session_start();

$authService = new AuthService();

if ($authService->isLoggedIn()) {
    header("Location: index.php");
    exit;
}

if (!isset($_POST["search-cruise"])) {
    header("Location: index.php");
    exit;
}

if (!isset($_POST["boat-select"])) {
    header("Location: index.php");
    exit;
}

if (!isset($_POST["start-date"])) {
    header("Location: index.php");
    exit;
}

$searchCruise = $_POST["search-cruise"];
$boatSelect = $_POST["boat-select"];
$startDate = $_POST["start-date"];

if ($boatSelect != "*") {
    $cruiseList = CruiseRepository::getInstance()->findAllByNameContainAndBoatIdAndStartDate($startDate, $boatSelect, $searchCruise);
} else {
    $cruiseList = CruiseRepository::getInstance()->findAllByNameContainAndStartDate($startDate, $searchCruise);
}

?>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <link href="assets/css/app.css" rel="stylesheet"> <!-- global css kit -->
    <link href="assets/css/btn-kit.css" rel="stylesheet"> <!-- btn kit for the website -->
    <link href="assets/css/navbar.css" rel="stylesheet"> <!-- navbar css for the website -->
    <link href="assets/css/footer.css" rel="stylesheet">

    <link href="assets/css/cruise-list.css" rel="stylesheet">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <title>CyCruise - Your best cruise</title>
</head>
<body>
<?php include "../component/navbar.php"; ?>

<main>
    <header class="cruise-list-header">
        <div class="cruise-list-header-content">
            <h1>DESTINATIONS CROISIÈRES</h1>
            <p>Découvrez les meilleures destinations de croisière, avec une grande variété d'itinéraires organisés pour
                révéler les images, <br>les sons et les saveurs des cultures les plus fascinantes du monde. Découvrez la
                beauté de la <span class="highlight">Méditerranée</span> (<span class="highlight">orientale</span> et
                <span class="highlight">occidentale</span>) <br> ou partez en croisière aux <span class="highlight">îles Canaries et Madère</span>.
                Explorez l<span class="highlight">'Amérique du Sud</span>, la magie des <span
                    class="highlight">Émirats</span> et d'<span class="highlight">Amérique du Nord</span>, <br>le
                mystère des <span class="highlight">pays nordiques</span>,
                l'exotisme des <span class="highlight">Caraïbes</span>, nos croisières d'<span
                    class="highlight">Asie</span> et d'<span class="highlight">Afrique du Sud</span> et
                l’exclusivité de notre île privée
                <span class="highlight">Ocean Cay Cy Marine Reserve</span>.</p>
        </div>
    </header>

    <section class="cruise-shop-list">
        <div class="grid-container">
            <?php foreach ($cruiseList as $cruise): ?>
                <div class="grid-item">
                    <a class="image-container" href="cruise-detail.php?id=<?php echo $cruise->getId() ?>">
                        <img alt="<?php echo $cruise->getName() ?>" src="<?php echo $cruise->getImg() ?>">
                        <h2><?php echo $cruise->getName() ?></h2>
                    </a>
                </div>
            <?php endforeach; ?>
        </div>
    </section>
</main>

<?php include "../component/footer.php"; ?>
</body>
</html>
