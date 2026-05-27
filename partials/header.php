<?php
require 'config/database.php';

//fetch current user from database
if(isset($_SESSION['user-id'])){
    $id=filter_var($_SESSION['user-id'], FILTER_SANITIZE_NUMBER_INT);
    $query = "SELECT avatar FROM users WHERE id=$id";
    $result= mysqli_query($connection, $query);
    $avatar= mysqli_fetch_assoc($result);
}
?>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="'X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,intial-scale=1.0">
        <title>Online Blogging System</title>
        <!-- CUstom StyleSheet-->
        <link rel="stylesheet" href="<?= ROOT_URL ?>css/style.css">  
         <!-- Iconscour cdn-->
         <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

         <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,500;0,600;0,700;0,800;1,300&display=swap" rel="stylesheet">
    </head>
    <body>
        <nav>
            <div class="container nav_container">
                <a href="<?= ROOT_URL?>" class="nav_logo">Blog</a>
                <ul class="nav_items">
                    <li><a href="<?= ROOT_URL?>blog.php">Blog</a></li>
                    <li><a href="<?= ROOT_URL?>About.php">About</a></li>
                    <!-- <li><a href="Services.php">Services</a></li> -->
                    <li><a href="<?= ROOT_URL?>contact.php">contact</a></li>
                    
                    <?php if(isset($_SESSION['user-id'])) :?>
                        <li class="nav_profile">
                            <div class="avtar">
                                <img src="<?= ROOT_URL . 'images/' . $avatar['avatar'] ?>">
                            </div>
                            <ul>
                                <li><a href="<?=  ROOT_URL?>admin/index.php">Dashboard</a></li>
                                <li><a href="<?=  ROOT_URL?>logout.php">Logout</a></li>    
                            </ul>
                            <button id="open_nav-btn"><i class="uil uil-bars"></i></button>
                            <button id="close_nav-btn"><i class="uil uil-multiply"></i></button>
                        </li>
                    <?php else : ?>
                    <li><a href="<?= ROOT_URL?>signin.php">Signin</a></li>
                    <?php endif ?>
                        
                </ul>
                <button id="open_nav-btn"><i class="uil uil-bars"></i></button>
                <button id="close_nav-btn"><i class="uil uil-multiply"></i></button>
            </div>
        </nav>
</body>
</html>
 
