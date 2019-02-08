<?php
session_start();
unset($_SESSION["login"]);//删除session值login
header('location:index.php'); //登出以后重定向到登录页面
