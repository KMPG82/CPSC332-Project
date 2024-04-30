<?php
session_start();
include("connection.php");

$userId = $_SESSION["UserID"];

//create the query
$sql = "select * from event where Status='active' and User_id!='$userId'";

try {
    //execute the query
    $result = mysqli_query($mysqli, $sql);

    //convert result from query to array
    //$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
} catch (Exception $e) {
    echo '
    <script>
        alert("Retrieval of your created events failed. Please try again.")
    </script>
    ';
}





//close connection
$mysqli->close();
?>

<!doctype html>
<html class="mx-0">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Home</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="../css/styles.css" rel="stylesheet">

    </head>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="./home.php">AEM</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
            <a class="nav-item nav-link active mr-3" href="./home.php">Your Events <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link active mr-3" href="./enrolledevents.php">Your Enrolled Events</a>
            <a class="nav-item nav-link active" href="./activeevents.php">Events</a>
            </div>
        </div>
        
        <a href="./logout.php">
            <button type="button" class="btn btn-danger" name="logout">Logout</button>
        </a>
    </nav>

    <body class="mx-0"> 
        <?php while($row = $result->fetch_assoc()) {
            ?>
            <div class="d-flex flex-column border-bottom border-top">
                <h1 class="display-4 text-center"><?php echo $row['Event_name']; ?></h1>
                <div class="d-flex justify-content-evenly text-center text-break">
                    <div class="w-75">
                        <b>Start_date</b><br>
                        <?php echo $row['Start_date']; ?>           
                    </div>
                    <div class="w-75">
                        <b>Start_time</b><br>
                        <p><?php echo $row['Start_time']; ?></p>
                    </div>
                    <div class="w-75">
                        <b>Venue</b><br>
                        <p><?php echo $row['Venue']; ?></p>
                    </div>
                </div>
                
                <div class="d-flex justify-content-evenly text-center text-break">
                    <div class="w-75">
                        <b>Abstract_deadline</b><br>
                        <p><?php echo $row['Abstract_deadline']; ?></p>              
                    </div>
                    <div class="w-75">
                        <b>Max_cap</b><br>
                        <p><?php echo $row['Max_cap']; ?></p>
                    </div>
                    <div class="w-75">
                        <b>City</b><br>
                        <p><?php echo $row['City']; ?></p>
                    </div>
                </div>

                <div class="d-flex justify-content-evenly text-center text-break">
                    <div class="w-75">
                    <b>State</b><br>
                    <p><?php echo $row['State']; ?></p>            
                    </div>
                    <div class="w-75">
                        <b>Street</b><br>
                        <p><?php echo $row['Street']; ?></p>  
                    </div>
                    <div class="w-75">
                        <b>Zip</b><br>
                        <p><?php echo $row['Zip']; ?></p>
                    </div>
                </div>

                <div class="d-flex justify-content-evenly text-center text-break">
                    <div class="w-75">
                        <b>Status</b><br>
                        <p><?php echo $row['Status']; ?></p>                          
                    </div>
                    <div class="w-75">
                        <b>End_date</b><br>
                        <p><?php echo $row['End_date']; ?></p>
                    </div>
                    <div class="w-75">
                        <b>End_time</b><br>
                        <p><?php echo $row['End_time']; ?></p>
                    </div>
                </div>

                <div class="d-flex justify-content-evenly text-center text-break">
                    <div class="w-100">
                        <b>Description</b><br>
                        <p><?php echo $row['Description']; ?></p>
                    </div>
                </div>

                <div class="d-flex justify-content-evenly text-center text-break">
                    <div class="w-100">
                        <?php echo ("<a href='./enrollevent.php?Event_id=" .$row['Event_id']. "'><button type='button' class='btn btn-info mt-2 mb-3'>Enroll for this event</button></a>") ?>
                    </div>
                </div>
            </div>
        <?php } ?>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</html>