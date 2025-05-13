<?php
require_once "../../../src/Repository/CruiseRepository.php"; //NAH I JUST WANT COMPOSER

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    header('Content-Type: application/json; charset=utf-8');

    $cruise = CruiseRepository::getInstance()->findById($_GET['id']);

    echo $cruise->toJson();
}