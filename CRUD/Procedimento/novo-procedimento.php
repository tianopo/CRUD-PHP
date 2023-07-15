<h1>Novo Procedimento</h1>
<form action="?page=salvar-procedimento" method="POST">
  <input type="hidden" name="acao" value="salvar-procedimento">
  <div class="mb-3">
    <label>Descrição do procedimento</label>
    <input type="text" class="form-control" name="descricao_procedimento">
  </div>
  <div class="mb-3">
    <label>Tipo de Procedimento</label>
    <input type="text" name="tipo_procedimento" maxlength="10" class="form-control">
  </div>
  <div class="mb-3">
    <button class="btn btn-primary">Enviar</button>
  </div>
</form>