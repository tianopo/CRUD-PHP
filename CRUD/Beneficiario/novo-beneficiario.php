<h1>Novo beneficiário</h1>
<form action="?page=salvar-beneficiario" method="POST">
  <input type="hidden" name="acao" value="salvar-beneficiario">
  <div class="mb-3">
    <label>nome</label>
    <input type="text" class="form-control" name="nome">
  </div>
  <div class="mb-3">
    <label>sexo</label>
    <input type="text" name="sexo" class="form-control" maxlength="1" pattern="[MmFfnN]">
    <span>
    <?php
        print "Insira apenas os caracteres: M = masculino, F = feminino ou N = não quero informar";
    ?>
  </span>
  </div>
  <div class="mb-3">
    <label>Data de Nascimento</label>
    <input type="date" name="data_nasc" class="form-control">
  </div>
  <div class="mb-3">
    <button class="btn btn-primary">Enviar</button>
  </div>
</form>