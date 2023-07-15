<h1>Listar Procedimento</h1>
<?php
  $sql = "SELECT * FROM Procedimento";
  $res = $conn->query($sql);
  $qtd = $res->num_rows;
  
  if($qtd > 0){
    print "<table class='table' table-hover table-striped 
    table-bordered>";
      print "<tr>";
      print "<th>ID</th>";
      print "<th>descricao do procedimento</th>";
      print "<th>tipo de procedimento</th>";
      print "<th>Ações</th>";
      print "</tr>";
    while($row = $res->fetch_object()){
      print "<tr>";
      print "<td>".$row->id."</td>";
      print "<td>".$row->descricao_procedimento."</td>";
      print "<td>".$row->tipo_procedimento."</td>";
      print "<td>
              <button 
                onclick=\"location.href='?page=editar-procedimento&id=".$row->id."';\"
                class='btn btn-success'>Editar Procedimento</button>
              <button 
                onclick=\"if(confirm('Tem certeza que deseja excluir?'))
                    {location.href='?page=salvar-procedimento&acao=excluir-procedimento&id=" . $row->id."';}
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
