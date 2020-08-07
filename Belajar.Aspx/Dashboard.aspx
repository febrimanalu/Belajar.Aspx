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
        <header>
            <nav class="navbar navbar-expand-sm navbar-color mb-1 bg-light">
                <a class="navbar-brand"><img src="img/flex.png" width="60" height="30" /></a>
                <div class="collapse navbar-collapse" id="Mynavbar">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link text-dark" href="Dashboard.aspx"">Dashboard<span class="sr-only">(current)</span></a>
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
        </header>
        <main>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-8 col-xs-12">
                    <div class="boxDiv">
                        STATUS
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
        </main>
        <footer></footer>

    <script src="additional%20file/js/jquery-3.5.1.slim.min.js"></script>
    <script src="additional%20file/js/popper.min.js"></script>
    <script src="bootstrap4/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
