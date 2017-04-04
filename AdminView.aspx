<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminView.aspx.cs" Inherits="AdminView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Welcome</title>

    <!-- Bootstrap -->
    
    <link href="css/gridview.css" rel="stylesheet" />
    <link href="css/nabar.css" rel="stylesheet" />

      <!-- Navbar -->
          <%-- ------ CSS ------ --%>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
  
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.5/themes/base/jquery-ui.css" type="text/css" media="all" />
			<link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
			 
       <style type="text/css">
           body {
  background:#2c3e50; /*From http://flatuicolors.com/ */
}
        .gv
        {
            font-family: Arial;
            margin-top: 30px;
            font-size: 14px;

        }
        .fixedHeader
{
font-weight: bold;
position: relative;

height: 20px;
}
        .gv th
        {
            background-color: #5D7B9D;
            font-weight: bold;
            color: #fff;
            padding: 2px 10px;
        }
        .gv td
        {
            padding: 2px 10px;
            color: aliceblue;
        }
       .btnSave
        {
            margin: 2px 10px;
            padding: 2px 20px;
            background-color: #5D7B9D;
            border-radius: 2px;
            border: solid 1px #000;
            cursor: pointer;
            color: #fff;
        }
       .btnUpdate{
           margin: 2px 10px;
            padding: 2px 20px;
            background-color: #5D7B9D;
            border-radius: 2px;
            border: solid 1px #000;
            cursor: pointer;
            color: #fff;
       }
       .btnClear{
           margin: 2px 10px;
            padding: 2px 20px;
            background-color: #5D7B9D;
            border-radius: 2px;
            border: solid 1px #000;
            cursor: pointer;
            color: #fff;
       }
        input[type="submit"]:hover
        {
            background-color:darkblue ;
        }
        .panel{
            background:#ecf0f1;
  padding:40px;
  -webkit-border-radius:20px 0 0 0;
     -moz-border-radius:20px 0 0 0;
          border-radius:20px 0 0 0;
  -webkit-box-shadow: 0px 1px 0px #ad392d, inset 0px 1px 0px white;
     -moz-box-shadow: 0px 1px 0px #ad392d, inset 0px 1px 0px white;
          box-shadow: 0px 1px 0px #ad392d, inset 0px 1px 0px white;
  box-shadow: 20px 20px 20px;
        }
        .txt{
            width: 230px;
	border: 1px solid #3366FF;
	border-left: 4px solid #3366FF;
        }
        .txtdec{
            font-family: 'Source Sans Pro', sans-serif;
  font-size:1.1em;
  font-weight:300;
  margin-bottom:25px;
  color:#000099;
  text-shadow:1px 1px 0px white;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      
    <div class="top-bar">
    <div class="container">
    <div class="row">
    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
      <div class="top-number"><p><i class="fa fa-thumbs-up"></i> Keep In Tounch </p></div>
    </div>
     <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
      <div class="social">
     <ul class="social-share">
        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>        
        <li><a href="#"><i class="fa fa-skype"></i></a></li>
     </ul>     
       
    </div>
    </div>
    </div>
      </div><%--container--%>
        </div><%--/top-bar--%>
        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx"><img src="images/logo.png" alt="logo"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                          <li><a href="Default.aspx">Home</a></li>
                            <li><a href="#">Manage</a></li>
                            <li><a href="Add_Questions.aspx">Add Questions</a></li>
                            <li>
                                <a href="adminlogout.aspx">Logout</a>
                            </li>          
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
        <!-- Navbar End -->
        <img src="Images/header_admin.png" width="800" />
        <div class="container">
            
        
            <table align="center" style="position: relative; top: 20px;">
            <tr>
                <td>
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-5">
                    <div class="panel panel-info">
                        <div class="panel-body">
                    <table align="center style">
                        <tr>
                            <td>
                               <span class="txtdec">Employee Dept:</span>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEmployeeDept" CssClass="form-group txt" runat="server" MaxLength="50" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="txtdec">Employee Name:</span>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEmployeeName" CssClass="form-group txt" runat="server" MaxLength="20"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                               <span class="txtdec"> Date Of Joining:</span>
                            </td>
                            <td>
                                
                                <asp:TextBox ID="txtDOJ" runat="server" CssClass="form-group txt" MaxLength="200"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="txtdec">Position:</span>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPosition" runat="server" CssClass="form-group txt" MaxLength="200"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="txtdec">Username:</span>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-group txt" MaxLength="200"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                               <span class="txtdec"> Password:</span>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-group txt" MaxLength="200"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btnSave" OnClick="btnSave_Click" />
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btnUpdate" OnClick="btnUpdate_Click"
                                    Visible="false" />
                                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btnClear" OnClick="btnClear_Click" />
                            </td>
                        </tr>
                    </table>
                            </div>
                        </div>
                        </div>
                        </div>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <asp:Label ID="lblMessage" runat="server" EnableViewState="false" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <div style="position: relative">
                        <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Height="500px">
                    <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True"
                        EmptyDataText="No Records Found" CssClass="gv" EmptyDataRowStyle-ForeColor="Red">
                        <Columns>
                            <asp:TemplateField HeaderText="Sl No.">
                                <ItemTemplate>
                                    <asp:Label ID="lblempid" runat="server" Text='<%#Eval("EMP_ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DEPARTMENT">
                                <ItemTemplate>
                                    <asp:Label ID="lblEmployeeDept" runat="server" Text='<%#Eval("EMP_DEPT") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Employee Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblEmployeeName" runat="server" Text='<%#Eval("EMP_NAME") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date Of Joining">
                                <ItemTemplate>
                                    <asp:Label ID="lblDOJ" runat="server" Text='<%#Eval("EMP_DATEOF_JOINING","{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Position">
                                <ItemTemplate>
                                    <asp:Label ID="lblPosition" runat="server" Text='<%#Eval("EMP_POSITION") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Username">
                                <ItemTemplate>
                                    <asp:Label ID="lblUsername" runat="server" Text='<%#Eval("EMP_USERNAME") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Password">
                                <ItemTemplate>
                                    <asp:Label ID="lblPassword" runat="server" Text='<%#Eval("EMP_PASSWORD") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                   
                                    <asp:ImageButton ID="btnEdit" runat="server" ImageUrl="https://maxcdn.icons8.com/Color/PNG/24/Editing/edit-24.png" OnClick="btnEdit_Click" />
                                    
                                    <asp:Label ID="lblEM_ID" runat="server" Text='<%#Eval("EMP_ID") %>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    
                                    
                                    <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="https://maxcdn.icons8.com/Color/PNG/24/Editing/delete-24.png"  OnClick="btnDelete_Click" />
                                    <asp:Label ID="lblEP_ID" runat="server" Text='<%#Eval("EMP_ID") %>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle CssClass="fixedHeader" />
                    </asp:GridView>
                            </asp:Panel>
                        </div>
                </td>
            </tr>
        </table>
        <input type="hidden" runat="server" id="hidEMP_ID" />
            </div>
    </div>
    </form>
     <!--- Footer  -->

    <hr />

    <footer>
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
        </div>
    </footer>

    <!--- Footer -->


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%= txtDOJ.ClientID  %>").datepicker();
            });
    </script>
</body>
</html>
