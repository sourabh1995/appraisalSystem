<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployeeHome.aspx.cs" Inherits="EmployeeHome" %>

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
    <link href="css/profile.css" rel="stylesheet" />
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
        <br />
   
        
    </div>
        <div class="container1">
  <div class="avatar-flip">
    <img src="" height="150" width="150" alt="Profile Pic" />
    <img src="Images/Sparc_logo.png" height="130" width="150" />
  </div>
            <h3>Welcome</h3>
  <h2><asp:Label ID="lblEmp_Name" runat="server" Visible="true"></asp:Label></h2>
  <h4><asp:Label ID="lblEmp_Position" runat="server" Visible="true"></asp:Label></h4>
  <p>
      <span>Department: &nbsp;</span><asp:Label ID="lblEmp_Dept" runat="server" Visible="true"></asp:Label></p>
  <p><span>Date Of Joining: &nbsp;</span><asp:Label ID="lblEmp_DOJ" runat="server" Visible="true"></asp:Label></p>
</div>
    </form>
</body>
</html>
