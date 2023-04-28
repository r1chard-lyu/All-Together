<?php
error_reporting(E_ERROR | E_PARSE);
session_start();
session_destroy();
unset($_SESSION['logged_in']);
header('Location: index.php');