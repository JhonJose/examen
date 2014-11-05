<?php
$user=$_GET['idu'];
if ($user =='')
{
    $msg="No iniciaste sesión";
    echo $user;
    //header("location:index.php?msg=$msg");
    exit;
}
setCookie('idu',$user);
setCookie('acceso',1);
SESSION_start();
$_SESSION['idu']=$user;
$_SESSION['acceso']=1;
print"<meta http-equiv='refresh' content='0;
       url=index.php?url=inicio'>";
exit;

?>