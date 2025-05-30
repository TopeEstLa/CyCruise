<?php

require_once "../src/Services/AuthService.php";

$authService = new AuthService();

$current_page = basename($_SERVER['REQUEST_URI'], ".php");

?>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<header>
    <nav class="navbar <?= $current_page == 'about' ? 'transparent-navbar' : '' ?>">
        <div class="navbar-logo">
            <a href="index.php">
                <img alt="CyCruise" class="logo" src="assets/img/cycruise-logo.png">
            </a>
        </div>

        <div class="nav-menu">
            <ul class="nav-links">
                <li><a class="nav-link <?= ($current_page == 'index' || $current_page == '') ? 'active' : '' ?>"
                       href="index.php">ACCUEIL</a></li>
                <li><a class="nav-link <?= $current_page == 'cruise-list' ? 'active' : '' ?>" href="cruise-list.php">DESTINATIONS</a>
                </li>
                <li><a class="nav-link <?= $current_page == 'fleet' ? 'active' : '' ?>" href="fleet.php">FLOTTE</a></li>
                <li><a class="nav-link <?= $current_page == 'about' ? 'active' : '' ?>" href="about.php">À PROPOS</a>
                </li>
                <li><a class="nav-link <?= $current_page == 'contact' ? 'active' : '' ?>" href="contact.php">CONTACT</a>
                </li>
                <?php if ($authService->isLoggedIn()): ?>
                    <li><a aria-hidden="true" class="fa fa-user nav-icon" href="account.php"></a></li>
                    <li><a aria-hidden="true" class="fa-solid fa-cart-shopping nav-icon" href="basket.php"></a></li>
                    <li><a aria-hidden="true" class="fa fa-sign-in nav-icon" href="logout.php"></a></li>
                    <?php if ($authService->isAdmin()): ?>
                        <li><a class="fa fa-cogs nav-icon" href="admin/dashboard.php"></a></li>
                    <?php endif; ?>
                <?php else: ?>
                    <li><a aria-hidden="true" class="fa fa-user nav-icon" href="login.php"></a></li>
                <?php endif; ?>
                <li>
                    <a id="dark-mode-toggle" class="fa-solid fa-moon nav-icon" href="#"></a>
                </li>
            </ul>
        </div>
    </nav>
</header>