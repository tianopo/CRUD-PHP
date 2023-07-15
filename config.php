<?php
  $hostname = 'localhost';
  $usuario = 'root';
  $senha = '';
  $bancodedados = 'hospitais';

  $conn = new mysqli($hostname,$usuario,$senha,$bancodedados);
  
  if ($conn == TRUE) {
    echo "conectado";
    }
    else {
      echo 'erro de conexao';
    }
  
  if ($conn->connect_error) {
    echo "Erro na conexão com o banco de dados: " . $conn->connect_error;
}