<?php
session_start();
include("connection.php");

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
    $type = $_POST['type'];
    $presenter1first = $_POST['presenter1first'];
    $presenter1last = $_POST['presenter1last'];
    $keynote1first = $_POST['keynote1first'];
    $keynote1last = $_POST['keynote1last'];
    $university = $_POST['university'];
    //create the query
    $sql = "insert into event (Start_date, Start_time, Venue, Abstract_deadline, Max_cap, Description, Event_name, Type, City, State, Street, Zip, Status, End_date, End_time, User_id, Uni_id)
    VALUES ('$startDate','$startTime','$venue','$abstractDeadline','$max','$description','$eventName','$type','$city','$state','$street','$zip','$status','$endDate','$endTime','$userId','$university')";

    try {
        $result = mysqli_query($mysqli, $sql);

        header("location: ./home.php");

    } catch (mysqli_sql_exception $e) {
        echo '
        <script>
            window.location.href="./createevent.php";
            alert("Failed to create event. Please try again'.$e->getMessage().'")
        </script>
        ';
        } 

}
?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php        echo $eventName;
  ?>
  <br>
    <?php        echo $startDate;
  ?>
    <br>

    <?php          echo $startTime;
?>
  <br>

    <?php         echo $venue;
 ?>
   <br>

    <?php         echo $abstractDeadline;
 ?>
   <br>

    <?php        echo $max;
  ?>
    <br>

    <?php         echo $city;
 ?>  <br>

    <?php        echo $state;
  ?>  <br>

    <?php         echo $street;
 ?>  <br>

    <?php         echo $zip;
 ?>  <br>

    <?php         echo $status;
 ?>  <br>

    <?php        echo $endDate;
  ?>  <br>

    <?php        echo $endTime;
  ?>  <br>

    <?php        echo $description;
  ?>  <br>

    <?php         echo $type;
 ?>  <br>
    <?php         echo $presenter1first;
    echo $presenter1last;
 ?>  <br>
    <?php         echo $keynote1first;
    echo $keynote1last;
 ?>  <br>
   <?php        echo $university;
  ?>  <br>
  <?php        echo $userId;
  ?>  <br>

    
  
</body>
</html>