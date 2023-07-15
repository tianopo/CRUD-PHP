<h1>Novo Médico</h1>
<form action="?page=salvar-medico" method="POST">
  <input type="hidden" name="acao" value="salvar-medico">
  <div class="mb-3">
    <label>Nome</label>
    <input type="text" class="form-control" name="nome">
  </div>
  <div class="mb-3">
    <label>crm</label>
    <input type="crm" name="crm" maxlength="10" class="form-control">
  </div>
  <div class="mb-3">
    <label>Data de Nascimento</label>
    <input type="date" name="data_nasc" class="form-control">
  </div>
  <div class="mb-3">
    <button class="btn btn-primary">Enviar</button>
  </div>
</form>