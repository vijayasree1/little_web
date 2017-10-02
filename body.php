<?php
if (isset($_GET["page"]))
    $page = $_GET['page'];
else
    $page = "";

switch ($page) {
    case "dashboard":
        include 'dashboard.php';
        break;
    case "deals":
        include 'deals.php';
        break;
    default:
        include 'dashboard.php';
        break;
}
?>