<html>
<head>
	<title>Search Challan</title>	



	<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
	
	<script src=
	"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
	
	<script type="text/javascript" > 

		function showChallan(){
            $.ajax({
		        type: 'GET',
		        url:  '/challan/challan/getAllChallanByVehicleId',
		        data: {vNumber : document.getElementById('search').value},
		        cache: false,
		        dataType: "json",
		        crossDomain: false,
		        success: function (data) {
					if(data.id != null) {
                        document.getElementById('challan_info').innerHTML = data.fineType + " " + data.fine +" "+data.challanDate;
                        document.getElementById('challan_info').removeAttribute("hidden");
                        //document.getElementById('add_clallan_btn').style.display = '';
                    }
					else
						alert("No challan found.");
		        },
		        error: function (data) {
		        	alert("System error. Please contact system administrator.");      		     	
		        },
		        complete : function() {
		        //	$("#preloader").hide();
		    	},
		    });
        }
		function acceptChallan(){

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
		

	</style>



</head>
<body background="https://images.pexels.com/photos/129731/pexels-photo-129731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
	<br/>

	<div align= "center">


	<input type= "text" id= "search" autocomplete= "off" placeholder= "Enter a Vehicle Number" />
	&nbsp;
	&nbsp;
	
	
	<button class= "button" onClick= "showChallan()" style= "height:43px;width:75px"> Show </button>

	<label id= "challan_info" hidden style= "font-size: medium;"></label>

	<button class= "button" onclick= "acceptChallan" style= "display: none;" >Accept Challan</button>
	


	</div>

</body>

</html>