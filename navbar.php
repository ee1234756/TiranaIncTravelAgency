
     
<?php
  
    if(isset($_SESSION['username'])==false) {
        
?>  
  
  <div class="container">
      
         <nav class="navbar navbar-inverse navbar-fixed-top gabanav">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
              </button>

            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav gabali">
                <li style="font-weight: bold; font-size: 20px;"><a href="index.php">Home</a></li>
                <li style="font-weight: bold; font-size: 20px;"><a href="packagelist.php">Packages</a></li>
                <li style="font-weight: bold; font-size: 20px;"><a href="agentlist.php">Travel Agents</a></li>
                <li style="font-weight: bold; font-size: 20px;"><a href="schedule.php">Schedule</a></li>
                
               
                

              </ul>
              <ul class="nav navbar-nav navbar-right">
                <li style="font-weight: bold; font-size: 20px;"><a href="signup.php"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li style="font-weight: bold; font-size: 20px;"><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
              </ul>
            </div> 

            </div>   
        </nav>
       
  </div>
   
       
    <?php } else { ?> 
    <div class="container">
       <nav class="navbar navbar-inverse navbar-fixed-top gabanav">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
              </button>

            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav gabali">
                   <li style="font-weight: bold; font-size: 20px;"><a href="index.php">Home</a></li>
                <li style="font-weight: bold; font-size: 20px;"><a href="packagelist.php">Packages</a></li>
                <li style="font-weight: bold; font-size: 20px;"><a href="agentlist.php">Travel Agents</a></li>
                <li style="font-weight: bold; font-size: 20px;"><a href="schedule.php">Schedule</a></li>
                <li style="font-weight: bold; font-size: 20px;"><a href="mybill.php?id=<?php echo $_SESSION['username']; ?>">My Account</a></li>
                <li style="font-weight: bold; font-size: 20px;"><a href="booking.php">BOOK NOW</a></li>
               
                
                
             

              </ul>
              <ul class="nav navbar-nav navbar-right">
                <li style="font-weight: bold; font-size: 20px;"><a href="logout.php"><span class="glyphicon glyphicon-user"></span> Log Out</a></li>
                <li style="font-weight: bold; font-size: 20px;"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Welcome <?php echo $_SESSION['username']; ?></a></li>
              </ul>
            </div> 

        </div> 
      
    </nav> 
    </div>
    
    
    <?php } ?> 
