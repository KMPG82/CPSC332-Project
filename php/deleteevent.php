<?php
session_start();
include("connection.php");
$eventId = $_GET['Event_id'];

if ($eventId) {
    $sql = "delete event, enrolled_by, presenters, sponsors, keynote_speakers
    FROM event
    left join enrolled_by on event.Event_id = enrolled_by.Event_id
    left join presenters on event.Event_id = presenters.Event_id
    left join sponsors on event.Event_id = sponsors.Event_id
    left join keynote_speakers on event.Event_id = keynote_speakers.Event_id
    where event.Event_id = $eventId;";

    try {
        //execute the query
        $delete = mysqli_query($mysqli, $sql);
        header('location:./home.php');
    } catch (Exception $e) {
        echo '
        <script>
        window.location.href="./home.php";
        alert("Deletion of selected event failed. Please try again.");
        </script>
        ';
    }
}
//close connection
$mysqli->close();
?>
