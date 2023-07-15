<!doctype html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <title>Cadastro</title>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">HOSPITAIS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?page=listar-atendimento">listar atendimento</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?page=novo-atendimento">novo atendimento</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?page=novo-beneficiario">novo beneficiário</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?page=listar-beneficiario">listar beneficiário</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?page=novo-especialidade">nova especialidade</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?page=listar-especialidade">listar especialidade</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?page=novo-local-atendimento">novo local atendimento</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?page=listar-local-atendimento">listar local atendimento</a>
        </li><li class="nav-item">
          <a class="nav-link" href="?page=novo-medico">novo medico</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?page=listar-medico">listar medico</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?page=listar-medico_especialidade">listar especialidade do médico</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?page=novo-procedimento">novo procedimento</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?page=listar-procedimento">listar procedimento</a>
        </li>
      </ul>
      </div>
    </div>
  </nav>

  <div class="container">
    <div class="row">
      <div class="col mt-5">
        <?php
        include('config.php');
        switch (@$_REQUEST["page"]) {
          case "listar-atendimento":
            include("CRUD/Atendimento/listar-atendimento.php");
            break;
          case "salvar-atendimento":
            include("CRUD/Atendimento/salvar-atendimento.php");
            break;
          case "novo-atendimento":
            include("CRUD/Atendimento/novo-atendimento.php");
            break;
          case "novo-beneficiario":
            include("CRUD/Beneficiario/novo-beneficiario.php");
            break;
          case "listar-beneficiario":
            include("CRUD/Beneficiario/listar-beneficiario.php");
            break;
          case "salvar-beneficiario":
            include("CRUD/Beneficiario/salvar-beneficiario.php");
            break;
          case "editar-beneficiario":
            include("CRUD/Beneficiario/editar-beneficiario.php");
            break;
          case "novo-especialidade":
            include("CRUD/Especialidade/novo-especialidade.php");
            break;
          case "listar-especialidade":
            include("CRUD/Especialidade/listar-especialidade.php");
            break;
          case "salvar-especialidade":
            include("CRUD/Especialidade/salvar-especialidade.php");
            break;
          case "editar-especialidade":
            include("CRUD/Especialidade/editar-especialidade.php");
            break;
          case "novo-local-atendimento":
            include("CRUD/LocalAtendimento/novo-local-atendimento.php");
            break;
          case "listar-local-atendimento":
            include("CRUD/LocalAtendimento/listar-local-atendimento.php");
            break;
          case "salvar-local-atendimento":
            include("CRUD/LocalAtendimento/salvar-local-atendimento.php");
            break;
          case "novo-medico":
            include("CRUD/Medico/novo-medico.php");
            break;
          case "listar-medico":
            include("CRUD/Medico/listar-medico.php");
            break;
          case "salvar-medico":
            include("CRUD/Medico/salvar-medico.php");
            break;
          case "editar-medico":
            include("CRUD/Medico/editar-medico.php");
            break;
          case "listar-medico_especialidade":
            include("CRUD/Medico_Especialidade/listar-medico_especialidade.php");
            break;
          case "salvar-medico_especialidade":
            include("CRUD/Medico_Especialidade/salvar-medico_especialidade.php");
            break;
          case "editar-medico_especialidade":
            include("CRUD/Medico_Especialidade/editar-medico_especialidade.php");
            break;
          case "novo-procedimento":
            include("CRUD/Procedimento/novo-procedimento.php");
            break;
          case "listar-procedimento":
            include("CRUD/Procedimento/listar-procedimento.php");
            break;
          case "salvar-procedimento":
            include("CRUD/Procedimento/salvar-procedimento.php");
            break;
          case "editar-procedimento":
            include("CRUD/Procedimento/editar-procedimento.php");
            break;
          default:
            print "<h1>Bem-vindos!</h1>";
            print "<h6>by: <strong>Matheus Henrique de Abreu</strong> </h6>";
        }
        ?>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>