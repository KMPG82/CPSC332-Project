<?php
session_start();
include("connection.php");

if (isset($_POST["register"])) 
{
    //get submited credentials
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $phoneNum = $_POST['phoneNum'];

    //create the query
    $sql = "insert into user(Email, Password, F_name, L_name, P_number)
    VALUES ('$email','$password','$firstName','$lastName','$phoneNum')";

    try {
        $result = mysqli_query($mysqli, $sql);
        header("location: ./home.php");
        $_SESSION['Email'] = $email;
        $_SESSION['Password'] = $password;
        $_SESSION['Fname'] = $firstName;
    } catch (mysqli_sql_exception $e) {
        echo '
        <script>
            window.location.href="./registration.php";
            alert("Failed to register. An account is already registered with this email or password. '.$e->getMessage().'")
        </script>
        ';
        }
}
//close connection
$mysqli->close();
?>