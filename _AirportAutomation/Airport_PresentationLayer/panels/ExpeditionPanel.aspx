﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExpeditionPanel.aspx.cs" Inherits="Airport_PresentationLayer.panels.ExpeditionPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Expedition Panel</title>
    <link rel="icon" type="image/png" href="../icons/sefer1.png" />
    <link href="../css/site.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/now-ui-dashboard.min.css" rel="stylesheet" />
    <link href="../css/now-ui-dashboard.css" rel="stylesheet" />
    <link href="../css/demo.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <script type="text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("EKLENDİ.")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
    <link rel="stylesheet" href="../css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../css/jquery.timepicker.css">
</head>
<body class="user-profile">
    <form id="form1" runat="server">
        <div class="wrapper ">
            <div class="sidebar" data-color="orange">
                <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
                <div class="logo">
                    <a class="simple-text logo-mini">
                        <span style="font-size: 28px; color: aliceblue;">
                            <i class="fas fa-fighter-jet"></i></a>
                    <a class="simple-text logo-normal">
                        <span style="font-size: 28px; color: white;">AİRPORT
                    </a>
                </div>


                <div class="sidebar-wrapper" id="sidebar-wrapper">
                    <ul class="nav">
                        <li>
                            <a href="./AdminPanels.aspx">
                                <i class="fa fa-list"></i>
                                <p>Admin Panel</p>
                            </a>
                        </li>

                        <li>
                            <a href="./CustomerPanel.aspx">
                                <i class="fa fa-user"></i>
                                <p>Müşteri</p>
                            </a>
                        </li>
                        <li class="active ">
                            <a href="./ExpeditionPanel.aspx">
                                <i class="far fa-compass"></i>
                                <p>Sefer</p>
                            </a>
                        </li>
                        <li>
                            <a href="./PersonelPanel.aspx">
                                <i class="far fa-address-card"></i>
                                <p>Personel</p>
                            </a>
                        </li>
                        <li>
                            <a href="./TicketPanel.aspx">
                                <i class="fas fa-clipboard"></i>
                                <p>Bilet</p>
                            </a>
                        </li>
                        <li>
                            <a href="./AirplanePanel.aspx">
                                <i class="fas fa-fighter-jet"></i>
                                <p>Uçak</p>
                            </a>
                        </li>
                        <li>
                            <a href="./AboutUs.aspx">
                                <i class="far fa-question-circle"></i>
                                <p>Hakkımda</p>
                            </a>
                        </li>
                        <li class="active-pro">
                            <a href="./Login.aspx">
                                <i class="fas fa-power-off"></i>
                                <p>ÇIKIŞ </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="main-panel" id="main-panel">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
                    <div class="container-fluid">
                        <div class="navbar-wrapper">
                            <div class="navbar-toggle">
                                <button type="button" class="navbar-toggler">
                                    <span class="navbar-toggler-bar bar1"></span>
                                    <span class="navbar-toggler-bar bar2"></span>
                                    <span class="navbar-toggler-bar bar3"></span>
                                </button>
                            </div>
                            <a class="navbar-brand" href="#pablo">Admin Profile</a>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end" id="navigation">
                            <div class="input-group no-border">
                                <input type="text" value="" class="form-control" placeholder="Search...">
                                <div class="input-group-append">
                                    <div class="input-group-text">
                                        <i class="fas fa-search"></i>
                                    </div>
                                </div>
                            </div>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="https://github.com/Berkaybadur">
                                        <i class="fab fa-git"></i>
                                        <p>
                                            <span class="d-lg-none d-md-block">Git</span>
                                        </p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#pablo">
                                        <i class="far fa-address-book"></i>
                                        <p>
                                            <span class="d-lg-none d-md-block">Kullanıcı    </span>
                                        </p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="./Login.aspx">
                                        <i class="fas fa-power-off"></i>
                                        <p>
                                            <span class="d-lg-none d-md-block">Close</span>
                                        </p>
                                    </a>
                                </li>
                            </ul>

                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div class="panel-header panel-header-sm">
                </div>
                <div class="content">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="title">Edit Expedition</h5>
                                    <div class="form-group">
                                        <asp:Button ID="btnClear" runat="server" type="button" class="btn btn-round btn-outline-default  dropdown-toggle btn-icon no-caret" Style="margin-left: 1550px; background-image: url('../icons/delete1.png'); background-repeat: no-repeat; background-position: center; margin-top: -70px;" OnClick="btnClear_Click" />
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6 pr-1">
                                            <div class="form-group">
                                                <label>Sefer Id</label>
                                                <asp:TextBox ID="txtExpeditionId" type="text" class="form-control" disabled="" runat="server" placeholder="ExpeditionId"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6 pl-1">
                                            <div class="form-group">
                                                <label>Uçak </label>
                                                <asp:DropDownList ID="ddlAirplaneId" runat="server" type="text" class="form-control" value="DepartureLocation"></asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 pr-1">
                                            <div class="form-group">
                                                <label>Kalkış Tarih</label>
                                                <asp:TextBox ID="txtDepartureDatetime" type="text" class="form-control" runat="server" placeholder="DepartureDatetime"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6 pl-1">
                                            <div class="form-group">
                                                <label>Gidilecek Tarih</label>
                                                <asp:TextBox ID="txtRotationDatetime" type="text" class="form-control" runat="server" placeholder="RotationDatetime"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4 pr-1">
                                            <div class="form-group">
                                                <label>Kalkış Yer</label>
                                                <asp:TextBox ID="txtDepartureLocation" type="text" class="form-control" runat="server" placeholder="DepartureLocation"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4 px-1">
                                            <div class="form-group">
                                                <label>Gidilecek Yer</label>
                                                <asp:TextBox ID="txtRotationLocation" type="text" class="form-control" runat="server" placeholder="RotationLocation"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4 pl-1">
                                            <div class="form-group">
                                                <label>Ücret</label>
                                                <asp:TextBox ID="txtPrice" type="text" class="form-control" runat="server" placeholder="Price"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4 pr-1">
                                            <div class="form-group">
                                                <asp:Button ID="btnAdd" runat="server" class="btn btn-primary" Text="EKLE" OnClick="btnAdd_Click" />
                                            </div>
                                        </div>
                                        <div class="col-md-4 px-1">
                                            <div class="form-group">
                                                <asp:Button ID="btnDelete" runat="server" class="btn btn-primary" Text="SİL" OnClick="btnDelete_Click" />
                                            </div>
                                        </div>
                                        <div class="col-md-4 pl-1">
                                            <div class="form-group">
                                                <asp:Button ID="btnUpdate" runat="server" class="btn btn-primary" Text="Güncelle" OnClick="btnUpdate_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card card-plain">
                                            <div class="card-header">
                                                <h4 class="card-title">Table on Expedition</h4>
                                            </div>
                                            <div class="card-body">
                                                <div class="table-responsive">

                                                    <asp:GridView ID="dgwExpedition" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="mGrid">
                                                        <AlternatingRowStyle BackColor="White" />
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <a class="düzenle" href='ExpeditionPanel.aspx?id=<%#Eval("ExpeditionId")%>'>Düzenle
                                                                    </a>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                        <EditRowStyle BackColor="#2461BF" />
                                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                        <RowStyle BackColor="#EFF3FB" />
                                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                                    </asp:GridView>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <footer class="footer">
                    <div class="container-fluid">
                        <nav>
                            <ul>
                                <li>
                                    <a href="https://www.linkedin.com/in/an%C4%B1l-berkay-badur-478640195">Lınkedin
                                    </a>
                                </li>
                                <li>
                                    <a href="https://github.com/Berkaybadur">Github
                                    </a>
                                </li>
                                <li>
                                    <a href="http://blog.creative-tim.com">Blog
                                    </a>
                                </li>
                            </ul>
                        </nav>
                        <div class="copyright" id="copyright">
                            &copy;
           
                            <script>
                                document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
                            </script>
                            Designed and Coded by 
           
                            <a href="https://www.linkedin.com/in/an%C4%B1l-berkay-badur-478640195" target="_blank">Anıl Berkay Badur</a>. 
         
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <!--   Core JS Files   -->
        <script src="../assets/js/core/jquery.min.js"></script>
        <script src="../assets/js/core/popper.min.js"></script>
        <script src="../assets/js/core/bootstrap.min.js"></script>
        <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
        <!--  Google Maps Plugin    -->
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
        <!-- Chart JS -->
        <script src="../assets/js/plugins/chartjs.min.js"></script>
        <!--  Notifications Plugin    -->
        <script src="../assets/js/plugins/bootstrap-notify.js"></script>
        <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="../assets/js/now-ui-dashboard.min.js?v=1.3.0" type="text/javascript"></script>
        <!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
        <script src="../assets/demo/demo.js"></script>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
        <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#txtDepartureDatetime").datepicker({
                    showOn: "button",
                    buttonImage: "../icons/calendar.png",
                    buttonImageOnly: true,
                    dateFormat: "dd.mm.yy",
                    monthNames: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
                    dayNamesMin: ["Pts", "Sl", "Çrş", "Prş", "Cm", "Cts", "Pzr"]
                });
            });
        </script>
        <script>
            $(function () {
                $("#txtRotationDatetime").datepicker({
                    showOn: "button",
                    buttonImage: "../icons/calendar.png",
                    buttonImageOnly: true,
                    dateFormat: "dd.mm.yy",
                    monthNames: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
                    dayNamesMin: ["Pts", "Sl", "Çrş", "Prş", "Cm", "Cts", "Pzr"]
                });
            });
        </script>
    </form>
</body>
</html>