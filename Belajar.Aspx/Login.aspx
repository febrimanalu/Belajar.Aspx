﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Belajar.Aspx.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FLEXTRONICS</title>
    <link rel="shortcut icon" href="img/flex.png" />

    <!--Required meta tags-->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!--Bootstrap CSS-->
    <link href="another/css/global.css" rel="stylesheet" />
    <link href="another/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-12"></div>
            <div class="col-md-4 col-sm-12">
                <form class="container-form text-center" runat="server">
                    <img src="img/flex.png" width="130" height="70" /><br />
                    &nbsp;<h2 class="text-center">Asset Inventory</h2>
                    &nbsp;<div class="form-group text-center">
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Username"></asp:TextBox>
                    </div>
                    <div class="form-group text-center">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnLogin" CssClass="btn btn-block mt-4 font-weight-bold text-white" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    <br />
                    <asp:Label ID="lblWarning" CssClass="text-danger font-weight-bold" runat="server" Text=""></asp:Label>
                </form>                
            </div>
            <div class="col-md-4 col-sm-12"></div>

            </div>
        </div>

    <!-- JavaScript JS -->
    <script src="another/js/bootstrap.min.js"></script>
</body>
</html>
