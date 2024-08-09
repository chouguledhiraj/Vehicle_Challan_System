<html>
    <head>
        <title>Search Vehicle</title>

        <meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
        <script src=
        "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
        </script>
        <script type="text/javascript" >
            function showVehicle(){
                $.ajax({
		        type: 'GET',
		        url:  '/challan/vehicle/searchVehicleByNumber',
		        data: {vNumber : document.getElementById('search').value},
		        cache: false,
		        dataType: "json",
		        crossDomain: false,
		        success: function (data) {
					if(data.id != null) {
                        document.getElementById('owner_name').innerHTML = data.oFName + " " + data.oLName;
                       // document.getElementById('owner_name').removeAttribute("hidden");
                        document.getElementById('add_challan_btn').style.display = '';
                        var table = document.getElementById('challan_table');
                        for(var i=0; i< data.challanList.length; i++) {
                            $(table).find('tbody').append("<tr><td>" + data.oFName + "</td><td>" + data.oLName + "</td><td>" + data.oPNumber + "</td><td>" + data.vNumber + "</td><td>" + data.challanList[i].fineType + "</td><td>" + data.challanList[i].fine + "</td><td>" + data.challanList[i].challanDate + "</td><td><button onclick=" + "acceptChallan("+data.challanList[i].id+")" + ">Accept Challan</button></td></tr>");
                        }
                        
                    }
					else
						alert("No vehicle found for given number.");
		        },
		        error: function (data) {
		        	alert("System error. Please contact system administrator.");      		     	
		        },
		        complete : function() {
		        //	$("#preloader").hide();
		    	},
		    });
        }

        function addChallan() {
            window.location.href = "http://localhost:8080/challan/challanDetail.jsp" + "?vNumber=" + document.getElementById('search').value;
        }

        function acceptChallan(challanId){
                $.ajax({
		        type: 'DELETE',
		        url:  '/challan/challan/deleteChallan',
		        data: {challanId : challanId},
		        cache: false,
		        dataType: "json",
		        crossDomain: false,
		        success: function (data) {
					if(data) {
                        document.getElementById('generate_pdf_btn').style.display = '';
                        alert("Chalan paid successfully.");
                       // window.location.href = "http://localhost:8080/challan/dashboard.jsp";
                    }
					else
						alert("Error in paying challan No vehicle found for given number.");

		        },
		        error: function (data) {
		        	alert("System error. Please contact system administrator.");      		     	
		        },
		        complete : function() {
		        //	$("#preloader").hide();
		    	},
		    });
        }


    function generatepdf(){  
        
            $.ajax({
                type: 'GET',
                url: '/challan/challan/generatePdf',
                data:{challanId : document.getElementById("search").value},
                crossDomain: false,
                success:function(data){
                    if(data){
                       // window.open("C:/PdfGenrater");
                        alert("PDf generated");
                    }
                    else{
                        alert("Challan not paid ");
                    }
                },
                error:function(data){
                    alert("System error.Please contact system administrator");
                },
                complete: function(){

                }
            })
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

        <div align="center">
            <h2>Search and Accept Challan</h2>

            <input type="text" id="search" autocomplete="off" placeholder="Enter a vehicle number" style="text-align: center; align-items: center;">
            &nbsp;
            &nbsp;

            <button class="button" onclick="showVehicle()">Show</button>
            </br>
            </br>

            <label id="owner_name" hidden style ="font-size: medium;">Owner Name:</label>
            &nbsp;
            &nbsp;

            <label id="vehicle_number" hidden>Vehicle Number:</label>
            &nbsp;
            &nbsp;

           
            </br>


        <table border="1" id="challan_table">
            <tr>
                <th>Owner First Name</th>
                <th>Owner Last Name</th>
                <th>Phone Number</th>
                <th>Vehicle Number</th>
                <th>Fine type</th>
                <th>Fine</th>
                <th>Challan Date</th>
                <th></th>
            </tr>
            <tr hidden id="hidden_row">
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><button id="accept_btn" >Accept Challan</button></td>

            </tr>
            
        </table>
    </br>
    </br>

        <button id="add_challan_btn" class="button" onclick="addChallan()" style="display: none;">Add Challan</button>

        &nbsp;
        &nbsp;
         <button id="generate_pdf_btn" onclick="generatepdf()" style="display: none;" class="button">Generate PDF</button>


        </div>
    </body>





</html>