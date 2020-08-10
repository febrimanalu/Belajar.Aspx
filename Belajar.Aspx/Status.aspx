﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Status.aspx.cs" Inherits="Belajar.Aspx.Status" %>

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
            <div class="container mt-5 mb-5">
                <asp:Repeater ID="RptStatus" runat="server">
                    <HeaderTemplate>
                        <table id="myTable" class="table table-striped table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>RN</th>
                                    <th>SN</th>
                                    <th>Description</th>
                                    <th>Family</th>
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
                                        <a href="Edit_data" data-toggle="modal" data-target="#ModalEdit" class="btn btn-info btn-sm">+</a> 
                                    </td>
                                    <td><%# Eval ("SN") %></td>
                                    <td><%# Eval ("Description") %></td>
                                    <td><%# Eval ("Family") %></td>
                                    <td><%# Eval ("BU") %></td>
                                    <td><%# Eval ("BU Line") %></td>
                                    <td><%# Eval ("Status") %></td>
                                    <td><%# Eval ("Owner Engineer") %></td>
                                    <td><%# Eval ("RF ID") %></td>
                                    <td><%# Eval ("CO") %></td>
                                    <td><%# Eval ("EAM") %></td>
                                    <td><%# Eval ("Asset Group Description") %></td>
                                </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                            </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                <button class="btn btn-info" type="button" data-target="#ModalCreate" data-toggle="modal">Create Data</button>
            </div>
            <!--Modal Create-->
            <div class="modal fade" id="ModalCreate" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header alert-info">
                            <h5 class="modal-title" id="exampleModalLabel">Form Create Data</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="SN"></asp:Label>
                                <asp:TextBox ID="txtSN" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                                <asp:TextBox ID="txtDesc" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="Family"></asp:Label>
                                <asp:TextBox ID="txtFam" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="BU"></asp:Label>
                                <asp:TextBox ID="txtBU" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server" Text="BU Line"></asp:Label>
                                <asp:TextBox ID="txtBULine" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="Status"></asp:Label>
                                <asp:DropDownList ID="ddlStatus" CssClass="form-control" runat="server">
                                    <asp:ListItem>--Select Status--</asp:ListItem>
                                    <asp:ListItem>ACTIVE</asp:ListItem>
                                    <asp:ListItem>EOL</asp:ListItem>
                                    <asp:ListItem>STORED</asp:ListItem>
                                    <asp:ListItem>UNKNOWN</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label7" runat="server" Text="Owner Engineer"></asp:Label>
                                <asp:TextBox ID="txtOE" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label8" runat="server" Text="RF ID"></asp:Label>
                                <asp:TextBox ID="txtRFID" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label9" runat="server" Text="CO"></asp:Label>
                                <asp:TextBox ID="txtCO" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label10" runat="server" Text="EAM"></asp:Label>
                                <asp:TextBox ID="txtEAM" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label11" runat="server" Text="Asset Group Description"></asp:Label>
                                <asp:TextBox ID="txtAssetGD" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                            <asp:Button ID="btnSave" OnClick="btnSave_Click" CssClass="btn btn-info" runat="server" Text="Save" />
                        </div>
                    </div>
                </div>
            </div>

            <!--Modal Edit-->
            <div class="modal fade" id="ModalEdit" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header alert-info">
                            <h5 class="modal-title" id="exampleModalLabel">Form Create Data</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <asp:Label ID="Label12" runat="server" Text="SN"></asp:Label>
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label13" runat="server" Text="Description"></asp:Label>
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label14" runat="server" Text="Family"></asp:Label>
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label15" runat="server" Text="BU"></asp:Label>
                                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label16" runat="server" Text="BU Line"></asp:Label>
                                <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label17" runat="server" Text="Status"></asp:Label>
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                    <asp:ListItem>--Select Status--</asp:ListItem>
                                    <asp:ListItem>ACTIVE</asp:ListItem>
                                    <asp:ListItem>EOL</asp:ListItem>
                                    <asp:ListItem>STORED</asp:ListItem>
                                    <asp:ListItem>UNKNOWN</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label18" runat="server" Text="Owner Engineer"></asp:Label>
                                <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label19" runat="server" Text="RF ID"></asp:Label>
                                <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label20" runat="server" Text="CO"></asp:Label>
                                <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label21" runat="server" Text="EAM"></asp:Label>
                                <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label22" runat="server" Text="Asset Group Description"></asp:Label>
                                <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                            <asp:Button ID="Button1" OnClick="btnSave_Click" CssClass="btn btn-info" runat="server" Text="Save" />
                        </div>
                    </div>
                </div>
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
