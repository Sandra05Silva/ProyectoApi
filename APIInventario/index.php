<?php

include 'bd/BD.php';

header('Access-Control-Allow-Origin: *');

if($_SERVER['REQUEST_METHOD']=='GET'){
    if(isset($_GET['idArticulo'])){
        $query="select * from articulos where idArticulo=".$_GET['idArticulo'];
        $resultado=metodoGet($query);
        echo json_encode($resultado->fetch(PDO::FETCH_ASSOC));
    }else{
        $query="select * from articulos";
        $resultado=metodoGet($query);
        echo json_encode($resultado->fetchAll());
    }
    header("HTTP/1.1 200 OK");
    exit();
}



if($_POST['METHOD']=='POST'){
    unset($_POST['METHOD']);
    $idCategoria=$_POST['idCategoria'];
    $Nombre=$_POST['Nombre'];
    $Fecha_Registro=$_POST['Fecha_Registro'];
    $query="insert into articulos(idCategoria, Nombre, Fecha_Registro) values ('$idCategoria', '$Nombre', '$Fecha_Registro')";
    $queryAutoIncrement="select MAX(idArticulo) as idArticulo from articulos";
    $resultado=metodoPost($query, $queryAutoIncrement);
    echo json_encode($resultado);
    header("HTTP/1.1 200 OK");
    exit();

}

if($_POST['METHOD']=='PUT'){
    unset($_POST['METHOD']);
    $idArticulo=$_GET['idArticulo'];
    $idCategoria=$_POST['idCategoria'];
    $Nombre=$_POST['Nombre'];
    $Fecha_Registro=$_POST['Fecha_Registro'];
    $query="UPDATE articulos SET idCategoria='$idCategoria', Nombre='$Nombre', Fecha_Registro='$Fecha_Registro'  WHERE idArticulo='$idArticulo'";
    $resultado=metodoPut($query);
    echo json_encode($resultado);
    header("HTTP/1.1 200 OK");
    exit();

}

if($_POST['METHOD']=='DELETE'){
    unset($_POST['METHOD']);
    $idArticulo=$_GET['idArticulo'];
    $query="DELETE FROM articulos WHERE idArticulo='$idArticulo'";
    $resultado=metodoDelete($query);
    echo json_encode($resultado);
    header("HTTP/1.1 200 OK");
    exit();
}

header("HTTP/1.1 400 Bad Request");

?>
 