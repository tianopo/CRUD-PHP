<?php
$sqlBeneficiario = "SELECT id, nome AS option_label FROM Beneficiário";
$resultBeneficiario = $conn->query($sqlBeneficiario);
$beneficiarioData = array();

if ($resultBeneficiario->num_rows > 0) {
  while ($row = $resultBeneficiario->fetch_assoc()) {
    $beneficiarioData[] = $row;
  }
}

$sql = "SELECT a.localID, la.endereco, me.medicoID, me.especialidadeID, m.nome AS nomeMedico, e.especialidade AS nomeEspecialidade
        FROM Atendimento AS a
        INNER JOIN LocalAtendimento AS la ON a.localID = la.id
        INNER JOIN Medico_Especialidade AS me ON la.medico_especialidadeId = me.id
        INNER JOIN Medico AS m ON me.medicoID = m.id
        INNER JOIN Especialidade AS e ON me.especialidadeID = e.id";

$result = $conn->query($sql);
$atendimentoData = array();

if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
    $atendimentoData[] = $row;
  }
}

$sqlProcedimento = "SELECT id, descricao_procedimento AS option_label FROM Procedimento";
$resultProcedimento = $conn->query($sqlProcedimento);
$procedimentoData = array();

if ($resultProcedimento->num_rows > 0) {
  while ($row = $resultProcedimento->fetch_assoc()) {
    $procedimentoData[] = $row;
  }
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $beneficiarioID = $_POST["beneficiario"];
  $localID = $_POST["local"];
  $procedimentoID = $_POST["procedimento"];
  $data = $_POST["data"];

  echo "<p>Beneficiário ID: " . $beneficiarioID . "</p>";
  echo "<p>Local ID: " . $localID . "</p>";
  echo "<p>Procedimento ID: " . $procedimentoID . "</p>";
  echo "<p>Data: " . $data . "</p>";
}
?>

<h1>Novo Atendimento</h1>
<form action="?page=salvar-atendimento" method="POST">
  <input type="hidden" name="acao" value="salvar-atendimento">
  <div class="mb-3">
    <label for="beneficiario">Beneficiário:</label>
    <select id="beneficiario" name="beneficiario">
      <?php
      foreach ($beneficiarioData as $data) {
        echo "<option value=\"" . $data['id'] . "\">" . $data['option_label'] . "</option>";
      }
      ?>
    </select>
  </div>
  <div class="mb-3">
    <label for="local">Local de Atendimento:</label>
    <select id="local" name="local">
      <?php
      foreach ($atendimentoData as $data) {
        $localID = $data['localID'];
        $endereco = $data['endereco'];

        echo "<option value=\"$localID\">$localID - $endereco</option>";
      }
      ?>
    </select>
  </div>
  <div class="mb-3">
    <label for="procedimento">Procedimento:</label>
    <select id="procedimento" name="procedimento">
      <?php
      foreach ($procedimentoData as $data) {
        echo "<option value=\"" . $data['id'] . "\">" . $data['option_label'] . "</option>";
      }
      ?>
    </select>
  </div>
  <div class="mb-3">
    <label>Data:</label>
    <input type="date" name="data">
  </div>
  <button class="btn btn-primary">Salvar</button>
</form>