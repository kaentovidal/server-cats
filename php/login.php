<?php
session_start();

//Credenciales de acceso a la Base de Datos
$DATABASE_HOST = 'localhost:3306';
$DATABASE_USER = 'root';
$DATABASE_PASS = 'root';
$DATABASE_NAME = 'clusterpao5';

//Conexion a la Base de Datos
$conexion = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);

if (mysqli_connect_error()) {

    // si se encuentra error en la conexión

    exit('Fallo en la conexión de MySQL:' . mysqli_connect_error());
}

// Se valida si se ha enviado información, con la función isset()

if (empty($_POST)) {

    header('Location: ../html/login.html');
}

// evitar inyección sql

if ($stmt = $conexion->prepare('SELECT id, password, name FROM users WHERE email = ?')) {

    // parámetros de enlace de la cadena s
    $stmt->bind_param('s', $_POST['email']);
    $stmt->execute();
}


// acá se valida si lo ingresado coincide con la base de datos

$stmt->store_result();
$stmt->num_rows;
if ($stmt->num_rows > 0) {
    $stmt->bind_result($id, $password, $name);
    $stmt->fetch();
    $pass = $password;
    // se confirma que la cuenta existe ahora validamos la contraseña

    if (password_verify($_POST['password'], $password)) {

        // la conexion sería exitosa, se crea la sesión
        session_regenerate_id();
        $_SESSION['loggedin'] = TRUE;
        $_SESSION['name'] = $name;
        $_SESSION['email'] = $_POST['email'];
        $_SESSION['id'] = $id;
        header('Location: home.php');
    }
} else {

    // usuario incorrecto
    header('Location: ../html/login.html');
}

$stmt->close();