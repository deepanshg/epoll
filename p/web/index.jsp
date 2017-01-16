<!DOCTYPE html>
<html lang="en">

<head>






        <!-- CSS -->        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="form-2/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="form-2/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="form-2/assets/css/form-elements.css">
        <link rel="stylesheet" href="form-2/assets/css/style.css">
		<link rel="stylesheet" href="css/animate.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="form-2/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="form-2/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="form-2/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="form-2/assets/ico/apple-touch-icon-57-precomposed.png">

		<style>
		.zoomIn {
    -webkit-animation-delay: 2.5s; /* Chrome, Safari, Opera */
    animation-delay: 2.5s;
}
</style>




    <title>E-Poll</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/agency.css" rel="stylesheet">
<link href="exter.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
			<style>
			</style>
</head>







<body id="page-top" class="index" style="background: url(img/header-bg.jpg) 50% 0 no-repeat fixed;">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
                <a class="navbar-brand page-scroll" href="#page-top" ;><img src="images/bg12.png"></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
					<li>
                        <a class="page-scroll" href="#login">Login</a>
                    </li>

                    <li>
                        <a class="page-scroll" href="#services">Services</a>
                    </li>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>

        <div class="container-fluid" style="background: url(img/header-bg.jpg) 50% 0 no-repeat fixed;">
		<div class="container">
		<div>
            <div class="intro-text" style="background: url(img/header-bg.jpg) 50% 0 no-repeat fixed; padding-bottom: 95px;">

                <div class="intro-text intro-lead-in" style="margin-top:-60px">E-Poll lets you engage your <br>audience or class in real time</div>

                <a href="#login" class="page-scroll btn btn-xl" >Create Your First Poll</a>
            </div>
			</div>

        </div>
		</div>
    </header>

	<!-- Top content -->
	<section id="login" style="background-color: #255073; opacity: 1.0;">
        <div class="top-content" >

            <div class="inner-bg">
                <div class="container">
		 <div style="border:1px white;height:400px;width: 400px;margin-left: 300px;margin-top: 100px;float:left;background-color: #eaedef;" >
             <div style="border:1px white;height:250px;width: 300px;margin-left: 20px;margin-top: 15px;float:left;background-color: #eaedef;" >
                  <form action="log.jsp" method="POST">
                      <ol>
            <li class="nostyle">
               
                <h1><b>Login</b></h1>
            </li>
            <li class="nostyle">
                <b> Email</b>
            </li>
            <li class="nostyle">
                <input type="text" name="email" id="e1" style="height: 30px;width: 250px ">
            </li>
            
            <br>
            <li class="nostyle"><b>Password</b></li>
            <li class="nostyle">
                <input type="password" name="psd" id="e2" style="height: 30px;width: 250px">
               
                <div style="border:1px;background-color: red; " id="v9"  ></div>
               
            <li class="nostyle">    
                <input type="submit" value="login" name="sub" style="margin-top: 30px;margin-left: 50px;height: 35px;width: 80px"/>
            </li>   
                 </form>
                <br>
          
                 </ol>
             </div>
        </div>		
					
					
					
					

                </div>
            </div>
			<div id="ff">
                            <p><h1 style="color:white;"><center><a href="./register.jsp">Don't have an account yet?</a><br><br> Contact your Newspaper Vendor today!</h3></p></center>
        </div>
		</div>
	</section>


    <!-- Services Section -->
    <section id="services" style="background-color: white; opacity: 1.0;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Services</h2>
                    <div><h3 class="section-subheading text-muted">What E-poll Provide You?</h3></div>
                </div>

            </div>
            <div class="row text-center">
                <div class="col-md-6">
                    <span class="fa-stack fa-4x">
                        <div><img src="img/services/1.png" height="60px" width="60px"></div></span>
                    <h3 class="service-heading">Poll Creation</h3>
                    </div>
                <div class="col-md-6">
                    <span class="fa-stack fa-4x">
                        <div><img src="img/services/2.png" height="60px" width="60px"></div></span>
                    </span>
                    <h3 class="service-heading">Sharing</h3>
                    </div>
                

            </div><br><br>
			<div class="row text-center">
                <div class="col-md-6">
                    <span class="fa-stack fa-4x">
                        <div><img src="img/services/signal.png" height="60px" width="60px"></div></span>
                    <h3 class="service-heading">Management</h3>
                    </div>
                <div class="col-md-6">
                    <span class="fa-stack fa-4x">
                        <div><img src="img/services/5.png" height="60px" width="60px"></div></span>
                    </span>
                    <h3 class="service-heading">Results</h3>
                    </div>
               

            </div><br><br>


        </div>
    </section>

    <!-- Portfolio Grid Section -->
	
	
    <section id="portfolio" class="bg-light-gray">
    <div class='wide'>
    <div class="container guide center bigpad2">
    <h2 class='bigh2 grey'>How to Publish a Poll in 3 Steps</h2>
	<br>
	<br>
	<br>

        <div class="col-md-4">
         <div class='title-3'>
            <i class='fa fa-edit'></i>
        
            <h3>1. Add Questions</h3>
         </div>
            <p>Type your question and then add answers. From this point you can simply hit create poll and you're ready to go. The rest of the steps are optional. No account or signup required.</p>
        </div><div class="col-md-4">
         <div class='title-3'>
            <i class='fa fa-send' ></i>
            <h3>2. Set Options</h3>
         </div>
            <p>On the Themes tab select one of our default themes or create your own. On the settings tab set options like allowing multiple answers, allowing voters to enter their own answers and much more</p>
        </div><div class="col-md-4">
         <div class='title-3'>
            <i class='fa fa-pie-chart'></i>
            <h3>3. Share & Report</h3>
         </div>
            <p>Click Share and copy your poll Vote url to share with voters. You can also hit Embed to place the poll directly on your website or blog.</p>
        </div>
        
    </div>
</div>
    </section>

	<style>
footer .glyphicon {
	margin-top:20px;
    font-size: 20px;
    margin-bottom: 20px;
    color: #FED136;
}
</style>


<footer class="container-fluid" style="background-color: #3f3d3d">
<a href="#page-top" title="To Top" class="page-scroll">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>

<div class="row">
	<div class="col-sm-6">
  <p style="color:white; font-family: Lato; font-style: normal; font-size:14px; text-align:left;"><b>E-Poll</b>,Deepansh Goyal,Thapar University,Patiala - 147004</p>
  <p style="color:white; font-family: Lato; font-style: normal; font-size:14px; text-align:left;">&copy 2016 Deepansh Goyal. All rights reserved.</p>
  </div>
  
  </div>




</footer>




    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/agency.js"></script>
	<script src="js/animate-plus.js"></script>
	<script src="js/animate-plus.min.js"></script>
	<script src="assets/js/jquery.backstretch.min.js"></script>
    <script src="assets/js/scripts.js"></script>
	<script> </script>

</body>

</html>
