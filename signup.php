<?php 

require 'config/constants.php';

//GET BACK FORM DATA IF THERE WAS A REGGISTRATION ERROR
$firstname = $_SESSION['signup-data']['firstname'] ?? null;
$lastname = $_SESSION['signup-data']['lastname'] ?? null;
$username = $_SESSION['signup-data']['username'] ?? null;
$email = $_SESSION['signup-data']['email'] ?? null;
$createpassword = $_SESSION['signup-data']['createpassword'] ?? null;
$confirmpassword = $_SESSION['signup-data']['confirmpassword'] ?? null;

unset($_SESSION['signup-data']);

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="'X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, intial-scale=1.0">
        <title>Online Blogging System</title>
        <!-- CUstom StyleSheet-->
        <link rel="stylesheet" href="<?= ROOT_URL ?>css/style.css">  
         <!-- Iconscour cdn-->
         <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

         <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,500;0,600;0,700;0,800;1,300&display=swap" rel="stylesheet">
    </head>
    <body>
<section class="form__section">
    <div class="container form__section-container">
       <center> <h2>Sign Up</h2></center>
        <?php if(isset($_SESSION['signup'])) : ?> 
            <div class="alert__message error">
                <p>
                    <?= $_SESSION['signup'];
                    unset($_SESSION['signup']);
                     ?>     
                </p>
            </div>
            <?php endif ?>
        </div>
        <form action="<?= ROOT_URL ?>signup_logic.php" enctype="multipart/form-data" method="post">
            <input type="text" name="firstname" value="<?= $firstname ?>" placeholder="First Name">
            <input type="text" name="lastname" value="<?= $lastname ?>" placeholder="Last Name">
            <input type="text" name="username" value="<?= $username ?>" placeholder="Username">
            <input type="email" name="email" value="<?= $email ?>" placeholder="Email">
            <input type="password" name="createpassword" value="<?= $createpassword ?>" placeholder="Create password">
            <input type="password" name="confirmpassword" value="<?= $confirmpassword ?>" placeholder="Confirm password">
            <div class="form__control">
                <label for="avatar">User avatar</label>
                <input type="file" name="avatar" id="avatar">
            </div>
            <button type="submit" name="submit" class="btn">Sign Up</button>
            <small>Already Have an Account??<a href="signin.php">Sign In</a></small>


        </form>
    </div>
</section>
</body>
</html>