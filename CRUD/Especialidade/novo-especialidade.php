<h1>Nova Especialidade</h1>
<form action="?page=salvar-especialidade" method="POST">
  <input type="hidden" name="acao" value="salvar-especialidade">
  <div class="mb-3">
    <label>Especialidade</label>
    <input type="text" class="form-control" name="especialidade">
  </div>
  <div class="mb-3">
    <label>CBOS</label>
    <input type="text" name="cbos" maxlength="10" class="form-control">
  </div>
  <div class="mb-3">
    <button class="btn btn-primary">Enviar</button>
  </div>
</form>