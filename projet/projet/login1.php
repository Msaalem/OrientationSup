<?php
//if (isset($_POST['login'])) {
//    $matricule = $_POST['matricule'];
//  $pass = $_POST['pass'];
//   $query = "SELECT `mot_pass` FROM `login` WHERE `Matricule`=$matricule";
//   $result = mysqli_query($connection, $query);
//   $row = mysqli_fetch_assoc($result);
//   if ($row["mot_pass"] == $pass) {
//        if ($matricule <= 1000) header('location:display.php');
//       else  header('location:form.php');
//    }
//}
session_start();
?>


<DOCTYPE html>
<html lang="en">

<style>
    .ereur {
        font-size: 15px;
        color: red;
    }
    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="stylesheet" href="css/style.css?v=<?php echo time();?>">
</head>


<body>
<main>
    <div class="cont">
        <div class="forms">
            <div class="form login">
                <span class="title">Login</span>
                <span class="title">
                    
                <?php

                        $conn = mysqli_connect('localhost', 'root', '', 'projet');
                        function test($a)
                        {
                            $a = htmlspecialchars($a);
                            $a = trim($a);
                            return $a;
                        }
                        if (isset($_POST['submit'])) {
                            
                            if (!empty($_POST['matricule']) & !empty($_POST['code1'])) {
                                $_POST['matricule'] = test($_POST['matricule']);
                                $_POST['code1'] = test($_POST['code1']);
                                $req = "select * from utilisateur where matricule='" . $_POST['matricule'] . "' and code='" . $_POST['code1'] . "';";
                                $res = mysqli_query($conn, $req);
                                if (mysqli_num_rows($res) != 0) {
                                    
                                    //lahi ywejeh chor index.php
                                    $req="select filiere from utilisateur where matricule='" . $_POST['matricule'] . "'; ";
                                    $res=mysqli_query($conn,$req);
                                    $row=mysqli_fetch_row($res);
                                    if($row[0]=='D'){$_SESSION['userD']=$_POST['matricule'] ;header("location:moyenne/form_D.php");}
                                    else if($row[0]=='C'){$_SESSION['userC']=$_POST['matricule'] ;header("location:moyenne/form_C.php");}
                                    else{$_SESSION['userT']=$_POST['matricule'] ;header("location::/moyenne/form_C.php");}
                                } else {
                                    $req="select * from administrateur where matricule='" . $_POST['matricule'] . "'; ";
                                    $res=mysqli_query($conn,$req);
                                    if (mysqli_num_rows($res)!=0) {
                                        header("location:filiere/index.php");
                                        //lahi ywejeh chor index.php
                                    }
                                    echo  '<p class=\'ereur\'><b>VERIFIER LE MATRICULE OU LE MOT DE PASSE </b></p>';
                               
                            }
                        }
                    }
                        ?>
                </span>
                <form action="login1.php" method="POST">
                    <div class="input-field">
                        <input type="text" placeholder="Enter your matricule" name="matricule">
                        <i class="uil uil-envelope icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="password" class="password" placeholder="Enter your password" name="code1">
                        <i class="uil uil-lock icon"></i>
                        <i class="uil uil-eye-slash showHidePw"></i>
                    </div>

                    <div class="checkbox-text">
                        <div class="checkbox-content">

                        </div>

                        <a href="#" class="text">Forgot password?</a>
                    </div>

                    <div class="input-field button">
                        <input type="submit" value="Login Now" name="submit">
                        
                    </div>
                </form>
            </div>
        </div>
    </div>

    </main> <!-- <script src="script.js"></script> -->

</body>

</html>