<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Belajar.Aspx.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FLEXTRONICS</title>
    <link rel="shortcut icon" href="img/flex.png" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="additional%20file/css/global.css" rel="stylesheet" />
    <link href="bootstrap4/css/bootstrap.css" rel="stylesheet" />
</head>
<body class="bd">
    <form id="form1" runat="server">
    <nav class="navbar navbar-expand-sm navbar-color mb-1 bg-light">
        <a class="navbar-brand"><img src="img/flex.png" width="60" height="30" /></a>
        <div class="collapse navbar-collapse" id="Mynavbar">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link text-dark" href="Dashboard.aspx"">Home<span class="sr-only">(current)</span></a>

                </li>
                <li class="nav-item active">
                    <a class="nav-link text-dark" href="Email.aspx">Email<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link text-dark" href="Login.aspx">Logout<span class="sr-only">(current)</span></a>

                </li>
            </ul>
        </div>
    </nav>
    <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-8 col-xs-12">
            <div class="boxDiv widget-box-two widget-two-purple">
                <i class="widget-two-icon widget-two-orange text-center ">
                    <img src="img/flex.png" height="90" /></i>
                <div class="wigdet-two-content text-dark">
                    <p class="m-0 text-uppercase font-600 font-secondaryg text-overflow " title="Statistics">STATUS</p>
                    <h2 class="text-dark"><span data-plugin="counterup">811</span> </h2>
                    &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="bg-success" Text="ACTIVE" Width="65px"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="bg-secondary" Text="STORED" Width="65px"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="bg-warning" Text="EOL" Width="65px"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="bg-danger" Text="TOTAL" Width="65px"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-4 col-xs-12">
            <div class="boxDiv">
                LOCATION
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-8 col-xs-12">
            <div class="boxDiv">
                ASSET
            </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-4 col-xs-12">
            <div class="boxDiv">
                TOTAL
            </div>
        </div>
    </div>
    <script src="additional%20file/js/jquery-3.5.1.slim.min.js"></script>
    <script src="additional%20file/js/popper.min.js"></script>
    <script src="bootstrap4/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
