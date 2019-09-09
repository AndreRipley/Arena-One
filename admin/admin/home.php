<?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.php');
	exit();
}
?>

<html>

<head>
  <meta charset="utf-8">
		<title>OneArena Administrator Portal v0.1A (very A)</title>
		<link href="style_home.css" rel="stylesheet" type="text/css">
<style type="text/css">
body,td,th {
	color: #FFFFFF;
}
body {
	background-color: #004867;
}
.fonta {
	font-family: Roboto;
}
a:link {
	color: #CCCCCC;
}
a:visited {
	color: #CCCCCC;
}
a:hover {
	color: #FFFFFF;
}
a:active {
	color: #CCCCCC;
}
</style>
</head>

<body>
<nav class="navtop">
			<div>
				<h1>OneArena Administrator Portal v0.1A</h1>
				<a href="profile.php"><i class="fas fa-user-circle"></i>Profile</a>
				<a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
			</div>
		</nav>
		<div class="content">
			<h2>Welcome back, <?=$_SESSION['name']?>!</h2>
		</div>

   <center>
       <br><br>
<table width="90%" border="1" cellspacing="3" cellpadding="8">
    <tbody>
        <tr>
            <td colspan="3"><center><b>USER Manager</b></center></td>

        </tr>
        <tr>
            <td width="33%"><center><b><a href="users.php">User Editor</a></b></center></td>
            <td width="33%"><center><b>&nbsp;</b></center></td>
            <td width="33%"><center><b>&nbsp;</b></center></td>
        </tr>
    </tbody>
</table>


<br>
<table width="90%" border="1" cellspacing="3" cellpadding="8">
    <tbody>
        <tr>
            <td colspan="3"><center><b>ARCADE Manager</b></center></td>
        </tr>
        <tr>
            <td width="33%"><center><b><a href="arcades.php">Arcade Listings</b></center></a></td>
            <td width="33%"><center><b><a href="categories.php">Arcade Categories</b></center></a></td>
            <td width="33%"><center><b><a href="services.php">Arcade Services</b></center></a></td>
        </tr>
        <tr>
            <td width="33%"><center><b><a href="users.php">Add/Edit Services</b></center></a></td>
            <td width="33%"><center><b><a href="users.php">Add/Edit Equipment</b></center></a></td>
            <td width="33%"><center><b><a href="users.php">Add/Edit Games</b></center></a></td>
        </tr>
        <tr>
            <td width="33%"><center><b><a href="users.php">Add/Edit Tournaments</b></center></a></td>
            <td width="33%"><center><b><a href="users.php">&nbsp;</b></center></a></td>
            <td width="33%"><center><b><a href="users.php">&nbsp;</b></center></a></td>
        </tr>
    </tbody>
</table>


	<br>

	<table width="90%" border="1" cellspacing="3" cellpadding="8">
    <tbody>
        <tr>
            <td colspan="3"><center><b>EQUIPMENT Manager</b></center></td>
        </tr>
        <tr>
            <td width="33%"><center><b><a href="users.php">Equipment Manufacturers</b></center></a></td>
            <td width="33%"><center><b><a href="users.php">Equipment Lists</b></center></a></td>
            <td width="33%"><center><b><a href="users.php">&nbsp;</b></center></a></td>
        </tr>
    </tbody>
</table>


<br>

	<table width="90%" border="1" cellspacing="3" cellpadding="8">
    <tbody>
        <tr>
            <td colspan="3"><center><b>GAME Manager</b></center></td>
        </tr>
        <tr>
            <td width="33%"><center><b><a href="users.php">Game Developers</b></center></a></td>
            <td width="33%"><center><b><a href="users.php">Games Editor</b></center></a></td>
            <td width="33%"><center><b><a href="users.php">&nbsp;</b></center></a></td>
        </tr>
    </tbody>
</table>


<br>

	<table width="90%" border="1" cellspacing="3" cellpadding="8">
    <tbody>
        <tr>
           <td colspan="3"><center><b>TOURNAMENT Manager</b></center></td>
        </tr>
        <tr>
            <td width="33%"><center><b><a href="users.php">Tournaments Editor</b></center></td>
            <td width="33%"><center><b>Add/Edit User to Tournament</b></center></td>
            <td width="33%"><center><b>&nbsp;</b></center></td>
        </tr>
    </tbody>
</table>


<br>

	<table width="90%" border="1" cellspacing="3" cellpadding="8">
    <tbody>
        <tr>
            <td colspan="3"><center><b>REVIEWS Manager</b></center></td>
        </tr>
        <tr>
            <td width="33%"><center><b><a href="users.php">Arcade Reviews Editor</b></center></a></td>
            <td width="33%"><center><b>&nbsp;</b></center></td>
            <td width="33%"><center><b>&nbsp;</b></center></td>
        </tr>
    </tbody>
</table>


<br>
<table width="90%" border="1" cellspacing="3" cellpadding="8">
    <tbody>
        <tr>
            <td colspan="3"><center><b>SYSTEM Manager</b></center></td>
        </tr>
        <tr>
            <td width="33%"><center><b><a href="users.php">Master Country List</b></center></a></td>
            <td width="33%"><center><b><a href="users.php">Master Currency List</b></center></a></td>
            <td width="33%"><center><b><a href="users.php">Master Region List</b></center></a></td>
        </tr>
        <tr>
            <td width="33%"><center><b><a href="users.php">Login Tracking</b></center></a></td>
            <td width="33%"><center><b><a href="users.php">Logins Successes/Fails</b></center></td>
            <td width="33%"><center><b><a href="changelog.php">DB Change Tracking</b></center></td>
        </tr>
    </tbody>
</table>
<br>
      <p>&nbsp;</p>
<p>&nbsp;</p>
    <hr width="96%">
    <p>Copyright 2019 Virtualities and VALVR. | All Rights Reserved. </p>

</center>
</body>
</html>