<?php

require_once "../src/Repository/CruiseRepository.php";

session_start();

$boatList = BoatRepository::getInstance()->selectAll();
$cruiseList = CruiseRepository::getInstance()->findAll();


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
            <h3>Trouvez votre destinations</h3>
        </div>

        <form class="select-container" method="POST" action="search.php">
            <div class="input-group">
                <!--    <input id="search-cruise" name="search-cruise" required placeholder="Rechercher une destinations ..."
                           type="text"> -->
            </div>
            <div class="input-group">
                <label for="boat-select">Bateau</label>
                <select id="boat-select" name="boat-select">
                    <option value="*">Tout</option>
                    <?php foreach ($boatList as $boat): ?>
                        <option value="<?php echo htmlspecialchars($boat->getId()) ?>"><?php echo htmlspecialchars($boat->getName()) ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="input-group">
                <label for="start-date">Date de départ</label>
                <input id="start-date" name="start-date" required type="date">
            </div>
            <div class="input-submit">
                <button type="submit" class="btn-search">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </div>
        </form>
    </header>

    <section class="cruise-shop-list">
        <div class="grid-container">
            <?php foreach ($cruiseList as $cruise): ?>
                <div class="grid-item">
                    <a class="image-container"
                       href="cruise-detail.php?id=<?php echo htmlspecialchars($cruise->getId()) ?>">
                        <img alt="<?php echo htmlspecialchars($cruise->getName()) ?>"
                             src="<?php echo htmlspecialchars($cruise->getImg()) ?>">
                        <h2><?php echo htmlspecialchars($cruise->getName()) ?></h2>
                    </a>
                </div>
            <?php endforeach; ?>
        </div>
    </section>
</main>

<?php include "../component/footer.php"; ?>
</body>
</html>