
<?php
                    
                    include "conect.php";
                    $req="DROP TABLE IF EXISTS classement";
                    $req0="create table classement as select * from moyenne_orientation_$a where 1=2";
                    $req3=" select count(*) from moyenne_orientation_$a ";
                    $req1="alter table classement drop column matricule";
                    $req4="alter table classement add column id int";
                    mysqli_query($connection,$req);
                    mysqli_query($connection,$req0);
                    mysqli_query($connection,$req1);
                    mysqli_query($connection,$req4);
                    $res3=mysqli_query($connection,$req3);
                    $ro=mysqli_fetch_assoc($res3);
                    $j=1;
                    while ($j<= intval($ro["count(*)"]))
                    {
                        $re="insert into classement(id) values($j)";
                        mysqli_query($connection,$re);
                        $j++;
                    }
                    $t=1;
                    $req2="select * from classement ";
                    $res2=mysqli_query($connection,$req2);
                    $row=mysqli_fetch_assoc($res2);
                    
                    foreach($row as $c=>$b)
                    { 
                        if($t<count($row))
                        {
                            $t++;
                            $s="select matricule from moyenne_orientation_$a order by $c desc";
                            $z="select count($a) from moyenne_orientation";
                            $ze=mysqli_query($connection,$z);
                            $zo=mysqli_fetch_assoc($ze);
                            $se=mysqli_query($connection,$s);
                            $h=0;
                            while($rowe=mysqli_fetch_assoc($se))
                            { 
                                
                                            $h++;
                                            $req5="update classement set $c=$rowe[matricule] where id=$h";
                                            mysqli_query($connection,$req5);
                                        
                                
                            }
                            $h=0;
                        }
                        
                    }
                $dd="alter table classement drop column id";
                mysqli_query($connection,$dd);
         
?>

       