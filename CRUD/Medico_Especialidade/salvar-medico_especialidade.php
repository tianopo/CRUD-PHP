<?php
  switch ($_REQUEST["acao"]) {

    case 'excluir':
      $sql = "DELETE FROM Mé WHERE id=" . $_REQUEST["id"];
      
      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Excluído com sucesso');</script>";
        echo "<script>location.href='?page=listar';</script>";
      } else {
        echo "<script>alert('Não foi possível excluir');</script>";
        echo "<script>location.href='?page=listar';</script>";
      }
      break;
  }
?>
