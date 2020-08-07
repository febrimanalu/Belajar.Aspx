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
    <link href="additional%20file/css/jquery.dataTables.min.css" rel="stylesheet" />
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
        <main role="main">
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
            <div class="container mt-5 md-5">
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table id="myTable" class="table table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>S/N</th>
                                    <th>Description</th>
                                    <th>BU</th>
                                    <th>BU Line</th>
                                    <th>Status</th>
                                    <th>Owner Engineer</th>
                                    <th>RF ID</th>
                                    <th>CO</th>
                                    <th>EAM</th>
                                    <th>Asset Group Description</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <a href="#" class="btn btn-info btn-sm">+</a>
                            </td>
                            <td><%# Eval("S/N") %></td>
                            <td><%# Eval("Description") %></td>
                            <td><%# Eval("BU") %></td>
                            <td><%# Eval("BU Line") %></td>
                            <td><%# Eval("Status") %></td>
                            <td><%# Eval("Owner Engineer") %></td>
                            <td><%# Eval("RF ID") %></td>
                            <td><%# Eval("CO") %></td>
                            <td><%# Eval("EAM") %></td>
                            <td><%# Eval("Asset Group Description") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                    </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </main>
        <footer></footer>

    <script src="additional%20file/js/jquery-3.5.1.slim.min.js"></script>
    <script src="additional%20file/js/popper.min.js"></script>
    <script src="bootstrap4/js/bootstrap.min.js"></script>
    <script src="additional%20file/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#myTable').DataTable();
        });
    </script>
    </form>
</body>
</html>
