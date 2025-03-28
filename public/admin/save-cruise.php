<?php
require_once "../../src/Services/AuthService.php";
require_once "../../src/Repository/BoatRepository.php";
require_once "../../src/Repository/CruiseRepository.php";

session_start();

$authService = new AuthService();
if (!$authService->isLoggedIn()) {
    header("Location: ../login.php");
    exit;
}

if (!$authService->isAdmin()) {
    header("Location: ../index.php");
    exit;
}

if ($_SERVER['REQUEST_METHOD'] != 'POST') {
    echo "invalid request";
    header("Location: ../index.php");
    exit;
}

if (!isset($_POST["name"]) || !isset($_POST["description"]) || !isset($_POST["short_descriptions"]) || !isset($_POST["boat_id"]) || !isset($_POST["start_date"]) || !isset($_POST["end_date"]) || !isset($_POST["duration"]) || !isset($_POST["price"]) || !isset($_FILES["image"])) {
    header("Location: ../index.php");
    exit;
}

$boat = BoatRepository::getInstance()->selectById($_POST["boat_id"]);

if ($boat == null) {
    header("Location: ../index.php");
    exit;
}


$imgPath = "assets/img/cruise-data/";
$imgName = $_FILES["image"]["name"];
$targetPath = "../" . $imgPath . basename($imgName);

$imgTmpName = $_FILES["image"]["tmp_name"];

move_uploaded_file($imgTmpName, $targetPath);


$cruiseId = CruiseRepository::getInstance()
    ->insert(
        $_POST["name"],
        $_POST["description"],
        $_POST["short_descriptions"],
        $imgPath . $imgName,
        $_POST["start_date"],
        $_POST["end_date"],
        $_POST["duration"],
        $boat,
        $_POST["price"]
    );

if (isset($_POST['stage_name'])) {
    for ($i = 0; $i < count($_POST['stage_name']); $i++) {
        $insert = CruiseStageRepository::getInstance()
            ->insert($cruiseId, $_POST['stage_name'][$i], $_POST['stage_description'][$i], $_POST['stage_start_date'][$i], $_POST['stage_end_date'][$i], $_POST['stage_latitude'][$i], $_POST['stage_longitude'][$i]);

        if (!$insert) {
            echo "Error inserting stage: " . $_POST['stage_name'][$i];
            break;
        }
    }
}

if (isset($_POST['option_name'])) {
    for ($i = 0; $i < count($_POST['option_name']); $i++) {
        $insert = CruiseOptionRepository::getInstance()->insert(
            $cruiseId,
            $_POST['option_type'][$i],
            $_POST['option_name'][$i],
            (float)$_POST['option_price'][$i],
            isset($_POST['option_default'][$i]) ? 1 : 0,
            isset($_POST['option_per_passenger'][$i]) ? 1 : 0
        );

        if (!$insert) {
            echo "Error inserting option: " . $_POST['option_name'][$i];
            break;
        }
    }
}

header("Location: list-cruise.php");


?>