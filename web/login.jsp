<%-- 
    Document   : login
    Created on : 12 nov. 2024, 20:13:06
    Author     : Joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link type = "text/css" rel="stylesheet" href="css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <style>
        .login-dark {
            height:1000px;
            background:#0d0c55 url(../../assets/img/star-sky.jpg);
            background-size:cover;
            position:relative;
        }

        .login-dark form {
            max-width:320px;
            width:90%;
            background-color:#113255;
            padding:40px;
            border-radius:4px;
            transform:translate(-50%, -50%);
            position:absolute;
            top:50%;
            left:50%;
            color:#ffffff;
            box-shadow:3px 3px 4px rgba(0,0,0,0.2);
        }

        .login-dark .illustration {
            text-align:center;
            padding:15px 0 20px;
            font-size:100px;
            color:#2980ef;
        }

        .login-dark form .form-control {
            background:none;
            border:none;
            border-bottom:1px solid #0ff7eb;
            border-radius:0;
            box-shadow:none;
            outline:none;
            color:inherit;
        }

        .login-dark form .btn-primary {
            background:#214a80;
            border:none;
            border-radius:4px;
            padding:11px;
            box-shadow:none;
            margin-top:26px;
            text-shadow:none;
            outline:none;
        }

        .login-dark form .btn-primary:hover, .login-dark form .btn-primary:active {
            background:#214a80;
            outline:none;
        }

        .login-dark form .forgot {
            display:block;
            text-align:center;
            font-size:12px;
            color:#19688d;
            opacity:0.9;
            text-decoration:none;
        }

        .login-dark form .forgot:hover, .login-dark form .forgot:active {
            opacity:1;
            text-decoration:none;
        }

        .login-dark form .btn-primary:active {
            transform:translateY(1px);
        }
    </style>
    <html>





        <body>
            <div class="login-dark">
                <form method="post">
                    <h2 class="sr-only">Login Form</h2>
                    <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
                    <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email"></div>
                    <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
                    <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Log In</button></div>
                </form>
            </div>

            <script src="js/jquery-3.7.1.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/fontawesome.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
        </body>

    </html>



