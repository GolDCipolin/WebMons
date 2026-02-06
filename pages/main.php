<?php
session_start();
require_once("../require_once/dp.php");

if (!isset($_SESSION['pokemon'])) {
    $stmd = $pdo->prepare("SELECT * FROM pokemon ORDER BY RAND() LIMIT 1");
    $stmd->execute();
    $_SESSION['pokemon'] = $stmd->fetch(PDO::FETCH_ASSOC);
}

if(empty($_COOKIE['user_token'])){
    $token = bin2hex(random_bytes(16));
    setcookie('user_token', $token, time() + (86400 * 30), "/");
    $_COOKIE['user_token'] = $token; // Update the $_COOKIE superglobal immediately
}

$token = $_COOKIE['user_token'];

$st = $pdo->prepare("SELECT userID FROM users WHERE user_token = ?");
$st->execute([$token]);
$userID = $st->fetchColumn();

if(!$userID){
    $st = $pdo->prepare("INSERT INTO users (user_token) VALUES (?)");
    $st ->execute([$token]);
    $userID = $pdo->lastInsertId();
}

$currentPokemon = $_SESSION['pokemon'];
$name = $currentPokemon['pokeName'];
$message = "";

//BUTtons
if(isset($_POST['action'])){
    if($_POST['action'] === 'Catch'){
        $roll = rand(1,100);
        if($roll <= $currentPokemon['baseCatchPercent']){
            $stmt = $pdo->prepare("INSERT IGNORE INTO user_pokemon (userID, pokeID) VALUES (?, ?)");
            $stmt->execute([$userID, $currentPokemon['pokeID']]);

            $message = "You caught " . $currentPokemon['pokeName'] . "!";
            unset($_SESSION['pokemon']);
        } else {
            $message = $currentPokemon['pokeName'] . " broke free!";
        }
    }

    if($_POST['action'] === 'Bait'){
        $message = "You used Bait!";
    }
    if($_POST['action'] === 'Rock'){
        $message = "You threw a Rock!";
    }
    if($_POST['action'] === 'Run'){
        $message = "You ran away!";
        unset($_SESSION['pokemon']);
    }

    $_SESSION['flash'] = $message;
    header("Location: " . $_SERVER['PHP_SELF']);
    exit();
}

$flash = $_SESSION['flash'] ?? '';
unset($_SESSION['flash']);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WebMons</title>
    <link rel="stylesheet" href="/css/base.css">
</head>
<div class="wrapper">
<body>
    <?php require_once("../require_once/header.php"); ?>
    <!-- Tells user if they caught, not able to, threw a rock/bait or ran away -->
    <?php if ($flash): ?>
        <script>alert(<?= json_encode($flash) ?>);</script>
    <?php endif; ?>

    <h1 class="title">WebMons</h1>
    <h2><?= $currentPokemon['pokeName'] ?></h2>
    <img src="<?= $currentPokemon['imageSrc'] ?>" alt="<?= $currentPokemon['pokeName'] ?>" width="200" height="200" class="center-image">
    <!-- <img src="/images/pikachu.png" alt="Pikachu" width="200" height="200" class="center-image"> -->
        <p>Catch chance: <?= $currentPokemon['baseCatchPercent'] ?>%</p>
        <form method="post">
        <button type="submit" name="action" value="Catch">Catch</button>
        <button type="submit" name="action" value="Bait">Bait</button>
        <button type="submit" name="action" value="Rock">Rock</button>
        <button type="submit" name="action" value="Run">Run</button>
        </form>
</body>
</div>
</html>