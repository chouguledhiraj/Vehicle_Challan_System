<html>
<head>
	<title>Registration Form</title>
	
	<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
	<script src=
	"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
	<script type="text/javascript"> 
	var flag=0;
	
	function txtValid(){
			
			var firstName = document.getElementById("ownerFirstName").value;
			var lastName = document.getElementById("ownerLastName").value;
			var phoneNumber = document.getElementById("ownerPhoneNumber").value;
			var username = document.getElementById("userLoginId").value;
			var password = document.getElementById("userLoginPassword").value;

			if (firstName ==""){
				alert("pls enter first name");
			
			}
			if(lastName ==""){
				alert("plese enter a last name");

			}
			if(phoneNumber ==""){
				alert("pls enter a phone number");
			}
			if(username ==""){
				alert("pls enter a user name");
			}
			if(password == ""){
				alert("pls enter a password");
			}
			else //(firstName != "" && lastName != "" && phoneNumber != "" && username != "" && password != "")
			{
				//alert("Registration successfully back to login ");
				return flag++;
				
			}
		}

	function openWin(){
		myWin = window.open("http://localhost:8080/challan/registration.jsp");
	}

	
	
	function userRegistration() {
			
		var user = {
			ownerFirstName : document.getElementById('ownerFirstName').value,
			ownerLastName : document.getElementById('ownerLastName').value,
			ownerPhoneNumber : document.getElementById('ownerPhoneNumber').value,
			userLoginId : document.getElementById('userLoginId').value,
			userLoginPassword : document.getElementById('userLoginPassword').value

		};
		if (flag==1)
		$.ajax({
		        type: 'POST',
		        url:  '/challan/user/registerUser',
		        data: JSON.stringify(user),
		        cache: false,
				contentType: "application/json",
		        crossDomain: false,
		        success: function (data) {
					if(data != null && data.id != "" /* && data.ownerFirstName !="" && data.ownerLastName !== "" && data.ownerPhoneNumber !="" && data.userLoginId !="" && data.userLoginPassword !="" */ )
						alert("User registration successfully done");
						
					else
						alert("Fill the empty field");
		        },
		        error: function (data) {
		        	alert("System error. Please contact system administrator.");      		     	
		        },
		        complete : function() {
		        //	$("#preloader").hide();
		    	},
		    });
		}
	
			
		

		function clearField(){
			document.getElementById("ownerFirstName").value="";
			document.getElementById("ownerLastName").value="";
			document.getElementById("ownerPhoneNumber").value="";
			document.getElementById("userLoginId").value="";
			document.getElementById("userLoginPassword").value="";

		}

	</script>
<style>
	.button {
  		background-color: rgb(184, 15, 77)22, 148;
  		border: none;
  		color: rgb(174, 47, 47);
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
	
	<h1>Registration </h1>
	
		<label> First Name: </label>
		<input type="text"  id="ownerFirstName" autocomplete="off" required/>

		<br/>
		<br/>
	
		<label>Last Name:<label/>
		<input type="text"  id="ownerLastName" autocomplete="off" required/>
	
		<br/>
		<br/>
		<label>Phone Number:<label/>
		<input type="number"  id="ownerPhoneNumber" required/>
		</br>
		</br>

		<label>Username:<label/>
		<input type="text"  id="userLoginId" required />
	
		<br/>
		<br/>

		<label>Password:<label/>
		<input type="password"  id="userLoginPassword" required />
		
		<br/>
		<br/>
		

	
	<button id="submit" onClick= "txtValid(); userRegistration(); clearField(); " class="button" style="height:43px;width:75px">Submit</button>
	&nbsp;
	&nbsp;
	
	<a href="http://localhost:8080/challan/login.jsp"><button  class="button" style="height:43px;width:75px">Close</button></a>
	
</body>
</html>
