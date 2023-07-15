<h1>Listar beneficiário</h1>
<?php
  $sql = "SELECT * FROM Beneficiário";
  $res = $conn->query($sql);
  $qtd = $res->num_rows;
  
  if($qtd > 0){
    print "<table class='table' table-hover table-striped 
    table-bordered>";
      print "<tr>";
      print "<th>ID</th>";
      print "<th>nome</th>";
      print "<th>sexo</th>";
      print "<th>Data de Nascimento</th>";
      print "<th>Ações</th>";
      print "</tr>";
    while($row = $res->fetch_object()){
      print "<tr>";
      print "<td>".$row->id."</td>";
      print "<td>".$row->nome."</td>";
      print "<td>".$row->sexo."</td>";
      print "<td>".$row->data_nasc."</td>";
      print "<td>
              <button 
                onclick=\"location.href='?page=editar-beneficiario&id=".$row->id."';\"
                class='btn btn-success'>Editar</button>
              <button 
                onclick=\"if(confirm('Tem certeza que deseja excluir?'))
                    {location.href='?page=salvar-beneficiario&acao=excluir-beneficiario&id=" . $row->id."';}
                    else{false;}\"
                class='btn btn-danger'>
                Excluir
              </button>";
      print "</tr>";
    }
    print "</table>";
  }else{
    print "<p class='alert alert-danger'>Não encontrou resultados! </p>";
  }
?>
