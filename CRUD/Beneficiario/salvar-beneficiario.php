<?php
  switch ($_REQUEST["acao"]) {
    case 'salvar-beneficiario':
      $nome = $_POST["nome"];
      $sexo = $_POST["sexo"];
      $data_nasc = $_POST["data_nasc"];

      $sql = "INSERT INTO Beneficiário (nome, sexo, data_nasc)
              VALUES ('$nome', '$sexo', '$data_nasc')";

      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Cadastrado com sucesso');</script>";
        echo "<script>location.href='?page=listar-beneficiario';</script>";
      } else {
        echo "<script>alert('Não foi possível cadastrar beneficiario');</script>";
        echo "<script>location.href='?page=listar-beneficiario';</script>";
      }
      break;

    case 'editar-beneficiario':
      $nome = $_POST["nome"];
      $sexo = $_POST["sexo"];
      $data_nasc = $_POST["data_nasc"];

      $sql = "UPDATE Beneficiário SET 
              nome='$nome', 
              sexo='$sexo',
              data_nasc='$data_nasc'
              WHERE id=" . $_REQUEST["id"];

      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Editado com sucesso');</script>";
        echo "<script>location.href='?page=listar-beneficiario';</script>";
      } else {
        echo "<script>alert('Não foi possível editar');</script>";
        echo "<script>location.href='?page=listar-beneficiario';</script>";
      }
      break;

    case 'excluir-beneficiario':
      $sql = "DELETE FROM Beneficiário WHERE id=" . $_REQUEST["id"];
      
      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Excluído com sucesso');</script>";
        echo "<script>location.href='?page=listar-beneficiario';</script>";
      } else {
        echo "<script>alert('Não foi possível excluir');</script>";
        echo "<script>location.href='?page=listar-beneficiario';</script>";
      }
      break;
  }
?>
