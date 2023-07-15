<h1>Listar Especialidade</h1>
<?php
  $sql = "SELECT * FROM Especialidade";
  $res = $conn->query($sql);
  $qtd = $res->num_rows;
  
  if($qtd > 0){
    print "<table class='table' table-hover table-striped 
    table-bordered>";
      print "<tr>";
      print "<th>ID</th>";
      print "<th>especialidade</th>";
      print "<th>CBOS</th>";
      print "<th>Ações</th>";
      print "</tr>";
    while($row = $res->fetch_object()){
      print "<tr>";
      print "<td>".$row->id."</td>";
      print "<td>".$row->especialidade."</td>";
      print "<td>".$row->CBOS."</td>";
      print "<td>
              <button 
                onclick=\"location.href='?page=editar-especialidade&id=".$row->id."';\"
                class='btn btn-success'>Editar Especialidade</button>
              <button 
                onclick=\"if(confirm('Tem certeza que deseja excluir?'))
                    {location.href='?page=salvar-especialidade&acao=excluir-especialidade&id=" . $row->id."';}
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
