<?php
session_start();

$userId = $_SESSION["UserID"];

if (isset($_POST["create"])) 
{
    //get submited event details
    $eventName = $_POST['eventName'];
    $startDate = $_POST['startDate'];
    $startTime = $_POST['startTime'];
    $venue = $_POST['venue'];
    $abstractDeadline = $_POST['abstractDeadline'];
    $max = $_POST['max'];
    $city = $_POST['city'];
    $state = $_POST['state'];
    $street = $_POST['street'];
    $zip = $_POST['zip'];
    $status = $_POST['status'];
    $endDate = $_POST['endDate'];
    $endTime = $_POST['endTime'];
    $description = $_POST['description'];

    echo $eventName;

    //create the query
    $sql = "insert into user(Email, Password, F_name, L_name, P_number)
    VALUES ('$email','$password','$firstName','$lastName','$phoneNum')";

  /*   try {
        $result = mysqli_query($mysqli, $sql);

        $sql = "select * from user where email='$email' and password='$password'";

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
            alert("Failed to register. An account is already registered with this email or password. '.$e->getMessage().'")
        </script>
        ';
        } */
}
?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php echo $eventName ?>;
</body>
</html>