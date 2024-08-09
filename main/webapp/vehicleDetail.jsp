<html >
<head>
	
	<title>VehicleRegistration</title>

	<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
	<script src=
	"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
	<script type="text/javascript" >
	/*var flag=0;

	function txtValid(){
		var firstName=document.getElementById("fname").value
		var lastName=document.getElementById("lname").value
		var phoneNumber=document.getElementById("phone_no").value
		var vNumber=document.getElementById("vehicle_no").value
		 if(firstName==''){
			alert("Enter first name");
		 }
		 if(lastName==''){
			alert("Enter last name");
		 }
		 if(phoneNumber==''){
			alert("Enter phone number");
		 }
		 if(vNumber==''){
			alert("Enter vehicle Number");
		 }
		 else{
		 	return flag++;
		 }
	}*/
	function vehicleRegistration() {
		var vehicle = {
			oFName : document.getElementById('fname').value,
			oLName : document.getElementById('lname').value,
			oPNumber : document.getElementById('phone_no').value,
			vNumber : document.getElementById('vehicle_no').value
			
		};
		//if (flag==1){
		$.ajax({
		        type: 'POST',
		        url:  '/challan/vehicle/saveVehicle',
		        data: JSON.stringify(vehicle),
		        cache: false,
				contentType: "application/json",
		        crossDomain: false,
		        success: function (data) {
					if(data != null && data.id != "")
						alert("Vehicle registration successfully done")
					else
						alert("Invalid Username or Password");
		        },
		        error: function (data) {
		        	alert("System error. Please contact system administrator.");      		     	
		        },
		        complete : function() {
		        //	$("#preloader").hide();
		    	},
		    });
		}
		
	//}
	function clearfield(){
		document.getElementById("fname").value="";
		document.getElementById("lname").value="";
		document.getElementById("phone_no").value="";
		document.getElementById("vehicle_no").value="";
	}
	


</script>
<style>
	.button {
 			background-color: #db2781; /* Green */
 			border: none;
  			color: white;
  			padding: 15px 32px;
 			text-align: center;
 			text-decoration: none;
  			display: inline-block;
  			font-size: 16px;
		}

	.bImage {
		background-image: url("https://images.pexels.com/photos/129731/pexels-photo-129731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
		height: 100%;
		background-repeat: no-repeat;
		background-position: center;
		background-size: cover;
		}


</style>

</head>
<body class="bImage">
	<br/>
	<div align="center">
	<h1>Vehicle Registration</h1>

	<label>Owner First Name: </label>
	<input type="text" id="fname" required/>

	&nbsp

	<label>Owner Last Name:</label>
	<input type="text" id="lname" required />
	</br>
	</br>

	<label>Owner Phone Number: </label>
	<input type="number" id="phone_no" required/>

	<label>Vehicle Number: </label>
	<input type="text" id="vehicle_no" required/>
	</br>
	</br>

	<!--<label></label>
	<button class="button" onclick="clear()" {font-size:80px}/>clear</button>
	&nbsp
	&nbsp-->
	<button type="button" onClick="vehicleRegistration();  txtValid(); clearfield();" class="button"/>Save</button>
	&nbsp
	&nbsp
	<!--
	<button class="button" onClick="update()"/>update</button>	
	&nbsp
	&nbsp-->
	</div>
</body>
</html>