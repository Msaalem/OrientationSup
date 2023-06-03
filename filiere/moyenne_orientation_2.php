<?php
include 'conect.php';
session_start();
$fl=$_SESSION["x"];
error_reporting(0);
ini_set('display_errors', 0);
$ls=[];
$somme=0;
$moy=0;
$roq="DROP TABLE IF EXISTS moyenne_orientation_$fl;";
mysqli_query($connection,$roq);
$ri="create table  moyenne_orientation_$fl(matricule varchar(100) primary key)";
mysqli_query($connection,$ri);
$ri0="insert into  moyenne_orientation_$fl(matricule) select matricule from note_$fl";
mysqli_query($connection,$ri0);
$code_fl=[];
      $rb="select code from $fl";
    $rbs=mysqli_query($connection,$rb);
    while($row=mysqli_fetch_assoc($rbs))
    {
      foreach($row as $c=>$b)
      {
         array_push($code_fl,$b);
      }
    }
foreach($code_fl as $lk)
{
    $tip="alter table moyenne_orientation_$fl add column $lk float";
    mysqli_query($connection,$tip);
}
$j=1;
$i=1;
$mt="";
$code="";
$req1="select * from coefficient_$fl";
$res1=mysqli_query($connection , $req1);
while($row1=mysqli_fetch_assoc($res1))
{
    foreach($row1 as $c=>$d)
                  {
                       
                        if($i>1)
                        {  if(empty($d))
                            {
                                array_push($ls[$code],0);
                            }else{
                                array_push($ls[$code],$d);
                            }
                           
                        }
                        if($i==1)
                        {
                            $code=$d;
                            $ls[$d]=[];
                            $i++;
                        }
                    }
                    
                                
                    $i=1;
}
$req="select * from note_$fl";
$res=mysqli_query($connection , $req);
$key=array_keys($ls);
$line=0;

if($res)
{
   while($row=mysqli_fetch_assoc($res))
   {
       for($t=0;$t<count($ls);$t++)
       {
           foreach($row as $a=>$b)
           {
               
              if( $j>=2)
              {
                  $moy+=$b*$ls[$key[$t]][$j-2];  
                  $j++;
              }
              if($j==1)
              {
                 $mt=$b;
                 $j=2;
                 for($h=0;$h<count($ls[$key[$t]]);$h++)
                 {
                     
                     $somme+=$ls[$key[$t]][$h];
                 }
              }
             
           }
           if($somme !=0)
           {
            $moy/=$somme;
           }else{
            $moy=$row["Moyenne_Generale"];
           }
           $somme=0;
           $code=$key[$t];
           $req2="update moyenne_orientation_$fl set $code=$moy where 	matricule=\"$mt\"";
           $moy=0;
           mysqli_query($connection , $req2);
           $j=1;
        }
        
   }
}
$roq="DROP TABLE IF EXISTS classement_$fl;";
mysqli_query($connection,$roq);
  $req0="create table classement_$fl as select * from moyenne_orientation_$fl where 1=2";
  $req3=" select count(*) from moyenne_orientation_$fl ";
  $req1="alter table classement_$fl drop column matricule";
  $req4="alter table classement_$fl add column id int";
  mysqli_query($connection,$req0);
  mysqli_query($connection,$req1);
  mysqli_query($connection,$req4);
  $res3=mysqli_query($connection,$req3);
  $ro=mysqli_fetch_assoc($res3);
  $j=1;
  while ($j<= intval($ro["count(*)"]))
  {
      $re="insert into classement_$fl(id) values($j)";
      mysqli_query($connection,$re);
      $j++;
      
  }
  $t=1;
  $req2="select * from classement_$fl ";
  $res2=mysqli_query($connection,$req2);
  $row=mysqli_fetch_assoc($res2);

  foreach($row as $c=>$b)
  { 
      if($t<count($row))
      { 
          $tta="select * from moyenne_orientation_$fl";
          $tts=mysqli_query($connection,$tta);
          $rw=mysqli_fetch_assoc($tts);
          
              foreach($rw as $s=>$n)
              { 
                 
                  if($t>1)
                  {
                    if($s != "matricule"){

                    
                    $sn="select matricule from moyenne_orientation_$fl order by $s desc";
                    
                    $se=mysqli_query($connection,$sn);
                    $h=0;
                    while($rowe=mysqli_fetch_assoc($se))
                    { 
                      $h++;
                             foreach($rowe as $bb=>$pp)
                             {
                               
                              $req5="update classement_$fl set $s=$pp where id=$h";
                              
                              
                              mysqli_query($connection,$req5);
                             }
                                   
                                
                        
                    }
                    $h=0;
                    
                  }
                }
                 
                  if($t==1)
                  {
                    $t++;
                  }
              
          }
        }
          
      }
$dd="alter table classement_$fl drop column id";
mysqli_query($connection,$dd);
     
echo "<script type='text/javascript'>window.location.href='parametrage.php';</script>";










?>