<?php 
    session_start();
    session_destroy();
    // $_SERVER[‘HTTP_REFERER’]: Chứa URL của trang web mà người dùng đến trước đó, nếu có.
    header('Location: '.$_SERVER['HTTP_REFERER']);
?>