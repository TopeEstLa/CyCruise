<?php
require_once "../../src/Services/AuthService.php";
require_once "../../src/Repository/UserRepository.php";

$authService = new AuthService();
if (!$authService->isLoggedIn()) {
    header("Location: ../login.php");
    exit;
}

if (!$authService->isAdmin()) {
    header("Location: ../index.php");
    exit;
}

$current_page = basename($_SERVER['REQUEST_URI'], ".php");

?>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<header>
    <div class="header-title">
        <i class="fa fa-ship"></i>
        <h1>CyCruise Admin</h1>
    </div>
    <div class="header-actions">
        <a><i class="fa fa-bell"></i></a>
        <a href="../account.php"><i class="fa fa-user"></i></a>
    </div>


    <nav class="admin-sidebar">
        <ul class="sidebar-menu">
            <li>
                <a class="menu-item <?= $current_page == 'dashboard' ? 'active' : '' ?>" href="dashboard.php">
                    <i class="fas fa-tachometer-alt"></i>
                    Tableau de bord
                </a>
            </li>
            <li>
                <a class="menu-item <?= $current_page == 'list-cruise' ? 'active' : '' ?>" href="list-cruise.php">
                    <i class="fas fa-ship"></i>
                    Croisières
                </a>
            </li>
            <li>
                <a class="menu-item <?= $current_page == 'list-highlighted' ? 'active' : '' ?>" href="list-highlighted.php">
                    <i class="fas fa-line-chart"></i>
                    Croisière mise en avant
                </a>
            </li>
            <li>
                <a class="menu-item <?= $current_page == 'list-user' ? 'active' : '' ?>" href="list-user.php">
                    <i class="fas fa-users"></i>
                    Clients
                </a>
            </li>
            <li>
                <a class="menu-item <?= $current_page == 'list-invoice' ? 'active' : '' ?>" href="list-invoice.php">
                    <i class="fas fa-calendar-alt"></i>
                    Réservations
                </a>
            </li>
            <li>
                <a class="menu-item <?= $current_page == 'list-contact' ? 'active' : '' ?>" href="list-contact.php">
                    <i class="fas fa-comments"></i>
                    Demande de contacts
                </a>
            </li>
            <li>
                <a class="menu-item" href="dashboard.html">
                    <i class="fas fa-cog"></i>
                    Paramètres
                </a>
            </li>
        </ul>
    </nav>
</header>