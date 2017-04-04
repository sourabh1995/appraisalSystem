<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign In</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <link href="css/nabar.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        *{
            font-family: 'Source Sans Pro', sans-serif;
        }
        body{
            background-color: #2c3e50;
        }
        .panel{
            position:relative;
  width:560px;
  height:450px;
  margin:50px auto;
  text-align:center;
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
        h2{
             font-family: 'Source Sans Pro', sans-serif;
  font-size:2em;
  font-weight:300;
  margin-bottom:25px;
  color:#7f8c8d;
  text-shadow:1px 1px 0px white;
        }
        .btn-login{
             position:relative;
  float:left;
  width:145px;
  margin-top:10px;
  background:#3498db;
  color:#fff;
  font-weight:400;
  text-shadow:1px 1px 0px #2d7baf;
  box-shadow:0px 3px 0px #2d7baf;
  -webkit-transition: all .3s ease-in-out;
     -moz-transition: all .3s ease-in-out;
          transition: all .3s ease-in-out;
        }
        input {
  display:block;
  width:315px;
  padding:14px;
  -webkit-border-radius:6px;
     -moz-border-radius:6px;
          border-radius:6px;
  border:0;
  margin-bottom:12px;
  color:#7f8c8d;
  font-weight:600;
  font-size:16px;
}

input:focus {
  background:#fafafa;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
       <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx" > <span> <img alt="Logo" src="Images/Sparc_logo.png" height="30" /></span></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Default.aspx"><img src="https://maxcdn.icons8.com/windows10/PNG/32/Household/garage_closed-32.png" title="Garage Closed" width="32"/></a></li>
                        
                        <li><a href="SignIn.aspx"><img src="https://maxcdn.icons8.com/windows8/PNG/26/Users/user_male_circle-26.png" title="Circled User Male" width="26"/> &nbsp;Admin</a></li>
                        <li><a href="EmployeeSignIn.aspx"><img src="https://maxcdn.icons8.com/Android_L/PNG/24/Users/user_male_circle-24.png" title="Circled User Male" width="26"/> &nbsp;Employee</a></li>
                    </ul>
                </div>
            </div>
        </div> 
            <br /><br />

        <!--- Sign in start  -->
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="panel">
            <div class="form-horizontal">
                <h2>Login</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"><span><img src="https://maxcdn.icons8.com/office/PNG/40/Users/collaborator_male-40.png" title="Collaborator Male" width="40"/></span></asp:Label>
                    
                    <div class="col-md-6">
                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server" Placeholder="Username"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="The Username field is Required !" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"><span><img src="https://maxcdn.icons8.com/office/PNG/40/Very_Basic/key-40.png" title="Key" width="40"/></span></asp:Label>
                    <div class="col-md-6">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="The Password field is Required !" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                        <div class="col-md-1"></div>                    
                    <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me ?" ForeColor="White"></asp:Label>
                    </div>
                </div>
                 <div class="form-group">
                        <div class="col-md-2"></div>                    
                    <div class="col-md-6">
                        <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn-login input" OnClick="Button1_Click" />
                        
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-md-2"></div>                    
                    <div class="col-md-6">
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                        </div>
                </div>
            </div>
                </div>
        </div>
            </div>
            </div>
        <!--- Sign in end  -->


    </form><br /><br /><br /><br /><br /><br />
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
</body>
</html>
