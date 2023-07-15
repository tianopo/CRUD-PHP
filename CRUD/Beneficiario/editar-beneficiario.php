<h1>Editar beneficiário</h1>
<?php
  $sql = "SELECT * FROM Beneficiário where id=".$_REQUEST["id"];
  $res = $conn->query($sql);
  $row = $res->fetch_object();
?>
<form action="?page=salvar-beneficiario" method="POST">
  <input type="hidden" name="acao" value="editar-beneficiario">
  <input type="hidden" name="id" value="<?php print $row->id; ?>">
  <div class="mb-3">
    <label>nome</label>
    <input type="text" class="form-control" value="<?php print $row->nome; ?>" name="nome">
  </div>
  <div class="mb-3">
    <label>sexo</label>
    <input type="text" name="sexo" maxlength="1" value="<?php print $row->sexo; ?>" class="form-control">
  </div>
  <div class="mb-3">
    <label>Data de Nascimento</label>
    <input type="date" name="data_nasc" value="<?php print $row->data_nasc; ?>" class="form-control">
  </div>
  <div class="mb-3">
    <button class="btn btn-primary">Enviar</button>
  </div>
</form>