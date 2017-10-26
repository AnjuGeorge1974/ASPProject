<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

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
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong> Search Form</strong></h1>
                        </div>
                    </div>
                  
                    <form id ="SelectionForm" runat="server"  method="get" action ="#">
                                     <div class="row">
                                         <div class="col-md-3">&nbsp;</div>
                                             <div class="col-md-6">
			                                    <asp:button type="submit" runat="server" Text= "Register New Player" ID="Searchsubmit" CssClass="mybtn" OnClick="Searchsubmit_Click"></asp:button>
                                             </div>
                                     </div>
                                
                                      <div class="row">
                                    <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<p><b> or Select a team to search:</b></p>
                                      
                                       
                            	</div>
                        	</div>
                         </div>
                    </div>
                            <div class="row">
                                   
                            </div>
		
                                    <div class="row">

                                    </div>
			                    	   <div class = "row">
                                            <div class="col-sm-6 col-sm-offset-3 form-box">
			                    		      <asp:DropDownList runat="server" ID="Teamcmb" CssClass="form-username form-control" AutoPostBack="True" OnSelectedIndexChanged="Teamcmb_SelectedIndexChanged">
                                                      <asp:ListItem Text="Select a team" Value="Select"></asp:ListItem>
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
          <div class = "row">                            
                                  
                
                     <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
                         runat="server" AutoGenerateColumns="false">
         
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />  
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />  
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />  
                    <RowStyle BackColor="White" ForeColor="#003399" />  
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />  
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />  
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />  
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />  
                    <SortedDescendingHeaderStyle BackColor="#002876" />  
                    <Columns>
                      <asp:BoundField DataField="PlayerId" HeaderText="PlayerId" ItemStyle-Width = "150" />
                      <asp:BoundField DataField="FirstName" HeaderText="FirstName" ItemStyle-Width = "150" />
                      <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" ItemStyle-Width = "150" />
                      <asp:BoundField DataField="LastName" HeaderText="LastName" ItemStyle-Width = "150" />
                      <asp:BoundField DataField="EmailId" HeaderText="EmailId" ItemStyle-Width = "150" />
                      <asp:BoundField DataField="Phone" HeaderText="Phone" ItemStyle-Width = "150" />
                      <asp:BoundField DataField="Address" HeaderText="Address" ItemStyle-Width = "150" />
                      <asp:BoundField DataField="Role" HeaderText="Role" ItemStyle-Width = "150" />
                      <asp:BoundField DataField="Team" HeaderText="Team" ItemStyle-Width = "150" />
                      <asp:HyperLinkField runat="server" DataNavigateUrlFields="PlayerId" DataNavigateUrlFormatString="UpdateDetails.aspx?Id={0}"
                           Text="Update/Delete" />
                      
                      </Columns>
        
                </asp:GridView>  
              <div class="row">
                  &nbsp;
              </div>
              <div class="row">
                  <div class="col-md-3">
                      &nbsp;
                  </div>
                    <div class="col-md-6">
			             <asp:button type="submit" runat="server" Text= "Exit" ID="ExitButton" CssClass="mybtn" OnClick="ExitButton_Click"></asp:button>
                    </div>
                  <div class="col-md-3">
                      &nbsp;
                  </div>
                  
              </div>
            
    </div>
    <div>  
      
    </div>
                                                </form>

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