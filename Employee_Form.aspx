<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee_Form.aspx.cs" Inherits="Employee_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Welcome</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <link href="css/gridview.css" rel="stylesheet" />
    <link href="css/nabar.css" rel="stylesheet" />
    <link href="css/Form.css" rel="stylesheet" />
    <link href="css/star-rating.css" media="all" rel="stylesheet" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/star-rating.js" type="text/javascript"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
 
     
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
         <!-- Navbar -->
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img alt="Logo" src="Images/Sparc_logo.png" height="30" /></span></a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="EmployeeHome.aspx">Home</a></li>
                            <li><a href="EmployeeChange.aspx">Change Username</a></li>
                            <li><a href="EmployeeChangePassword.aspx">Change Password</a></li>
                            <li><a href="Employee_Form.aspx">Form</a></li>
                            <li>
                                
                                <a href="EmployeeLogout.aspx">Logout</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        <!-- Navbar End -->
        <asp:Button ID="Button1" runat="server" Text="Download As Doc" OnClick="Button1_Click" />
                       <div class="container2"> 
                           <div class="table-responsive table-hover">
                    <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True"
                        EmptyDataText="No Records Found" CssClass="gv" EmptyDataRowStyle-ForeColor="Red">
                        <Columns>
                            <asp:TemplateField HeaderText="Sl No.">
                                <ItemTemplate>
                                    <asp:Label ID="lblAppSlNo" runat="server" Text='<%#Eval("APP_SL_NO") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Questions">
                                <ItemTemplate>
                                    <asp:Label ID="lblAppAttributes" runat="server" Text='<%#Eval("APP_ATTRIBUTES") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Max Marks">
                                <ItemTemplate>
                                    <asp:Label ID="lblAppMaxMarks" runat="server" Text='<%#Eval("APP_MAX_MARKS") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Marks">
                                <ItemTemplate>

                                    <asp:TextBox ID="txtMarks" runat="server"></asp:TextBox>
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Score Based On Assignments">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtScore" runat="server"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Remarks (Office Use Only)">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtRemarks" runat="server" ReadOnly="true" ></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle CssClass="fixedHeader" />
                    </asp:GridView>
                               
                      </div>    
                           </div> 

        <asp:Label ID="lblques" runat="server"></asp:Label>
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="Btn_Save_Click" />
    </div>

    </form>
</body>
</html>
