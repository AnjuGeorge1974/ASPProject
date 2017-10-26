<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500" />
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/form-elements.css" />
        <link rel="stylesheet" href="assets/css/style.css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png" />
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png" />
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png" />


         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
     <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong> Login Form</strong></h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login to your site</h3>
                            		<p>Enter your emailId and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
                                <form id="LoginForm" runat="server" method="get" action="#" class="login-form">
                                    <div class="form-group">
                                        <asp:TextBox runat="server" ID="myEmailId" Text="EmailId" CssClass="form-username form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="myEmailId_Req" ControlToValidate="myEmailId" runat="server" Display="Dynamic" ErrorMessage="Please enter EmailId" />
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="myPassword" runat="server" TextMode="Password" CssClass="form-password form-control"></asp:TextBox>

                                        <asp:RequiredFieldValidator ID="myPassword_Req" ControlToValidate="myPassword" runat="server" Display="Dynamic" ErrorMessage="Please enter password" />
                                    </div>
                                    <div>
                                        <asp:Label Font-Bold="false" ForeColor="Red" ID="ErrorMessage" CssClass="ErrorSettings" runat="server"></asp:Label>
                                    </div>
                                    <div>
                                    </div>
                                    <div>
                                        <asp:Button type="submit" runat="server" Text="Login" ID="Button1" CssClass="mybtn" OnClick="Lsubmit_Click"></asp:Button>
                                    </div>
                                </form>

		                    </div>
                        </div>
                    </div>
                   </div>
            </div>
          </div>  
        
        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>