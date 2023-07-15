<h1>Listar Especialidade do Médico</h1>
<?php
  $sql = "SELECT
  m.id AS medicoID,
  m.nome AS nomeMedico,
  m.crm AS crmMedico,
  m.data_nasc AS dataNascimento,
  e.id AS especialidadeID,
  e.especialidade AS nomeEspecialidade,
  e.CBOS AS cbosEspecialidade
FROM
  Medico_Especialidade AS me
INNER JOIN Medico AS m ON me.medicoID = m.id
INNER JOIN Especialidade AS e ON me.especialidadeID = e.id;
";
  $res = $conn->query($sql);
  $qtd = $res->num_rows;

  
  if($qtd > 0){
    print "<table class='table' table-hover table-striped 
    table-bordered>";
      print "<tr>";
      print "<th>Médico</th>";
      print "<th>CRM</th>";
      print "<th>Data de Nascimento</th>";
      print "<th>especialidade</th>";
      print "<th>CBOS</th>";
      print "</tr>";
    while($row = $res->fetch_object()){
      print "<tr>";
      print "<td>".$row->nomeMedico."</td>";
      print "<td>".$row->crmMedico."</td>";
      print "<td>".$row->dataNascimento."</td>";
      print "<td>".$row->nomeEspecialidade."</td>";
      print "<td>".$row->cbosEspecialidade."</td>";
      print "</tr>";
    }
    print "</table>";
  }else{
    print "<p class='alert alert-danger'>Não encontrou resultados! </p>";
  }
?>
