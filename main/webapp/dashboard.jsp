<!DOCTYPE html>
<head>
    <title>Challan Dashboard</title>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
    .hs{
    background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(221,247,152,1) 35%, rgba(0,212,255,1) 100%);
}
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


</style>
</head>
<body class="hs">
    <div align="center">
        
            
            <div class="jumbotron text-center">
                <h1>Challan Dashboard</h1>
                <p>Only officer can perform the add, update, register operations</p> 
            </div>
            <div class="container">
                <div class="row">


                  <div class="col-sm-4">
                    <a href=http://localhost:8080/challan/vehicleDetail.jsp  ><button class="button">Register Vehicle</button> </a>  
                  </div>

                  <div class="col-sm-4">
                    <a href=http://localhost:8080/challan/searchVehicle.jsp  ><button class="button">Challan Detail</button> </a>
                  </div>

                  <!--<div class="col-sm-4">
                    <a href=http://localhost:8080/challan/vehicleDetail.jsp ><button class="button" >Challan Detail</button> </a>
                  </div>-->

                  <div class="col-sm-4">
                    <a href=http://localhost:8080/challan/login.jsp ><button class="button" >Log Out</button> </a>
                  </div>
                </div>
              </div>



        </div>
    <div>



    

</body>
</html>