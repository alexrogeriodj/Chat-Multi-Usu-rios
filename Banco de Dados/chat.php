<?php
session_start();
require_once("config.php");
require_once("functions.php");
 
//Verifica se a sess�o existe
if(!isset($_SESSION["user"])){
    header("Location: index.php");
    exit();
}
 
//Verifica se o usu�rio j� foi exclu�do do banco
$tbUser = $conn->prepare("select count(*) as total from usuarios where id_usuario=:id");
$tbUser->bindParam(":id",$_SESSION["user"], PDO::PARAM_INT);
$tbUser->execute();
$linha = $tbUser->fetch(PDO::FETCH_ASSOC);
if($linha["total"] < 1){
    session_destroy();
    header("Location: index.php");
    exit(); 
}
 
//Pega o nome do destinat�rio da mensagem
$to = isset($_POST["slUsers"])?$_POST["slUsers"]:"";
 
//Verifica se o usu�rio enviou alguma mensagem, caso positivo, ele chama a fun��o interagir passando os dados do respectivo usu�rio como par�metro.
 
if(isset($_POST["btnEnviar"]) && isset($_POST["txtMensagem"])){
    interagir($_SESSION["user_name"], $to, $_SESSION["sala"], strip_tags($_POST["txtMensagem"]) );
}
 
?>
<html>
<head>
<title>Chat</title>
<style>
.tab{
    background-color:#000;
    color:#FFF;
    font-size:12px;
    font-weight:bold;
    padding:4px;
}
</style>
</head>
<body>
<div style="text-align:center">
 
<h1>Chat Online</h1>
 
<h2 style="color:#0C3">Voc� est� na Sala <?php echo pega_nome_sala($_SESSION["sala"]);?> <a href="sair.php">Sair da Sala</a></h2>
 
<hr />
<form action="chat.php" method="post">
<table width="709" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="516"><iframe src="interacao.php" width="500px" height="500px" frameborder="0" scrolling="yes"></iframe> </td>
    <td width="4"> </td>
    <td width="189"><?php require_once("users-online.php");?> </td>
  </tr>
  <tr>
    <td colspan="3"><?php require_once("writing.php");?> </td>
    </tr>
</table>
</form>
</div>
</body>
</html>
