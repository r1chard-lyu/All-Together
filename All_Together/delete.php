<?php
/* filename: edit.php */
error_reporting(E_ERROR | E_PARSE);
/** Connect Mysql */
require_once './assets/inc/connect.php';

if($_SERVER['REQUEST_METHOD']==='GET' && !empty($_GET)){
    delete_user();
}else{
    header('Location: index.php');
}

function delete_user(){
    $sql = "DELETE FROM store WHERE id = {$_GET['id']};";
    connect_mysql($sql);
    echo 'success';
//    header('Location: index.php');
}