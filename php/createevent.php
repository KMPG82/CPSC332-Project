
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
        <form action="./eventcreation.php" method='post'>
            <button type="button" class="btn btn-primary btn-lg ml-4 mt-2 mb-2" name="create">Create</button>

            <div class="d-flex flex-column border-bottom border-top">
                <h1 class="display-4 text-center mt-4"><input type="text" name="eventName"class="text-center" placeholder="Event Name"></h1>

                <div class="d-flex justify-content-evenly text-center text-break mb-4">
                    <div class="w-75">
                        <b>Start_date</b><br>
                        <input type="date" name="startDate"class="text-center">                                   
                    </div>
                    <div class="w-75">
                        <b>Start_time</b><br>
                        <input type="time" name="startTime"class="text-center">                          
                    </div>
                    <div class="w-75">
                        <b>Venue</b><br>
                        <input type="text" name="venue"class="text-center">                     
                    </div>
                </div>
                
                <div class="d-flex justify-content-evenly text-center text-break mb-4">
                    <div class="w-75">
                        <b>Abstract_deadline</b><br>
                        <input type="text" name="abstractDeadline"class="text-center">               
                    </div>
                    <div class="w-75">
                        <b>Max_cap</b><br>
                        <input type="text" name="max"class="text-center"> 
                    </div>
                    <div class="w-75">
                        <b>City</b><br>
                        <input type="text" name="city"class="text-center"> 
                    </div>
                </div>

                <div class="d-flex justify-content-evenly text-center text-break mb-4">
                    <div class="w-75">
                        <b>State</b><br>
                        <input type="text" name="state"class="text-center"> 
                    </div>
                    <div class="w-75">
                        <b>Street</b><br>
                        <input type="text" name="street"class="text-center">   
                    </div>
                    <div class="w-75">
                        <b>Zip</b><br>
                        <input type="text" name="zip"class="text-center"> 
                    </div>
                </div>

                <div class="d-flex justify-content-evenly text-center text-break mb-4">
                    <div class="w-75">
                        <b>Status</b><br>
                        <input type="text" name="status"class="text-center">                           
                    </div>
                    <div class="w-75">
                        <b>End_date</b><br>
                        <input type="date" name="endDate"class="text-center"> 
                    </div>
                    <div class="w-75">
                        <b>End_time</b><br>
                        <input type="time" name="endTime"class="text-center"> 
                    </div>
                </div>

                <div class="d-flex justify-content-evenly text-center text-break">
                    <div class="w-100">
                        <b>Description</b><br>
                        <input type="text" name="description"class="text-center"> 
                    </div>
                </div>

                <div class="d-flex justify-content-evenly text-center text-break mb-4">
               
                </div>
            </div>
        </form>
            
    </body>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</html>