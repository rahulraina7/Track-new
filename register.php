<?php

// Inialize session
session_start();

// Check, if user is already login, then jump to secured page
if (isset($_SESSION['username'])) {
    header('Location: landingpage.php');
}

?>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Log in to Intelli-Track</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link href="1.css" rel="stylesheet" />
        <script src="js/jquery-1.8.3.min.js"></script>
        <script src="css/5grid/init.js?use=mobile,desktop,1000px"></script>
        <script src="js/init.js"></script>
        <noscript>
            <link rel="stylesheet" href="css/style.css" />
            
        </noscript>
        
        
    </head>
    <body>
    <nav id="nav">
                <ul>
                
                    <li><a href="http://127.0.0.1:8080/track/index.html">Home</a></li>
                    </li>
                    <li><a href="http://127.0.0.1:8080/track/intel.html">About Intelli-Track</a>
                    </li>
                    <li><a href="http://localhost/track/register.php">Register</a>
                    </li>
                    <li><a href="http://127.0.0.1:8080/track/login.html">Login</a>
                    </li>
                    <li><a href="credits.html">Credits</a>
                    </li>
                </ul>
            </nav>
            <div class="wrapper wrapper-style2">
                <article id="Intel">
                    <header>
                        <h1><strong>Register</strong></h1>
                        <span>Intelli-Track</span>
                    </header>
                    
    <form method="POST" action="register1.php" name="login_frm" id="login_frm"  class="box login">
    <fieldset class="boxBody">
      <label>Username:</label><br/>
      <input type="text" tabindex="1" name="regname" id="login_id" placeholder="Username" required><br/>
      <label>Password:</label><br/>
      <input type="password" tabindex="2" name="regpwd" id="password" placeholder="Password" required>
    </fieldset><br/><div id="msgbox"></div>
    <footer>
      
      <input type="submit" class="button button-big" value="Register" tabindex="4">
    </footer>
</form>

                
                </article>
            </div>
</body>
</html>