<?php
  $sql = "SELECT me.id, m.nome AS nomeMedico, e.especialidade AS nomeEspecialidade
  FROM Medico_Especialidade AS me
  INNER JOIN Medico AS m ON me.medicoID = m.id
  INNER JOIN Especialidade AS e ON me.especialidadeID = e.id";
  $result = $conn->query($sql);
  $medico_especialidadeData = array();

  if ($result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) {
        $medico_especialidadeData[] = $row;
    }
}
?>
<h1>Novo Local de Atendimento</h1>
<form action="?page=salvar-local-atendimento" method="POST">
  <input type="hidden" name="acao" value="salvar-local-atendimento">
  <div class="mb-3">
    <label>Endereço</label>
    <input type="text" class="form-control" name="endereco">
  </div>
  <div class="mb-3">
  <label for="medico_especialidade">Especialidade do Médico:</label>
        <select id="medico_especialidade" name="medico_especialidade">
            <?php
            if (!empty($medico_especialidadeData)) {
                foreach ($medico_especialidadeData as $data) {
                    $id = $data['id'];
                    $nomeMedico = $data['nomeMedico'];
                    $nomeEspecialidade = $data['nomeEspecialidade'];
                    echo "<option value=\"$id\">$nomeMedico - $nomeEspecialidade</option>";
                }
            }
            ?>
        </select>
  </div>
    <button class="btn btn-primary">Enviar</button>
  </div>
</form>