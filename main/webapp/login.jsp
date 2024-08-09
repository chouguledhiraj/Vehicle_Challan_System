<html>
<head>
	<title>Login From</title>
	<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
	<script src=
	"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
	<script type="text/javascript"> 
	
	function userLogin() {
		$.ajax({
		        type: 'POST',
		        url:  '/challan/user/login',
		        data: {userLoginId: document.getElementById('userLoginId').value, password: document.getElementById('userLoginPassword').value},
		        cache: false,
		        dataType: "json",
		        crossDomain: false,
		        success: function (data) {
					if(data)
						window.location.href = "http://localhost:8080/challan/dashboard.jsp";
					else
						alert("Invalid login id or password.");
		        },
		        error: function (data) {
		        	alert("System error. Please contact system administrator.");      		     	
		        },
		        complete : function() {
		        //	$("#preloader").hide();
		    	},
		    });
	}
	
	</script>
<style>

		.button {
 			background-color: #db2781; /* Green */
 			border: none;
  			color: white;
  			
 			text-align: center;
 			text-decoration: none;
  			display: inline-block;
  			font-size: 16px;
		}


		.footer {
		text-align: center;
		padding:auto; 
		background-color:none;
		color: red;
		font-size:25px
		

	}
	.bImage {
		background-image: url("https://as1.ftcdn.net/v2/jpg/03/03/57/00/1000_F_303570054_NXBYGgQABt5HPUkRgi9SjQVgMbD7iymv.jpg");
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

	<h1>Login</h1>

	<label> Username:</label>
	<input type="text" id="userLoginId" name="username" />
	<br/>
	<br/>
	
	<label> Password:</label>
	<input type="password" id="userLoginPassword" name="password" />
	<br/>
	<br/>

	
	<button value= "Login" onClick= "userLogin()" style="height:43px;width:75px" class="button">Login</button>
	&nbsp;
	<a href="http://localhost:8080/challan/registration.jsp" target="_blank">New Registration</a>
	<footer>
		<p><b>
			1.Providing wrong information is punishable offence under section 188 IPC.
		</b></p>

		<p><b>
			2.Information is secured and will not be disclosed to anyone.
		</b></p>

	</footer>
