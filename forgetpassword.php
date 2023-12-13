<?php
include"conn.php";
$confirmpassErr="";
$user = $_GET['ref'] ;


$no_of_q = "SELECT * FROM questions where username='$user'"; 
$no_of_q_r=mysqli_query($conn,$no_of_q);
$no_of_question = mysqli_num_rows($no_of_q_r);

$i=0;
$counter = 0;

$question = array();
$ans = array();
$getQuestion = array();

$ssql = "SELECT * FROM questions where username='$user'"; 
$rresult = mysqli_query($conn,$ssql); 
while ($row = mysqli_fetch_assoc($rresult)){
    $question[$i] = $row['question'];
    $ans[$i]= $row['ans'];
    $i++;
    $counter++;
}

for($x=0;$x<$counter;$x++){
    $ssqq = "SELECT * FROM security where value='$question[$x]'"; 
    $qresult = mysqli_query($conn,$ssqq); 
        while ($row = mysqli_fetch_assoc($qresult)){
            $getQuestion[$x] = $row['question'];
        }
}

$done = 1;
$success = "";

if (isset($_GET['setpassword'])) {

    $formAns = array();

    for($input = 0; $input < $no_of_question ; $input++){
        $formAns[$input] = $_GET["ans".$input];
    }

    if(empty($_GET["newpassword"])) {
        $confirmpassErr="Password Required";
        $done = 0;
    }else if(strlen($_GET["newpassword"]) <= 8){
        $confirmpassErr="Password Must be atleast 8 Character";
        $done = 0;
    }else{
        $confirmpass = $_GET["newpassword"];
    }

    for($match = 0; $match < $no_of_question; $match++){
        if($ans[$match] != $formAns[$match]){
           $success = "Ans Incorrect!";
           $done = 0;
        }
    }
   
    if($done == 1){
        $SQL = $conn->prepare("UPDATE users SET password=? WHERE username=?");
        $SQL->bind_param('ss', $confirmpass, $user);
        $SQL->execute();
        $success = "Password Changed";
    }
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="forgetpassword.css">
</head>
<body>
<form method="GET">
    <input type="hidden" name="ref" value="<?php echo $user ; ?>">
    <fieldset>
        <legend><h3>Password Reset</h3></legend>
        <p><?php echo $success ; ?></p>

    <table>

<?php
for($j = 0; $j<$no_of_question; $j++){
?>

<tr>
    <td><?php echo $getQuestion[$j] ; ?></td>
    <td><input type="text" name="ans<?php echo $j ; ?>" required /><br></td>
</tr>

<?php } ?>

        <tr>
            <td><br><br><br>
                <label>New Password :</label>
                <input type="text" name="newpassword"><br>
                <p><?php echo $confirmpassErr ; ?></p>
            </td>
        </tr>
    </table>

    <input type="submit" name="setpassword" value="Set Password">
    </fieldset> <br>
    
</form>
<label><a href="registration.php">Don't Have a Account ?</a></label> 
<label><a href="index.php">Log In?</a></label> <br><br>
</body>
</html>