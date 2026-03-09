<?php
$type     = 'mysql';
$server   = 'localhost';
$db       = 'kimozaa_db'; // Make sure this matches your database name
$port     = '3306';
$charset  = 'utf8mb4';

$username = 'root';        // Default for XAMPP
$password = '';            // Default for XAMPP (no password)

$options  = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

$dsn = "$type:host=$server;dbname=$db;port=$port;charset=$charset";
try {
    $pdo = new PDO($dsn, $username, $password, $options);
} catch (PDOException $e) {
    throw new PDOException($e->getMessage(), $e->getCode());
}