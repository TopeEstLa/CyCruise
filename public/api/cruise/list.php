<?php
require_once "../../../src/Repository/CruiseRepository.php"; //NAH I JUST WANT COMPOSER

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    header('Content-Type: application/json; charset=utf-8');

    $cruiseList = CruiseRepository::getInstance()->findAll();

    $cruises = [];
    foreach ($cruiseList as $cruise) {
        $cruises[] = json_decode($cruise->toJson());
    }

    echo json_encode($cruises);
}