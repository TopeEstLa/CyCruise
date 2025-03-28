<?php
require_once "../../src/Services/AuthService.php";
require_once "../../src/Repository/BoatRepository.php";
require_once "../../src/Repository/CruiseRepository.php";

session_start();

if ($_SERVER['REQUEST_METHOD'] != 'GET') {
    header("Location: list-cruise.php");
    exit;
}

if (!isset($_GET['id'])) {
    header("Location: list-cruise.php");
    exit;
}

$selectCruise = CruiseRepository::getInstance()->findById($_GET['id']);

if ($selectCruise == null) {
    header("Location: list-cruise.php");
    exit;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="../assets/css/app.css" rel="stylesheet">
    <link href="../assets/css/btn-kit.css" rel="stylesheet">
    <link href="../assets/css/admin/navbar.css" rel="stylesheet">
    <link href="../assets/css/admin/dashboard.css" rel="stylesheet">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <title>CyCruise - Admin dashboard</title>

</head>
<body>
<?php include "../../component/admin/sidebar.php"; ?>



</body>

</html>
