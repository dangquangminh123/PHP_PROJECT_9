<?php 
    if(isset($_POST['login'])) {
        $email = $_POST['email'];
        $pass = $_POST['password'];

        if($email == 'admin@gmail.com' && $pass == 'admin') {
            session_start();
            $_SESSION['login'] = true;
            $admin=$email;
            header('Location: ../admin/dashboard.php');
        }else {
            echo 'Invailid Credentials';
        }
    }
?>