<?php
  switch ($_REQUEST["acao"]) {
    case 'salvar-local-atendimento':

      $endereco = $_POST["endereco"];
      $medico_especialidade = $_POST["medico_especialidade"];

    $sql = "INSERT INTO LocalAtendimento (endereco, medico_especialidadeId)
            VALUES ('$endereco', '$medico_especialidade')";

      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Cadastrado com sucesso');</script>";
        echo "<script>location.href='?page=listar-local-atendimento';</script>";
      } else {
        echo "<script>alert('Não foi possível cadastrar');</script>";
        echo "<script>location.href='?page=listar-local-atendimento';</script>";
      }
      break;

    case 'excluir-local-atendimento':
      $sql = "DELETE FROM LocalAtendimento WHERE id=" . $_REQUEST["id"];
      
      $res = $conn->query($sql);
      if ($res === true) {
        echo "<script>alert('Cancelado com sucesso');</script>";
        echo "<script>location.href='?page=listar-local-atendimento';</script>";
      } else {
        echo "<script>alert('Não foi possível cancelar');</script>";
        echo "<script>location.href='?page=listar-local-atendimento';</script>";
      }
      break;
  }
