<?php
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
    <link rel="stylesheet" href="../../css/style.css?v=<?php echo time();?>">
</head>


<body>
<main>
    <div class="cont">
        <div class="forms">
            <div class="form login">
                <span class="title">Login</span>
                <span class="title">
                    
                <?php

                        $conn = mysqli_connect('fdb33.awardspace.net','4146023_sup','Orientation123','4146023_sup');
                        function test($a)
                        {
                            $a = htmlspecialchars($a);
                            $a = trim($a);
                            return $a;
                        }
                        if (isset($_POST['submit'])) {
                            
                            if (!empty($_POST['matricule']) & !empty($_POST['code1'])) {
                                $matricule = test($_POST['matricule']);
                                $code = test($_POST['code1']);
                                
                                $req = "select * from utilisateur where matricule='$matricule' and code='$code';";
                                
                                
                                $res = mysqli_query($conn, $req);
                                if (mysqli_num_rows($res) != 0) {
                                    $_SESSION['user']=$_POST['matricule'] ;
                                    //lahi ywejeh chor index.php
                                    $req = "select etablissement from utilisateur where matricule='$matricule'";
                                    $res= mysqli_query($conn, $req);
                                    $row=mysqli_fetch_assoc($res);
                                    $_SESSION['x']=$row['etablissement'];
                                    header("location:insertion_choix.php");
                                } else {
                                    $req="select * from administrateur where matricule='" . $_POST['matricule']."' and code='$code'; ";
                                    $res=mysqli_query($conn,$req);

                                    if (mysqli_num_rows($res)!=0) {
                                        header("location:index.php");
                                        $_SESSION['user']=$_POST['matricule'] ;
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

    </main> 

</body>

</html>