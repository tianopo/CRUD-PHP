<h1>Editar Médico</h1>
<?php
  $sql = "SELECT * FROM Medico where id=".$_REQUEST["id"];
  $res = $conn->query($sql);
  $row = $res->fetch_object();
?>
<form action="?page=salvar-medico" method="POST">
  <input type="hidden" name="acao" value="editar-medico">
  <input type="hidden" name="id" value="<?php print $row->id; ?>">
  <div class="mb-3">
    <label>Nome</label>
    <input type="text" class="form-control" value="<?php print $row->nome; ?>" name="nome">
  </div>
  <div class="mb-3">
    <label>crm</label>
    <input type="text" name="crm" maxlength="10" value="<?php print $row->crm; ?>" class="form-control">
  </div>
  <div class="mb-3">
    <label>Data de Nascimento</label>
    <input type="date" name="data_nasc" value="<?php print $row->data_nasc; ?>" class="form-control">
  </div>
  <div class="mb-3">
    <button class="btn btn-primary">Enviar</button>
  </div>
</form>