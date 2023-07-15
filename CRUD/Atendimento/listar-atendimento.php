<h1>Listar Atendimento</h1>
<?php
$sql = "SELECT a.id, a.data, b.nome AS nomeBeneficiario, la.endereco, m.nome AS nomeMedico, e.especialidade AS nomeEspecialidade, p.descricao_procedimento
  FROM Atendimento AS a
  INNER JOIN Beneficiário AS b ON a.beneficiarioID = b.id
  INNER JOIN LocalAtendimento AS la ON a.localID = la.id
  INNER JOIN Medico_Especialidade AS me ON la.medico_especialidadeId = me.id
  INNER JOIN Medico AS m ON me.medicoID = m.id
  INNER JOIN Especialidade AS e ON me.especialidadeID = e.id
  INNER JOIN Procedimento AS p ON a.procedimentoID = p.id";
$res = $conn->query($sql);
$qtd = $res->num_rows;

if ($qtd > 0) {
  print "<table class='table table-hover table-striped table-bordered'>";
  print "<tr>";
  print "<th>ID</th>";
  print "<th>Beneficiário</th>";
  print "<th>Local</th>";
  print "<th>Procedimento</th>";
  print "<th>Data</th>";
  print "<th>Ações</th>";
  print "</tr>";
  while ($row = $res->fetch_assoc()) {
    $id = $row['id'];
    $nomeBeneficiario = $row['nomeBeneficiario'];
    $endereco = $row['endereco'];
    $descricao = $row['descricao_procedimento'];
    $data = $row['data'];

    print "<tr>";
    print "<td>$id</td>";
    print "<td>$nomeBeneficiario</td>";
    print "<td>$endereco</td>";
    print "<td>$descricao</td>";
    print "<td>$data</td>";
    print "<td>
              <button 
                onclick=\"if(confirm('Tem certeza que deseja cancelar?'))
                    {location.href='?page=salvar-atendimento&acao=cancelar-atendimento&id=$id';}
                    else{false;}\"
                class='btn btn-danger'>
                Cancelar
              </button>";
    print "</tr>";
  }
  print "</table>";
} else {
  print "<p class='alert alert-danger'>Não encontrou resultados!</p>";
}
?>
