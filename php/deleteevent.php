<?php
session_start();
include("connection.php");
$eventId = $_GET['Event_id'];

if ($eventId) {
    $sql = "delete event, enrolled_by, presenters, sponsors, keynote_speakers
    FROM event
    LEFT JOIN enrolled_by ON event.Event_id = enrolled_by.Event_id
    LEFT JOIN presenters ON event.Event_id = presenters.Event_id
    LEFT JOIN sponsors ON event.Event_id = sponsors.Event_id
    LEFT JOIN keynote_speakers ON event.Event_id = keynote_speakers.Event_id
    WHERE event.Event_id = $eventId;";

    try {
        //execute the query
        $delete = mysqli_query($mysqli, $sql);
        header('location:./home.php');
    } catch (Exception $e) {
        echo '
        <script>
        window.location.href="./home.php";
        alert("Deletion of selected event failed. ' . $e . '. Please try again.");
        </script>
        ';
    }
}
//close connection
$mysqli->close();
?>
