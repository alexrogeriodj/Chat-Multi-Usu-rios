<?php
//Destoi a sess�o e redireciona o usu�rio para a p�gina de in�cio do chat.
session_start();
session_destroy();
header("Location: index.php");
?>
