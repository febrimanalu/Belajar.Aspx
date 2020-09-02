<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Status.aspx.cs" Inherits="Belajar.Aspx.Status" %>

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
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="another/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="another/DataTables-1.10.21/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
    <link href="another/button/css/buttons.bootstrap4.min.css" rel="stylesheet" />
    <link href="another/datatables/responsive.bootstrap4.min.css" rel="stylesheet" />
    
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
        <main role="row">
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
            <div class="ml-1 mt-5 mr-1 mb-5">
                <button class="btn btn-info" type="button" data-target="#ModalCreate" data-toggle="modal">Create Data</button>
                <br />
                <asp:Repeater ID="RptStatus" runat="server">
                    <HeaderTemplate>
                        <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap" width:100%">
                            <thead>
                                <tr role="row">
                                    <th>SN</th>
                                    <th>Description</th>
                                    <th>Family</th>
                                    <th>BU</th>
                                    <th>BU_Line</th>
                                    <th>Status</th>
                                    <th>Owner_Engineer</th>
                                    <th>RF_ID</th>
                                    <th>CO</th>
                                    <th>EAM</th>
                                    <th>Asset_Group_Desc</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                                <tr>
                                    <td>
                                        <a href='<%# "Dashboard.aspx?ID=" + Eval ("SN")  %>' target="_blank"><%# Eval ("SN") %></a>
                                    </td>
                                    <td><%# Eval ("Description") %></td>
                                    <td><%# Eval ("Family") %></td>
                                    <td><%# Eval ("BU") %></td>
                                    <td><%# Eval ("BU_Line") %></td>
                                    <td><%# Eval ("Status") %></td>
                                    <td><%# Eval ("Owner_Engineer") %></td>
                                    <td><%# Eval ("RF_ID") %></td>
                                    <td><%# Eval ("CO") %></td>
                                    <td><%# Eval ("EAM") %></td>
                                    <td><%# Eval ("Asset_Group_Description") %></td>
                                    <td>
                                         &nbsp
                                        <a id="Edit_data" data-toggle="modal" data-target="#ModalEdit" onclick="Edit_data" class="alert-info" data-id="<%# Eval("SN") %>"
                                        data-nama="<%# Eval("Description") %>" data-fam="<%# Eval("Family") %>" data-bu="<%# Eval("BU") %>" data-line="<%# Eval("BU_Line") %>" data-status="<%# Eval("Status") %>"
                                        data-oe="<%# Eval("Owner_Engineer") %>" data-rfid="<%# Eval("RF_ID") %>" data-co="<%# Eval("CO") %>" data-eam="<%# Eval("EAM") %>" data-agd="<%# Eval("Asset_Group_Description") %>">
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                        </svg>
                                        </a> 
                                         &nbsp
                                         &nbsp
                                         &nbsp
                                        <a id="Delete_data" data-toggle="modal" data-target="#ModalDelete" onclick="Delete_data" class="alert-info">
                                        <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                        </svg>
                                        </a> 
                                    </td>
                                </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                            </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
            <!--Modal Create-->
            <div class="modal fade" id="ModalCreate" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header alert-info">
                            <h5 class="modal-title" id="exampleModalLabel">Form Create Data</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label1" runat="server" Text="SN"></asp:Label>
                                                <asp:TextBox ID="txtSN" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                                                <asp:TextBox ID="txtDesc" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label3" runat="server" Text="Family"></asp:Label>
                                                <asp:TextBox ID="txtFam" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label4" runat="server" Text="BU"></asp:Label>
                                                <asp:DropDownList ID="ddlBU" CssClass="form-control" runat="server">
                                                    <asp:ListItem>--Select Status--</asp:ListItem>
                                                    <asp:ListItem>BU 1</asp:ListItem>
                                                    <asp:ListItem>BU 2</asp:ListItem>
                                                    <asp:ListItem>BU 3</asp:ListItem>
                                                    <asp:ListItem>WAREHOUSE</asp:ListItem>
                                                    <asp:ListItem>CUSTOMER SITE</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label5" runat="server" Text="BU_Line"></asp:Label>
                                                <asp:TextBox ID="txtBULine" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
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
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label7" runat="server" Text="Owner_Engineer"></asp:Label>
                                                <asp:TextBox ID="txtOE" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label8" runat="server" Text="RF_ID"></asp:Label>
                                                <asp:TextBox ID="txtRFID" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label9" runat="server" Text="CO"></asp:Label>
                                                <asp:TextBox ID="txtCO" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label10" runat="server" Text="EAM"></asp:Label>
                                                <asp:TextBox ID="txtEAM" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label11" runat="server" Text="Asset_Group_Description"></asp:Label>
                                                <asp:TextBox ID="txtAssetGD" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                            <asp:Button ID="btnSave" OnClick="btnSave_Click" CssClass="btn btn-success" runat="server" Text="Save" />
                        </div>
                    </div>
                </div>
            </div>

            <!--Modal Edit-->
            <div class="modal fade" id="ModalEdit" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header alert-info">
                            <h5 class="modal-title">Form Edit Data</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label12" runat="server" Text="SN"></asp:Label>
                                                <asp:TextBox ID="txtEditSN" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label13" runat="server" Text="Description"></asp:Label>
                                                <asp:TextBox ID="txtEditDesc" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label14" runat="server" Text="Family"></asp:Label>
                                                <asp:TextBox ID="txtEditFam" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label15" runat="server" Text="BU"></asp:Label>
                                                <asp:DropDownList ID="ddlEditBU" ClientIDMode="Static" CssClass="form-control" runat="server">
                                                    <asp:ListItem>--Select Status--</asp:ListItem>
                                                    <asp:ListItem>BU 1</asp:ListItem>
                                                    <asp:ListItem>BU 2</asp:ListItem>
                                                    <asp:ListItem>BU 3</asp:ListItem>
                                                    <asp:ListItem>WAREHOUSE</asp:ListItem>
                                                    <asp:ListItem>CUSTOMER SITE</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label16" runat="server" Text="BU_Line"></asp:Label>
                                                <asp:TextBox ID="txtEditLine" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label17" runat="server" Text="Status"></asp:Label>
                                                <asp:DropDownList ID="ddlEditStatus" ClientIDMode="Static" CssClass="form-control" runat="server">
                                                    <asp:ListItem>--Select Status--</asp:ListItem>
                                                    <asp:ListItem>ACTIVE</asp:ListItem>
                                                    <asp:ListItem>EOL</asp:ListItem>
                                                    <asp:ListItem>STORED</asp:ListItem>
                                                    <asp:ListItem>UNKNOWN</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label18" runat="server" Text="Owner_Engineer"></asp:Label>
                                                <asp:TextBox ID="txtEditOE" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label19" runat="server" Text="RF_ID"></asp:Label>
                                                <asp:TextBox ID="txtEditRFID" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label20" runat="server" Text="CO"></asp:Label>
                                                <asp:TextBox ID="txtEditCO" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label21" runat="server" Text="EAM"></asp:Label>
                                                <asp:TextBox ID="txtEditEAM" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <asp:Label ID="Label22" runat="server" Text="Asset_Group_Description"></asp:Label>
                                                <asp:TextBox ID="txtEditAGD" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="btnDelete" OnClick="btnDelete_Click" CssClass="btn btn-danger" runat="server" Text="Delete" />
                            <asp:Button ID="btnEdit" OnClick="btnEdit_Click" CssClass="btn btn-success" runat="server" Text="Save" />
                        </div>
                    </div>
                </div>
            </div>

            <!--Modal Delete-->
            <div class="modal fade" id="ModalDelete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header alert-danger">
                            <h5 class="modal-title">Warning</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">Are you sure to delete this data?</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">Cancel</button>
                            <asp:Button ID="btndel" OnClick="btndel_Click" CssClass="btn btn-danger" runat="server" Text="Yes" />
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <footer></footer>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="bootstrap4/js/bootstrap.bundle.min.js"></script>    


    <!--DataTables-->
    <script src="another/js/jquery-3.5.1.js"></script>
    <script src="another/DataTables-1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="another/DataTables-1.10.21/js/dataTables.bootstrap4.min.js"></script>
    <script src="another/button/js/dataTables.buttons.min.js"></script>
    <script src="another/button/js/buttons.bootstrap4.min.js"></script>
    <script src="another/datatables/jszip.min.js"></script>
    <script src="another/datatables/pdfmake.min.js"></script>
    <script src="another/datatables/vfs_fonts.js"></script>
    <script src="another/button/js/buttons.html5.min.js"></script>
    <script src="another/button/js/buttons.print.min.js"></script>
    <script src="another/button/js/buttons.colVis.min.js"></script>
    <script src="another/datatables/dataTables.responsive.min.js"></script>
    <script src="another/datatables/responsive.bootstrap4.min.js"></script>
  

    <script>
        $(document).ready(function () {
            var table = $('#myTable').DataTable({
                buttons: ['copy', 'csv', 'excel',
                    {
                        extend: 'pdfHtml5',
                        orientation: 'landscape',
                        pageSize: 'LEGAL',
                        except: ''
                    }, 'print'],
                dom:
                "<'row'<'col-md-4'l><'col-md-4'B><'col-md-4'f>>" +
                "<'row'<'col-md-12'tr>>" +
                "<'row'<'col-md-7'i><'col-md-5'p>>"
            });

            table.buttons().container()
                .appendTo('#myTable_wrapper .col-md-6:eq(0)');
        });

        $(document).on("click", "#Edit_data", function () {
            var _no = $(this).data("id");
            var _desc = $(this).data("nama");
            var _fam = $(this).data("fam");
            var _bu = $(this).data("bu");
            var _line = $(this).data("line");
            var _status = $(this).data("status");
            var _oe = $(this).data("oe");
            var _rfid = $(this).data("rfid");
            var _co = $(this).data("co");
            var _eam = $(this).data("eam");
            var _agd = $(this).data("agd");

            $("#ModalEdit #txtEditSN").val(_no);
            $("#ModalEdit #txtEditDesc").val(_desc);
            $("#ModalEdit #txtEditFam").val(_fam);
            $("#ModalEdit #ddlEditBU").val(_bu);
            $("#ModalEdit #txtEditLine").val(_line);
            $("#ModalEdit #ddlEditStatus").val(_status);
            $("#ModalEdit #txtEditOE").val(_oe);
            $("#ModalEdit #txtEditRFID").val(_rfid);
            $("#ModalEdit #txtEditCO").val(_co);
            $("#ModalEdit #txtEditEAM").val(_eam);
            $("#ModalEdit #txtEditAGD").val(_agd);
            $("#ModalEdit #txtEditSN").attr("ReadOnly", true);;
        });
    </script>
    </form>
</body>
</html>
