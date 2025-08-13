<?php
include_once 'conexion.php';
$objeto = new Conexion();
$conexion =  $objeto->Conectar();

$consultaTarifas =  "SELECT destino, precio, rutaAsignada, rutas.nombreRuta FROM `tarifas` INNER JOIN rutas WHERE rutaAsignada = rutas.idRuta;";
$consultaRutas =  "SELECT * FROM `rutas`";
$consultaorigen =  "SELECT DISTINCT(nombreRuta) FROM `rutas`;";
$consultaDestinos = "SELECT DISTINCT(destino) FROM `tarifas` ORDER BY `tarifas`.`destino` ASC";


// $resultado = $conexion->prepare($consulta);
// $resultado->execute();
// $tarifas = $resultado->fetchAll(PDO::FETCH_ASSOC);

function executeQuery($conexion, $consulta)
{
    $resultado =  $conexion->prepare($consulta);
    $resultado->execute();
    return $resultado->fetchAll(PDO::FETCH_ASSOC);
}
$tarifas = executeQuery($conexion, $consultaTarifas);
$rutas = executeQuery($conexion, $consultaRutas);
$origenes = executeQuery($conexion, $consultaorigen);
$destinos = executeQuery($conexion, $consultaDestinos);

// $ruta = json_encode($rutas, JSON_UNESCAPED_UNICODE);
// $tarifa = json_encode($tarifas, JSON_UNESCAPED_UNICODE);
//print $ruta;
//print $tarifas;
$conexion = null;
