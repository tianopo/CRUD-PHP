<?php
  switch ($_REQUEST["acao"]) {
    case 'salvar-procedimento':
      $descricao_procedimento = $_POST["descricao_procedimento"];
      $tipo_procedimento = $_POST["tipo_procedimento"];

      $sql = "INSERT INTO Procedimento (descricao_procedimento, tipo_procedimento)
              VALUES ('$descricao_procedimento', '$tipo_procedimento')";

      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Cadastrado com sucesso');</script>";
        echo "<script>location.href='?page=listar-procedimento';</script>";
      } else {
        echo "<script>alert('Não foi possível cadastrar');</script>";
        echo "<script>location.href='?page=listar-procedimento';</script>";
      }
      break;

    case 'editar-procedimento':
      $descricao_procedimento = $_POST["descricao_procedimento"];
      $tipo_procedimento = $_POST["tipo_procedimento"];

      $sql = "UPDATE Procedimento SET 
              descricao_procedimento='$descricao_procedimento', 
              tipo_procedimento='$tipo_procedimento'
              WHERE id=" . $_REQUEST["id"];

      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Editado com sucesso');</script>";
        echo "<script>location.href='?page=listar-procedimento';</script>";
      } else {
        echo "<script>alert('Não foi possível editar a procedimento');</script>";
        echo "<script>location.href='?page=listar-procedimento';</script>";
      }
      break;

    case 'excluir-procedimento':
      $sql = "DELETE FROM Procedimento WHERE id=" . $_REQUEST["id"];
      
      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Excluído com sucesso');</script>";
        echo "<script>location.href='?page=listar-procedimento';</script>";
      } else {
        echo "<script>alert('Não foi possível excluir');</script>";
        echo "<script>location.href='?page=listar-procedimento';</script>";
      }
      break;
  }
?>
