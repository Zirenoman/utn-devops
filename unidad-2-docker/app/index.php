<?php
$host = getenv('DB_HOST');
$db = getenv('DB_DATABASE');
$user = 'root';
$pass = getenv('DB_PASSWORD');

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $stmt = $pdo->query("SELECT name, email FROM users");

    echo "<h1>Usuarios en la base de datos</h1><ul>";
    while ($row = $stmt->fetch()) {
        echo "<li>{$row['name']} ({$row['email']})</li>";
    }
    echo "</ul>";
} catch (PDOException $e) {
    echo "Error de conexión: " . $e->getMessage();
}
?>
