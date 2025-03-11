<?php
require_once "../src/Services/AuthService.php";
require_once "../src/Repository/CruiseRepository.php";

session_start();

$authService = new AuthService();

if (!$authService->isLoggedIn()) {
    header("Location: login.php");
    exit();
}

if (!isset($_GET['id'])) {
    header("Location: cruise-list.php");
    exit();
}

$cruise = CruiseRepository::getInstance()->findById($_GET['id']);

if ($cruise === null) {
    header("Location: cruise-list.php");
    exit();
}

$optionsByType = $cruise->mapOptionsByType();

$basePrice = $cruise->getPrice();

$selectedOptions = [];
$passengerCount = 1;
$passengerPrice = $basePrice;
$totalPrice = $passengerPrice;
$passengerData = [];


if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    foreach ($optionsByType as $type => $options) {
        if (isset($_POST['option_' . $type])) {
            $selectedOptionId = $_POST['option_' . $type];
            foreach ($options as $option) {
                if ($option->getId() == $selectedOptionId) {
                    $selectedOptions[$type] = $option;
                    $passengerPrice += $option->getPrice();
                    break;
                }
            }
        }
    }

    $passengerCount = $_POST['passengers'];


    for ($i = 0; $i < $passengerCount; $i++) {
        $passengerData[] = [
            'first_name' => $_POST['first_name_' . $i],
            'last_name' => $_POST['last_name_' . $i],
        ];
    }

    $totalPrice = $passengerPrice * $passengerCount;
} else {
    foreach ($optionsByType as $type => $options) {
        foreach ($options as $option) {
            if ($option->isDefault()) {
                $selectedOptions[$type] = $option;
                $passengerPrice += $option->getPrice();
                break;
            }
        }
    }
}

$totalPrice = $passengerPrice * $passengerCount;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="assets/css/app.css" rel="stylesheet">
    <link href="assets/css/btn-kit.css" rel="stylesheet">
    <link href="assets/css/navbar.css" rel="stylesheet">
    <link href="assets/css/footer.css" rel="stylesheet">

    <link href="assets/css/test-reservation.css" rel="stylesheet">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <title>CyCruise - Your best cruise</title>


    <!--
    <script>
        function updatePassengerFields() {
            const passengerCount = document.getElementById('passengers').value;
            const passengerFieldsContainer = document.getElementById('passenger-fields');
            passengerFieldsContainer.innerHTML = '';

            for (let i = 0; i < passengerCount; i++) {
                const fieldset = document.createElement('fieldset');
                fieldset.innerHTML = `
                    <legend>Passager ${i}</legend>
                    <div class="form-group">
                        <label for="first_name_${i}">Prénom</label>
                        <input type="text" id="first_name_${i}" name="first_name_${i}" value="" required>
                    </div>
                    <div class="form-group">
                        <label for="last_name_${i}">Nom</label>
                        <input type="text" id="last_name_${i}" name="last_name_${i}" required>
                    </div>
                `;
                passengerFieldsContainer.appendChild(fieldset);
            }
        }

        document.addEventListener('DOMContentLoaded', function () {
            document.getElementById('passengers').addEventListener('input', updatePassengerFields);
        });
    </script> -->

</head>

<body>
<?php include "../component/navbar.php"; ?>

<div class="reservation-container">
    <div class="cruise-header">
        <img src="<?php echo htmlspecialchars($cruise->getImg()); ?>"
             alt="<?php echo htmlspecialchars($cruise->getName()); ?>" class="cruise-image">
        <div class="cruise-info">
            <h1><?php echo htmlspecialchars($cruise->getName()); ?></h1>
            <div class="metadata-item">
                <i class="fas fa-calendar"></i>
                <span>Du <?php echo date('d/m/Y', strtotime($cruise->getStartDate())); ?> au <?php echo date('d/m/Y', strtotime($cruise->getEndDate())); ?></span>
            </div>
            <div class="metadata-item">
                <i class="fas fa-clock"></i>
                <span><?php echo htmlspecialchars($cruise->getDuration()); ?> Jour</span>
            </div>
            <div class="metadata-item">
                <i class="fas fa-ship"></i>
                <span><?php echo htmlspecialchars($cruise->getBoat()->getName()); ?></span>
            </div>
            <div class="metadata-item">
                <i class="fas fa-book"></i>
                <span><?php echo htmlspecialchars($cruise->getShortDescriptions()); ?></span>
            </div>
            <p class="cruise-price">À partir de <?php echo number_format($cruise->getPrice(), 2); ?> €</p>
        </div>
    </div>

    <form method="post" class="reservation-form">
        <div class="form-section">
            <h2>Sélectionnez vos options</h2>

            <?php foreach ($optionsByType as $type => $options): ?>
                <div class="option-group">
                    <h3><?php echo htmlspecialchars(ucfirst($type)); ?></h3>
                    <div class="option-list">
                        <?php foreach ($options as $option): ?>
                            <label class="option-item">
                                <input type="radio" name="option_<?php echo htmlspecialchars($type); ?>"
                                       value="<?php echo $option->getId(); ?>"
                                    <?php if (!isset($selectedOptions[$type])) { ?>
                                        <?php if ($option->isDefault()) { ?>
                                            checked
                                        <?php } ?>
                                    <?php } else if ($selectedOptions[$type]->getId() === $option->getId()) { ?>
                                       checked
                                <?php } ?>">
                                <div class="option-name"><?php echo htmlspecialchars($option->getName()); ?></div>
                                <div class="option-price">+ <?php echo number_format($option->getPrice(), 2); ?> €</div>
                            </label>
                        <?php endforeach; ?>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>

        <div class="form-section">
            <h2>Informations sur les passagers</h2>

            <div class="form-group">
                <label for="passengers">Nombre de passagers</label>
                <input type="number" id="passengers" name="passengers" min="1" max="5"
                       value="<?php echo $passengerCount; ?>">
            </div>

            <div id="passenger-fields">
                <?php for ($i = 0;
                           $i < $passengerCount;
                           $i++): ?>
                    <fieldset>
                        <legend>Passager <?php echo $i+1; ?></legend>
                        <div class="form-group">
                            <label for="first_name_<?php echo $i; ?>">Prénom</label>
                            <input type="text" id="first_name_<?php echo $i; ?>" name="first_name_<?php echo $i; ?>"
                                   value="<?php echo isset($passengerData[$i]) ? htmlspecialchars($passengerData[$i]['first_name']) : ""; ?>"
                                   required>
                        </div>
                        <div class="form-group">
                            <label for="last_name_<?php echo $i; ?>">Nom</label>
                            <input type="text" id="last_name_<?php echo $i; ?>" name="last_name_<?php echo $i; ?>"
                                   value="<?php echo isset($passengerData[$i]) ? htmlspecialchars($passengerData[$i]['last_name']) : ""; ?>"
                                   required>
                        </div>
                    </fieldset>
                <?php endfor; ?>
            </div>
        </div>

        <div class=" summary-section">
            <h2 class="summary-title">Résumé de la réservation</h2>

            <div class="summary-item">
                <span>Prix de base de la croisière</span>
                <span><?php echo number_format($cruise->getPrice(), 2); ?> €</span>
            </div>

            <?php foreach ($selectedOptions as $type => $option): ?>
                <div class="summary-item">
                    <span><?php echo htmlspecialchars(ucfirst($type) . ': ' . $option->getName()); ?></span>
                    <span><?php echo number_format($option->getPrice(), 2); ?> €</span>
                </div>
            <?php endforeach; ?>

            <div class="summary-passenger">
                <span>Par passager </span>
                <span><?php echo number_format($passengerPrice, 2); ?> €</span>
            </div>
            <div class="summary-total">
                <span>Total</span>
                <span><?php echo number_format($totalPrice, 2); ?> €</span>
            </div>
        </div>

        <div class="submit-container">
            <a href="cruise-detail.php?id=<?php echo $cruise->getId(); ?>" class="btn-primary">
                <i class="fas fa-arrow-left btn-secondary-icon"></i> Retour
            </a>
            <button type="submit" class="btn-primary">
                <i class="fas fa-sync btn-icon"></i> Mettre à jour
            </button>
            <button type="submit" formaction="confirmations.php" class="btn-primary">
                <i class="fas fa-check btn-icon"></i> Confirmer la réservation
            </button>
        </div>
    </form>
</div>


<?php include "../component/footer.php"; ?>


</body>
</html>
