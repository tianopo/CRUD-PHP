<h1>Listar Local de Atendimento</h1>
<?php
$sql = "SELECT la.id, la.endereco, me.medicoID, me.especialidadeID, m.nome AS nomeMedico, e.especialidade AS nomeEspecialidade
        FROM LocalAtendimento AS la
        INNER JOIN Medico_Especialidade AS me ON la.medico_especialidadeId = me.id
        INNER JOIN Medico AS m ON me.medicoID = m.id
        INNER JOIN Especialidade AS e ON me.especialidadeID = e.id";
$result = $conn->query($sql);
$qtd = $result->num_rows;

if ($qtd > 0) {
    print "<table class='table' table-hover table-striped table-bordered'>";
    print "<tr>";
    print "<th>ID</th>";
    print "<th>Endereço</th>";
    print "<th>Médico</th>";
    print "<th>Especialidade</th>";
    print "<th>Ações</th>";
    print "</tr>";

    while ($row = $result->fetch_assoc()) {
        $id = $row['id'];
        $endereco = $row['endereco'];
        $nomeMedico = $row['nomeMedico'];
        $nomeEspecialidade = $row['nomeEspecialidade'];

        print "<tr>";
        print "<td>$id</td>";
        print "<td>$endereco</td>";
        print "<td>$nomeMedico</td>";
        print "<td>$nomeEspecialidade</td>";
        print "<td>
              <button onclick=\"if(confirm('Tem certeza que deseja cancelar?'))
                    {location.href='?page=salvar-local-atendimento&acao=excluir-local-atendimento&id=$id';}
                    else{false;}\"
                class='btn btn-danger'>Cancelar</button>";
        print "</tr>";
    }

    print "</table>";
} else {
    print "<p class='alert alert-danger'>Não encontrou resultados!</p>";
}
?>
