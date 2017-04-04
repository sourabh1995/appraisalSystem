<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeChangePassword.aspx.cs" Inherits="EmployeeChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Welcome</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <link href="css/gridview.css" rel="stylesheet" />
    <link href="css/nabar.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
                            <img alt="Logo" src="Images/" height="30" /></span>Sparc India</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="EmployeeHome.aspx">Home</a></li>
                            <li><a href="EmployeeChange.aspx">Change Username</a></li>
                            <li><a href="EmployeeChangePassword.aspx">Change Password</a></li>
                            <li>
                                <asp:Button ID="BtEmployeeLogout" runat="server" Class="btn btn-default navbar-btn" Text="Logout" OnClick="BtEmployeeLogout_Click" />
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        <!-- Navbar End -->
        <hr>
<div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          <h2 class="text-center">Change Password</h2>
                          <p>You can reset your Password here.</p>
                           
                            <div class="panel-body">
                              
                              <div class="form">
                                <fieldset>
                                  <div class="form-group">
                                    <div class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                      <asp:TextBox id="EmpPassword" placeholder="New Password" class="form-control" type="text" runat="server" Display="Dynamic"></asp:TextBox>
                                    </div>
                                      <div class="input-group">
                                          
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                      <asp:TextBox ID="ConfirmPassword" placeholder="Confirm New Password" class="form-control" type="text" runat="server" Display="Dynamic"></asp:TextBox>
                                          <asp:CompareValidator ID="CompareUsername" runat="server" ErrorMessage="Username Doesn't matched" ControlToCompare="EmpPassword" ControlToValidate="ConfirmPassword" Display="Dynamic"></asp:CompareValidator>
                                  </div>
                                      
                                </div>
                                  <div class="form-group">
                                      <asp:Button class="btn btn-lg btn-primary btn-block" text="Change Password" runat="server" OnClick="btn_Change_Password" />
                                  </div>
                                </fieldset>
                              </div>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
    </form>
</body>
</html>
