<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_Questions.aspx.cs" Inherits="Add_Questions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Welcome</title>

    <!-- Bootstrap -->
    \
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
        .txtdec{
            font-family: 'Source Sans Pro', sans-serif;
  font-size:1.1em;
  font-weight:300;
  margin-bottom:25px;
  color:#000099;
  text-shadow:1px 1px 0px white;
        }
        .txtbx{
            width: 230px;
	border: 1px solid #3366FF;
	border-left: 4px solid #3366FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <!-- Navbar -->
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
        <br /><br />
        <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                    <div class="panel panel-info">
                        <div class="panel-body">
        <table align="center">
                        <tr>
                            <td>
                                <span class="txtdec">Department : &nbsp;&nbsp;</span>
                            </td>
                            <td>
                                <asp:DropDownList ID="DDdepartment" CssClass="form-group" runat="server">
                                    <asp:ListItem Text="----Select----" Value=""></asp:ListItem>
                                    <asp:ListItem Text="GIS" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="SURVEY" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="APPLICATION" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="BD" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="ACCOUNTS" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="IT" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="ADMIN-FO" Value="7"></asp:ListItem>
                                    <asp:ListItem Text="ADMIN-STORE" Value="8"></asp:ListItem>
                                    <asp:ListItem Text="Mgmt-Secretary" Value="9"></asp:ListItem>
                                    <asp:ListItem Text="HR" Value="10"></asp:ListItem>
                                    <asp:ListItem Text="COMMON" Value="11"></asp:ListItem>
                                </asp:DropDownList>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="txtdec">Category :</span>
                            </td>
                            <td>
                                <asp:RadioButton ID="rbExecutive" GroupName="Category" runat="server" Text="Executive" />
                                <asp:RadioButton ID="rbLeader" GroupName="Category" runat="server" Text="Leader" />
                            </td>
                        </tr>
                        
                        
                        <tr>
                           <td colspan="2" align="center">
                                <asp:Button ID="btnAdd" runat="server" Text="Add Question" CssClass="btnSave" OnClick="btnAdd_Click" />
                                <asp:Button ID="btnView" runat="server" Text="View" CssClass="btnView" OnClick="btnView_Click"/>   
                                
                            </td>
                        </tr>
                    <tr>
                        <td>
                            <span class="txtdec"><asp:Label ID="lblQuestion" runat="server" Text="Question" Visible="false"></asp:Label></span>
                        </td>
                            <td>
                                <asp:TextBox ID="txtQuestion" runat="server" CssClass="form-group txtbx" MaxLength="1000" Visible="false"></asp:TextBox>
                                
                                
                            </td>
                        </tr>
                    <tr>
                        <td>
                            <span class="txtdec"><asp:Label ID="lblMaxMarks" runat="server" Text="Max Marks" Visible="false"></asp:Label></span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMaxMarks" runat="server" CssClass="form-group txtbx" MaxLength="50" Visible="false"></asp:TextBox>
                        </td>
                    </tr>
                <tr>
                           <td colspan="2" align="center">
                                <asp:Button ID="btnNew" runat="server" Text="Save" CssClass="btnClear" OnClick="btnSave_Click" Visible="false" />  
                                <asp:Button ID="btnView1" runat="server" Text="View" CssClass="btnView" OnClick="btnView_Click" Visible="false"/>
                            </td>
                        </tr>
                    
                    </table>
                            </div>
                        </div>
                      </div>
                    </div>               
                  
                        
                    <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True"
                        EmptyDataText="No Records Found" CssClass="gv" EmptyDataRowStyle-ForeColor="Red" >
                        <Columns>
                            <asp:TemplateField HeaderText="Sl No.">
                                <ItemTemplate>
                                    <asp:Label ID="lblappslno" runat="server" Text='<%#Eval("APP_SL_NO") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DEPARTMENT">
                                <ItemTemplate>
                                    <asp:Label ID="lblappdeptname" runat="server" Text='<%#Eval("APP_DEPT_NAME") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Question">
                                <ItemTemplate>
                                    <asp:Label ID="lblappattribute" runat="server" Text='<%#Eval("APP_ATTRIBUTES") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Max Marks">
                                <ItemTemplate>
                                    <asp:Label ID="lblMaxMarks" runat="server" Text='<%#Eval("APP_MAX_MARKS") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Category">
                                <ItemTemplate>
                                    <asp:Label ID="lblappcategory" runat="server" Text='<%#Eval("APP_CATEGORY") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                   
                                    <asp:ImageButton ID="btnEdit" runat="server" ImageUrl="https://maxcdn.icons8.com/Color/PNG/24/Editing/edit-24.png"/>
                                    
                                    <asp:Label ID="lbl" runat="server" Text='<%#Eval("APP_SL_NO") %>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    
                                    
                                    <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="https://maxcdn.icons8.com/Color/PNG/24/Editing/delete-24.png" />
                                    <asp:Label ID="lb" runat="server" Text='<%#Eval("APP_SL_NO") %>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle CssClass="fixedHeader" />
                    </asp:GridView>
                            
                    
    </div>
    </form>
</body>
</html>
