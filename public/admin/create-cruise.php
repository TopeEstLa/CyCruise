<?php
require_once "../../src/Services/AuthService.php";
require_once "../../src/Repository/BoatRepository.php";
require_once "../../src/Repository/CruiseRepository.php";

session_start();

$authService = new AuthService();
$boatRepository = BoatRepository::getInstance();
$boats = $boatRepository->selectAll();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="../assets/css/app.css" rel="stylesheet">
    <link href="../assets/css/btn-kit.css" rel="stylesheet">
    <link href="../assets/css/admin/navbar.css" rel="stylesheet">
    <link href="../assets/css/admin/dashboard.css" rel="stylesheet">
    <link href="../assets/css/admin/create-cruise.css" rel="stylesheet">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <title>CyCruise - Admin dashboard</title>

</head>
<body>
<?php include "../../component/admin/sidebar.php"; ?>

<main>
    <form method="POST" action="save-cruise.php" enctype="multipart/form-data">
        <div class="form-section">
            <h3>Détails de la croisière</h3>
            <div class="form-group">
                <label for="name">Nom de la croisière</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="description">Description de la croisière</label>
                <textarea id="description" name="description" rows="4" required></textarea>
            </div>
            <div class="form-group">
                <label for="short_descriptions">Courte Description de la croisière</label>
                <input type="text" id="short_descriptions" name="short_descriptions" required>
            </div>
            <div class="form-group">
                <label for="boat_id">Choix du bateau</label>
                <select id="boat_id" name="boat_id" required>
                    <?php foreach ($boats as $boat): ?>
                        <option value="<?php echo $boat->getId(); ?>">
                            <?php echo $boat->getName(); ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <label for="start_date">Date de départ</label>
                <input type="date" id="start_date" name="start_date" required>
            </div>
            <div class="form-group">
                <label for="end_date">Date d'arrivée</label>
                <input type="date" id="end_date" name="end_date" required>
            </div>
            <div class="form-group">
                <label for="price">Durée</label>
                <input type="number" id="duration" name="duration" required>
            </div>
            <div class="form-group">
                <label for="price">Prix</label>
                <input type="number" id="price" name="price" step="0.01" required>
            </div>
            <div class="form-group">
                <label for="img">Image de la croisière (2460x1395)</label>
                <input type="file" id="image" name="image" accept="image/*" required>
            </div>
        </div>

        <div class="form-section">
            <h3>Étape de la croisière
                <button type="button" id="addStageBtn" class="btn-secondary">+ Ajouter une étape</button>
            </h3>
            <div id="stagesContainer">
                <div class="stage-row">
                    <input class="stage-input" type="text" name="stage_name[]" placeholder="Nom" required>
                    <textarea class="stage-input" name="stage_description[]" placeholder="Description" required></textarea>
                    <input class="stage-input" type="date" name="stage_start_date[]" required>
                    <input class="stage-input" type="date" name="stage_end_date[]" required>
                    <input class="stage-input" type="number" name="stage_latitude[]" step="0.01" placeholder="Latitude" required>
                    <input class="stage-input" type="number" name="stage_longitude[]" step="0.01" placeholder="Longitude" required>
                </div>
            </div>
        </div>

        <div class="form-section">
            <h3>Options de la croisière
                <button type="button" id="addOptionBtn" class="btn-secondary">+ Ajouter une option</button>
            </h3>
            <div id="optionsContainer">
                <div class="option-row">
                    <select name="option_type[]" class="option-input" required>
                        <option value="REPAS">REPAS</option>
                        <option value="BOISSONS">BOISSONS</option>
                        <option value="DIVERTISSEMENT">DIVERTISSEMENT</option>
                        <option value="EXCURSION">EXCURSION</option>
                        <option value="CABINE">CABINE</option>
                    </select>
                    <input type="text" name="option_name[]" class="option-input" placeholder="Nom" required>
                    <input type="number" name="option_price[]" class="option-input" step="0.01" placeholder="Prix" required>
                    <label>
                        <input type="checkbox" name="option_default[]" class="option-input" value="1"> Option par défaut ?
                    </label>
                    <label>
                        <input type="checkbox" name="option_per_passenger[]" class="option-input" value="1"> Est-ce que le prix est par passager ?
                    </label>
                </div>
            </div>
        </div>

        <button type="submit" class="btn-primary">Créer la croisière</button>
    </form>
</main>

<!-- i can't do the creation without this so here a little bit of js -->
<script>
    document.getElementById('addStageBtn').addEventListener('click', function () {
        const container = document.getElementById('stagesContainer');
        const newStage = container.firstElementChild.cloneNode(true);

        newStage.querySelectorAll('input, textarea').forEach(input => {
            input.value = '';
        });

        const removeBtn = document.createElement('button');
        removeBtn.textContent = 'Remove';
        removeBtn.type = 'button';
        removeBtn.classList.add('btn-delete');
        removeBtn.addEventListener('click', function () {
            container.removeChild(newStage);
        });
        newStage.appendChild(removeBtn);

        container.appendChild(newStage);
    });

    document.getElementById('addOptionBtn').addEventListener('click', function () {
        const container = document.getElementById('optionsContainer');
        const newOption = container.firstElementChild.cloneNode(true);

        newOption.querySelectorAll('input').forEach(input => {
            if (input.type === 'checkbox') {
                input.checked = false;
            } else {
                input.value = '';
            }
        });

        const removeBtn = document.createElement('button');
        removeBtn.textContent = 'Remove';
        removeBtn.type = 'button';
        removeBtn.classList.add('btn-delete');
        removeBtn.addEventListener('click', function () {
            container.removeChild(newOption);
        });
        newOption.appendChild(removeBtn);

        container.appendChild(newOption);
    });
</script>
</body>
</html>