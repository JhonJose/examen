<?php
setCookie('idu',"");
setCookie('acceso',"");
session_start();
session_unset();
session_destroy();
$msg="<center>Sesion terminada</center>";
Print"<meta http-equiv='refresh' content='0;
url=index.php?msg=$msg'>";
?>