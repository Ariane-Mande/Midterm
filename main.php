<?php 

?>
 
<!DOCTYPE html>
<html>

<head>
<title>Lab Activity 3 - Main</title>
<link rel="stylesheet" href="styless.css" />
</head>
<style>

body{
  background-image: url('homelogo.jpg');
  height: 100%;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    flex-direction: column;
}
h1 {
  text-align: center;
  color: #000000;
  background: #8FBC8F;
  padding: 10px 15px;
  color: #FFFFFF;
  border-radius: 5px;

}


</style>
<body>


    <br><br><br>
     <h1>Be-leaf in yourself</h1>
    <center>

      <button type="submit" class="btn" method="post" name="logout" id="logout">LOGOUT</button>
    <script type="text/javascript">
    document.getElementById("logout").onclick = function () {
    confirm('Are you sure you want to log out?');
    window.location.href='index.php';
    };
</script>
    	
    </center>

</form>

</div>
</div>
</body>

<?php
session_start();

  include 'config.php';

  $_SESSION["verify"] = false;
  $_SESSION["code_access"] = false;

  if (isset($_REQUEST['logout'])){

        date_default_timezone_set('Asia/Manila');
        $currentDate = date('Y-m-d H:i:s');
        $currentDate_timestamp = strtotime($currentDate);
        $_SESSION["current"] = $currentDate;

        $_SESSION["verify"] = true;
        $_SESSION["code_access"] = true;

        $id = $_SESSION["id"];
        $username = $_SESSION["username"];

        $sql = "INSERT INTO `userlog` (user_id, username, activity, dateandtime) VALUES ('$id', '$username', 'Logged Out', '$currentDate')";
            $result = mysqli_query($con, $sql);
      
        if($result){
            header("Location: ../MidtermLab/index.php");
        }else{

        }      
  }
      
?>

</html>
