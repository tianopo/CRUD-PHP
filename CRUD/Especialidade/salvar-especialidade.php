<?php
  switch ($_REQUEST["acao"]) {
    case 'salvar-especialidade':
      $especialidade = $_POST["especialidade"];
      $cbos = $_POST["cbos"];

      $sql = "INSERT INTO Especialidade (especialidade, cbos)
              VALUES ('$especialidade', '$cbos')";

      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Cadastrado com sucesso');</script>";
        echo "<script>location.href='?page=listar-especialidade';</script>";
      } else {
        echo "<script>alert('Não foi possível cadastrar');</script>";
        echo "<script>location.href='?page=listar-especialidade';</script>";
      }
      break;

    case 'editar-especialidade':
      $especialidade = $_POST["especialidade"];
      $cbos = $_POST["cbos"];

      $sql = "UPDATE Especialidade SET 
              especialidade='$especialidade', 
              cbos='$cbos'
              WHERE id=" . $_REQUEST["id"];

      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Editado com sucesso');</script>";
        echo "<script>location.href='?page=listar-especialidade';</script>";
      } else {
        echo "<script>alert('Não foi possível editar a especialidade');</script>";
        echo "<script>location.href='?page=listar-especialidade';</script>";
      }
      break;

    case 'excluir-especialidade':
      $sql = "DELETE FROM Especialidade WHERE id=" . $_REQUEST["id"];
      
      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Excluído com sucesso');</script>";
        echo "<script>location.href='?page=listar-especialidade';</script>";
      } else {
        echo "<script>alert('Não foi possível excluir');</script>";
        echo "<script>location.href='?page=listar-especialidade';</script>";
      }
      break;
  }
?>
