<h1>Editar Especialidade</h1>
<?php
  $sql = "SELECT * FROM Especialidade where id=".$_REQUEST["id"];
  $res = $conn->query($sql);
  $row = $res->fetch_object();
?>
<form action="?page=salvar-especialidade" method="POST">
  <input type="hidden" name="acao" value="editar-especialidade">
  <input type="hidden" name="id" value="<?php print $row->id; ?>">
  <div class="mb-3">
    <label>Especialidade</label>
    <input type="text" class="form-control" value="<?php print $row->especialidade; ?>" name="especialidade">
  </div>
  <div class="mb-3">
    <label>cbos</label>
    <input type="text" name="cbos" maxlength="10" value="<?php print $row->cbos; ?>" class="form-control">
  </div>
  <div class="mb-3">
    <button class="btn btn-primary">Enviar</button>
  </div>
</form>