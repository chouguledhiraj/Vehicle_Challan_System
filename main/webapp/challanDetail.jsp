<html>
<head>
	<title>Challan Details</title>



	<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
	<script src=
	"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
	
	<script type="text/javascript" >

	function openWin(){
		myWin = window.open("http://localhost:8080/challan/challanDetail.jsp");
		}


	function closeWin(){
		myWin.close();
		}


		window.onload = function loadVehicleNumber(){
			var url = new URL(window.location.href);
			var vNumber = url.searchParams.get("vNumber");
			document.getElementById('vNumber').value = vNumber;
		}


	function challanDetail() {
		var challan = {
			fineType : document.getElementById('f_type').value,
			fine : document.getElementById('fine').value,
			challanDate : document.getElementById('c_date').value,
			vNumber : document.getElementById('vNumber').value,
			vehicle: {
				vNumber: document.getElementById('vNumber').value
			}
			
		};
		$.ajax({
		        type: 'POST',
		        url:  '/challan/challan/saveChallan',
		        data: JSON.stringify(challan),
		        cache: false,
				contentType: "application/json",
		        crossDomain: false,
		        success: function (data) {
					if(data != null && data.id != "")
						alert("Challan added successfully done")
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

	</script>
	



			
<style>
	.button {
	  background-color: #04AA6D; /* Green */
	  border: none;
	  color: white;
	 
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	}
	  footer {
		text-align: center;
		padding: auto;
		background-color: rgb(166, 17, 72)22, 148;
		color: white;
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

	<h1>Challan Details</h1>
		
		&nbsp;
		&nbsp;
		<label> Fine Type: </label>
		<input id="f_type" type="text" name="fine_type" />
		&nbsp;
		&nbsp;

		<label> Fine: </label>
		<input id="fine" type="number" name="fine" />
		&nbsp;
		&nbsp;
		&nbsp;
		&nbsp;
		<br/>
		<br/>
		<label>Date:</label>
		<input id="c_date" type="date">
		&nbsp;
		<label> Vehicle Number:</label>
		<input id="vNumber" type="text" name="v_number" />

	</br>
	</br>
	
		<button  onClick = "challanDetail()" class = "button" style = "height:42px;width:75px">Save</button>

		<!--<button  onclick = "update()" class = "button" style = "height:42px;width:75px">Update</button>-->

		<a href="http://localhost:8080/challan/dashboard.jsp">
	 	<button  onClick = "closeWin()"  class = "button" style = "height:42px;width:75px">Close</button>
		</a>

		<!--<button onclick="show()" class="button" style="height:42px;width:75px">Show</button>-->

	</br>
	</br>
	<footer>
		<p class="footer">	1>Providing wrong information is punishable offence under section 188 IPC.
						
		</p>
	</br>
	</br>

		<p class="footer"><b>2>Information is secured and will not be disclosed to anyone.</b>

		</p>
	  </footer>



	</div>

</body>

</html>