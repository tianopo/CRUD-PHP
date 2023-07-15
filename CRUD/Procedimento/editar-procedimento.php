<h1>Editar Procedimento</h1>
<?php
  $sql = "SELECT * FROM Procedimento where id=".$_REQUEST["id"];
  $res = $conn->query($sql);
  $row = $res->fetch_object();
?>
<form action="?page=salvar-procedimento" method="POST">
  <input type="hidden" name="acao" value="editar-procedimento">
  <input type="hidden" name="id" value="<?php print $row->id; ?>">
  <div class="mb-3">
    <label>Descrição do Procedimento</label>
    <input type="text" class="form-control" value="<?php print $row->descricao_procedimento; ?>" name="descricao_procedimento">
  </div>
  <div class="mb-3">
    <label>Tipo de Procedimento</label>
    <input type="text" name="tipo_procedimento" value="<?php print $row->tipo_procedimento; ?>" class="form-control">
  </div>
  <div class="mb-3">
    <button class="btn btn-primary">Enviar</button>
  </div>
</form>