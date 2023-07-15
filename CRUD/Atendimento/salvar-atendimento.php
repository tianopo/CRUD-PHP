<?php
switch ($_REQUEST["acao"]) {
  case 'salvar-atendimento':
    $beneficiario = $_POST["beneficiario"];
    $local = $_POST["local"];
    $procedimento = $_POST["procedimento"];
    $data = $_POST["data"];

    $sql = "INSERT INTO Atendimento (beneficiarioID, localID, procedimentoID, data)
            VALUES ('$beneficiario', '$local', '$procedimento', '$data')";

    $res = $conn->query($sql);
    if ($res === true) {
      print "<script>alert('Cadastrado com sucesso');</script>";
      print "<script>location.href='?page=listar-atendimento';</script>";
    } else {
      print "<script>alert('Não foi possível cadastrar');</script>";
      print "<script>location.href='?page=listar-atendimento';</script>";
    }
    break;

    case 'cancelar-atendimento':
  $sql = "DELETE FROM Atendimento WHERE id=" . $_REQUEST["id"];

  $res = $conn->query($sql);
  if ($res === true) {
    print "<script>alert('Cancelado com sucesso');</script>";
    print "<script>location.href='?page=listar-atendimento';</script>";
  } else {
    print "<script>alert('Não foi possível cancelar');</script>";
    print "<script>location.href='?page=listar-atendimento';</script>";
  }
  break;
}
