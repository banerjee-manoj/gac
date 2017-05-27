<!DOCTYPE html>
<html lang="en">
<head>

  <title>Geetanjali Associates</title>
  <link rel="icon" href="resources/img/logo.jpg" type="image/gif" sizes="16x16">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  
  
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   -->
  
  <script src="resources/js/angular/jquery.min.js"></script> 
  <script src="resources/js/angular/angular.js"></script> 
  <script src="resources/js/angular/uirouter.js"></script>
  <script src="resources/js/angular/ui-bootstrap-tpl.js"></script> 
  <script src="resources/bootstrap/dist/js/bootstrap.min.js"></script>
  
 
 <link href="resources/bootstrap/dist/css/bootstrap_updated.css" rel="stylesheet"  type="text/css"  />
 <link href="resources/css/custom.css" rel="stylesheet" type="text/css"  />
  <!-- <link href="resources/bootstrap/dist/css/bootstrap.css" rel="stylesheet"  type="text/css"  /> 
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" /> -->
  
   
  
  <script type="text/javascript" src = "resources/js/app.js"></script>
  <script type="text/javascript" src = "resources/js/controller/user_controller.js"></script>
  <script type="text/javascript" src = "resources/js/controller/homeController.js"></script>
  <script type="text/javascript" src = "resources/js/controller/addDocumentController.js"></script>
  <script type="text/javascript" src = "resources/js/directives/gacDirectives.js"></script>
  <script type="text/javascript" src = "resources/js/services/user_service.js"></script>
  
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
    min-height: 80px;
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body ng-app="gacApp" ng-controller="homeController">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <img style="height: 94px;width: 115px" src="resources/img/logo.jpg" class="navbar-brand"/>
       <div class="caption_container" style="font-family: cursive;">Geetanjali Associates</div>	
      
    <!-- <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Projects</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div> -->
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
   
    <!-- Side Navigation Menus -->
     <div class="col-sm-2 sidenav collapse navbar-collapse" id="myNavbar" style="background-color: rgba(28, 5, 58, 0.93);">
           
           <!-- <ul><li>
              <a>Upload Document</a></li>
              <li><a>Search Document</a></li>
      </ul> -->
      
      
   <div>
     <uib-accordion close-others="oneAtATime=true">
       <div uib-accordion-group  is-open="false" >
       <!-- class="panel-default" -->
         <uib-accordion-heading>
            Document Management <i class=" glyphicon" ng-class="{'glyphicon-chevron-down': status.isCustomHeaderOpen, 'glyphicon-chevron-right': !status.isCustomHeaderOpen}"></i>
         </uib-accordion-heading>
        <div>
         <ul class="">
        <li><a ui-sref="addDocument" style="font-size: 13px">Add New Document</a></li>
        <li><a ui-sref="searchDocument" style="font-size: 13px">Search Document</a></li>
        <li><a ui-sref="editDocument" style="font-size: 13px">Edit Document</a></li>
    </ul>
        </div>
         
         </div>
  </uib-accordion>
</div>    
      
      
      
      
    </div> 
    
    <div class="col-sm-8 text-left"> 
    <br>
     <div ui-view>
    <br>
    </div>
    </div>
    <!--
    Right Navigational Menus
     <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div> -->
  </div>
</div>

<!--
Footer
 <footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer> -->

</body>
</html>
