<?php 

 ?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>Ion.RangeSlider - test</title>
<link rel="stylesheet" href="css/normalize.css" />
<link rel="stylesheet" href="css/ion.rangeSlider.css" />
<link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
</head>
<body>

<form id="form1" >
Enter name: <input type="text">
<div style="position: relative; padding: 200px;">


</div>
<input type="submit">
</form>
<!-- Page contents -->
 <form id="form2" method="POST">
First name:<br>
<input type="text" name="firstname" value="Mickey">
<br>
<input type="text" id="range_1" name="john"value="john"/>
Last name:<br>
<input type="text" name="lastname" value="Mouse">
<br><br>
<input type="submit" value="Submit">
</form> 




<!-- All JS -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/ion.rangeSlider.js"></script>

	<script>
$(document).ready(function(){

		$("#range_1").ionRangeSlider({
min: 0,
max: 5000,
from: 1000,
to: 4000,
type: 'double',
step: 1,
prefix: "$",
prettify: true,
grid: true
});

		});

function myFunction()
{
	alert('hello');
	a = $("#range_1").data("ionRangeSlider").old_from;
	alert(a);
	a = $("#range_1").data("ionRangeSlider").old_to;
	alert(a);
}
$('#form2').on('submit',function (e) {
//    e.preventDefault();
alert($('#form2').serialize());
    $.ajax({
        url: 'a.php',
        cache: false,
        type: 'POST',
        data : $('#form2').serialize(),
        success: function(json) {
        alert('all done');
    }
    });
});
</script>




</body>
</html>
