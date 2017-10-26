<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterMe.aspx.cs" Inherits="RegisterMe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Bootstrap Login Form Template</title>

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
        	
            <div class="inner-bg">fs
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong> Registration Form</strong></h1> 
                            
                        </div>
                    </div>
                            <div class="form-bottom">
		                              
                                           
                      <div class="row">

  </div>
                                <form id ="RegistrationForm" runat="server"  method="get" action ="#">
                                     
                                    <div>
                                         <asp:Label Font-Bold="false" ForeColor="Green" ID="SuccessMessage" CssClass="ErrorSettings" runat="server"></asp:Label>
                                    </div>
                                	<div class="form-group">
                                        <div class = "row">
                                            <div class="col-md-2">
                                                <asp:Label runat="server">First Name</asp:Label>
                                                </div>
                                            <div class="col-md-4">
			                    		        <asp:TextBox runat="server" ID="FirstNameTxt" CssClass="form-username form-control MyWidth"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="FirstNameTxtReq" ControlToValidate="FirstNameTxt" runat="server" Display="Dynamic" ErrorMessage="Please enter FirstName" />
                                             </div>
                                            <div class="col-md-2">
                                                <asp:Label runat="server">Middle Name</asp:Label>
                                            </div>
                                            <div class="col-md-4">
			                    		        <asp:TextBox runat="server" ID="MiddleNameTxt" CssClass="form-username form-control"></asp:TextBox>
			                                </div>
                                        </div>
                                        <div class="row">
                                            &nbsp;
                                        </div>
                                        <div class ="row">
                                            <div class="col-md-2">
                                                <asp:Label runat="server">Last Name</asp:Label>
                                            </div>
                                            <div class="col-md-4">
			                    		        <asp:TextBox runat="server" ID="LastNameTxt" CssClass="form-username form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="LastNameTxtReq" ControlToValidate="LastNameTxt" runat="server" Display="Dynamic" ErrorMessage="Please enter LastName" />
                                            </div>
                                            <div class="col-md-2">
                                                <asp:Label runat="server">EmailId</asp:Label>
                                            </div>
                                            <div class="col-md-4">
			                    		        <asp:TextBox runat="server" ID="EmailIdTxt" CssClass="form-username form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="EmailIdTxtReq" ControlToValidate="EmailIdTxt" runat="server" Display="Dynamic" ErrorMessage="Please enter EmailId" />
			                                </div>
                                            
                                        </div>
                                        <div class="row">
                                            &nbsp;
                                        </div>
                                        <div class ="row">
			                                <div class="col-md-2">
                                                <asp:Label runat="server">Phone</asp:Label>
                                            </div>
                                            <div class="col-md-4">
			                    		        <asp:TextBox runat="server" ID="PhoneTxt" CssClass="form-username form-control Mywidth"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PhoneTxtReq" ControlToValidate="PhoneTxt" runat="server" Display="Dynamic" ErrorMessage="Please enter Phone" />
                                            </div>
                                            <div class="col-md-2">
                                                <asp:Label runat="server">Password</asp:Label>
                                            </div>
                                            <div class="col-md-4">
			                    		        <asp:TextBox runat="server" ID="PasswordTxt" CssClass="form-username form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="PasswordTxtReq" ControlToValidate="PasswordTxt" runat="server" Display="Dynamic" ErrorMessage="Please enter password" />
			                                </div>
                                        </div>
                                        <div class="row">
                                            &nbsp;
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <asp:Label runat="server">Role</asp:Label>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:DropDownList runat="server" ID="Rolecmb" CssClass="form-username form-control">
                                                     <asp:ListItem Text="AllRounder" Value="AllRounder"></asp:ListItem>  
                                                     <asp:ListItem Text="Bowler" Value="Bowler"></asp:ListItem>
                                                      <asp:ListItem Text="Batsman" Value="Batsman"></asp:ListItem>
                                                      <asp:ListItem Text="Wicket Keeper" Value="Wicket Keeper"></asp:ListItem>
                                                </asp:DropDownList>
			                                </div>
                                            <div class="col-md-2">
                                                <asp:Label runat="server">Team</asp:Label>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:DropDownList runat="server" ID="Teamcmb" CssClass="form-username form-control">
                                                      <asp:ListItem Text="Royal Challengers" Value="Royal Challengers"></asp:ListItem>
                                                      <asp:ListItem Text="Kings Eleven" Value="Kings Eleven"></asp:ListItem>
                                                      <asp:ListItem Text="Punjab Tigers" Value="Punjab Tigers"></asp:ListItem>
                                                      <asp:ListItem Text="Pune Warriors" Value="Pune Warriors"></asp:ListItem>
                                                      <asp:ListItem Text="Kolkata Knightriders" Value="Kolkata Knightriders"></asp:ListItem>
                                                </asp:DropDownList>
			                                </div>
                                            </div> 
                                            <div class="row">
                                                &nbsp;
                                            </div>
                                            <div class="row">
			                                    <div class="col-md-2">
                                                    <asp:Label runat="server">Address</asp:Label>
                                                </div>
                                                <div class="col-md-10">
			                    		            <asp:TextBox runat="server" ID="AddressTxt" CssClass="form-username form-control"></asp:TextBox>
                                                </div>
                                             </div>
                                            </div>
                                       

                                       <div class="row">
                                           &nbsp;
                                        </div>
                                       <div class ="row">
			                               <div class="col-md-6">
			                                    <asp:button type="submit" runat="server" Text= "Register" ID="Loginsubmit" CssClass="mybtn" OnClick="Loginsubmit_Click"></asp:button>
                                           </div>
                                           
                                        </div>
			                          
                                    </form>

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