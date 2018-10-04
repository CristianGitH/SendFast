<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Proyecto.Web.Views.Registrar.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        Registrar
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!-- Fonts and icons     -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
        crossorigin="anonymous">
    <!-- CSS Files -->
    <link href="../../assets/css/material-kit.css" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../../assets/demo/demo.css" rel="stylesheet" />

    <!-- Core JS Files   -->
    <script src="../../assets/js/core/jquery.min.js" type="text/javascript"></script>
    <script src="../../assets/js/core/popper.min.js" type="text/javascript"></script>
    <script src="../../assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
    <script src="../../assets/js/plugins/moment.min.js"></script>
    <!-- Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
    <script src="../assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
    <!-- Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
    <script src="../../assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
    <!-- Plugin for Sharrre btn -->
    <script src="../../assets/js/plugins/jquery.sharrre.js" type="text/javascript"></script>
    <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
    <script src="../../assets/js/material-kit.js?v=2.0.4" type="text/javascript"></script>
</head>

<body class="login-page">
    <div class="page-header header-filter" style="background-image: url('../../assets/img/bg7.jpg'); background-size: cover; background-position: top center;">
        <div class="container">
            <div class="card ">
                <div class="card-header card-header-info text-center">
                    <h3>Crear una cuenta</h3>
                </div>
                <div class="card-body">
                    <form runat="server">
                        <!-- Primera seccion -->
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="lblUsuario" runat="server" Text="Nombre"></asp:Label>
                                <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <br>
                        <!-- Segunda Seccion -->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-check form-check-radio form-check-inline">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                            value="option1">
                                        Cliente
                                        <span class="circle">
                                            <span class="check"></span>
                                        </span>
                                    </label>
                                </div>
                                <div class="form-check form-check-radio form-check-inline">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2"
                                            value="option2">
                                        Transportista
                                        <span class="circle">
                                            <span class="check"></span>
                                        </span>
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <button type="button" class="btn btn-outline-info btn-block" data-toggle="tooltip"
                                    data-placement="bottom" title="Si necesitas enviar productos lo mas rapido posible">
                                    Cliente
                                </button>
                            </div>
                            <div class="col-md-3">
                                <button type="button" class="btn btn-outline-info btn-block" data-toggle="tooltip"
                                    data-placement="bottom" title="Si viajas constantemente y quieres generar ingresos extra">
                                    Transportista
                                </button>
                            </div>
                        </div>
                        <br>
                        <!-- Tercera Seccion -->
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="lblConfirmarPassword" runat="server" Text="Confirmar Password"></asp:Label>
                                <asp:TextBox ID="txtConfirmarPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <br>
                        <div class="text-center">
                            <asp:Button ID="btnAceptar" runat="server" CssClass="btn btn-info btn-block" Text="Aceptar" OnClick="btnAceptar_Click1"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <div class="copyright">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>, Creado y diseñado por Cristian & Cristian
                </div>
            </div>
        </footer>
    </div>
</body>

</html>