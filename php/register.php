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
    values ('$email','$password','$firstName','$lastName','$phoneNum');";

    try {
        $result = mysqli_query($mysqli, $sql);

        $sql = "select * from user where email='$email' and password='$password';";

        $result = mysqli_query($mysqli, $sql);

        //convert result from query to array
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);

        $_SESSION['Email'] = $email;
        $_SESSION['Password'] = $password;
        $_SESSION['UserID'] = $row['User_id'];
        header("location: ./home.php");

    } catch (mysqli_sql_exception $e) {
        echo '
        <script>
            window.location.href="./registration.php";
            alert("Failed to register. An account is already registered with this email or password.")
        </script>
        ';
        }
}
//close connection
$mysqli->close();
?>