<?php
session_start();
include("connection.php");

$userId = $_SESSION["UserID"];

//create the query
$sql = "select * from event where User_id='$userId'";

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
<html>
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

    <body> 
    <?php while($row = $result->fetch_assoc()) {
         ?>
         <div class=" border border-dark d-flex flex-column">
            <h1 class="display-4 text-center"><?php echo $row['Event_name']; ?></h1>
            <div class="text-center">
                <div class="row row-cols-3">
                    <div class="col pb-3 pt-3 overflow-auto">
                        <b>Start_date</b><br>
                        <?php echo $row['Start_date']; ?>
                    </div>
                    <div class="col pb-3 pt-3 overflow-auto">
                        <b>Start_time</b><br>
                        <?php echo $row['Start_time']; ?>
                    </div>
                    <div class="col pb-3 pt-3 overflow-auto">
                        <b>Venue</b><br>
                        <?php echo $row['Venue']; ?>
                    </div>
                    <div class="col pb-4 overflow-auto">
                        <b>Abstract_deadline</b><br>
                        <?php echo $row['Abstract_deadline']; ?>
                    </div>
                    <div class="col pb-4 overflow-auto">
                        <b>Max_cap</b><br>
                        <?php echo $row['Max_cap']; ?>
                    </div>
                    <div class="col pb-4 overflow-auto">
                        <b>City</b><br>
                        <?php echo $row['City']; ?>
                    </div>
                    <div class="col pb-4 overflow-auto">
                        <b>State</b><br>
                        <?php echo $row['State']; ?>
                    </div>
                    <div class="col pb-4 overflow-auto">
                        <b>Street</b><br>
                        <?php echo $row['Street']; ?>
                    </div>
                    <div class="col pb-4 overflow-auto">
                        <b>Zip</b><br>
                        <?php echo $row['Zip']; ?>
                    </div>
                    <div class="col pb-4 overflow-auto">
                        <b>Status</b><br>
                        <?php echo $row['Status']; ?>
                    </div>
                    <div class="col pb-4 overflow-auto">
                        <b>End_date</b><br>
                        <?php echo $row['End_date']; ?>
                    </div>
                    <div class="col pb-4 overflow-auto">
                        <b>End_time</b><br>
                        <?php echo $row['End_time']; ?>
                    </div>
                
            </div>
            <div class="row">
            <div class="col pb-4 overflow-auto text-center">
                        <b>Description</b><br>
                        <?php echo $row['Description']; ?>
                    </div>
            </div>
    

        <!--     <ul class="list-group">
                <li class="list-group-item"><b>Start_date: </b><?php echo $row['Start_date']; ?></li>
                <li class="list-group-item"><b>Start_time: </b><?php echo $row['Start_time']; ?></li>
                <li class="list-group-item"><b>Venue: </b><?php echo $row['Venue']; ?></li>
                <li class="list-group-item"><b>Abstract_deadline: </b><?php echo $row['Abstract_deadline']; ?></li>
                <li class="list-group-item"><b>Max_cap: </b><?php echo $row['Max_cap']; ?></li>
                <li class="list-group-item"><b>Description: </b><?php echo $row['Description']; ?></li>
                <li class="list-group-item"><b>City: </b><?php echo $row['City']; ?></li>
                <li class="list-group-item"><b>State: </b><?php echo $row['State']; ?></li>
                <li class="list-group-item"><b>Street: </b><?php echo $row['Street']; ?></li>
                <li class="list-group-item"><b>Zip: </b><?php echo $row['Zip']; ?></li>
                <li class="list-group-item"><b>Status: </b><?php echo $row['Status']; ?></li>
                <li class="list-group-item"><b>End_date: </b><?php echo $row['End_date']; ?></li>
                <li class="list-group-item"><b>End_time: </b><?php echo $row['End_time']; ?></li>

            </ul> -->

        </div> 
        <?php } ?>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</html>