<?php
  switch ($_REQUEST["acao"]) {
    case 'salvar-medico':
      $nome = $_POST["nome"];
      $crm = $_POST["crm"];
      $data_nasc = $_POST["data_nasc"];

      $sql = "INSERT INTO Medico (nome, crm, data_nasc)
              VALUES ('$nome', '$crm', '$data_nasc')";

      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Cadastrado com sucesso');</script>";
        echo "<script>location.href='?page=listar-medico';</script>";
      } else {
        echo "<script>alert('Não foi possível cadastrar');</script>";
        echo "<script>location.href='?page=listar-medico';</script>";
      }
      break;

    case 'editar-medico':
      $nome = $_POST["nome"];
      $crm = $_POST["crm"];
      $data_nasc = $_POST["data_nasc"];

      $sql = "UPDATE Medico SET 
              nome='$nome', 
              crm='$crm',
              data_nasc='$data_nasc'
              WHERE id=" . $_REQUEST["id"];

      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Editado com sucesso');</script>";
        echo "<script>location.href='?page=listar-medico';</script>";
      } else {
        echo "<script>alert('Não foi possível editar a medico');</script>";
        echo "<script>location.href='?page=listar-medico';</script>";
      }
      break;

    case 'excluir-medico':
      $sql = "DELETE FROM Medico WHERE id=" . $_REQUEST["id"];
      
      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Excluído com sucesso');</script>";
        echo "<script>location.href='?page=listar-medico';</script>";
      } else {
        echo "<script>alert('Não foi possível excluir');</script>";
        echo "<script>location.href='?page=listar-medico';</script>";
      }
      break;
  }
?>
