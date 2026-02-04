<?php
require_once("../require_once/dp.php");

$stmd = $pdo->prepare("SELECT * FROM pokemon ORDER BY RAND() LIMIT 1");
$stmd->execute();
$pokemon = $stmd->fetch(PDO::FETCH_ASSOC);
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



        <h1 class="title">WebMons</h1>
        <h2><?= $pokemon['pokeName'] ?></h2>
        <img src="<?= $pokemon['imageSrc'] ?>" alt="<?= $pokemon['pokeName'] ?>" width="200" height="200" class="center-image">
        <!-- <img src="/images/pikachu.png" alt="Pikachu" width="200" height="200" class="center-image"> -->
         <p>Catch chance: <?= $pokemon['baseCatchPercent'] ?>%</p>
        <button type="button">Catch</button>
        <button type="button">Bait</button>
        <button type="button">Rock</button>
        <button type="button">Run</button>
        
    </body>
</div>
</html>