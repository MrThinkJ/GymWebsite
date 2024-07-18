<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_admin.aspx.cs" Inherits="Website_Gym.login_admin" %>

<!DOCTYPE html>

<html lang="en" data-bs-theme="blue-theme">
<
    runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gymfito Login</title>
    <link rel="icon" href="material/images/justLogo.png" type="image/png">
    <link href="material/css/pace.min.css" rel="stylesheet">
    <script src="material/js/pace.min.js"></script>
    <link href="material/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="material/plugins/metismenu/metisMenu.min.css">
    <link rel="stylesheet" type="text/css" href="material/plugins/metismenu/mm-vertical.css">
    <link href="material/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300;400;500;600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Material+Icons+Outlined" rel="stylesheet">
    <link href="material/css/bootstrap-extended.css" rel="stylesheet">
    <link href="sass/main.css" rel="stylesheet">
    <link href="sass/dark-theme.css" rel="stylesheet">
    <link href="sass/blue-theme.css" rel="stylesheet">
    <link href="sass/responsive.css" rel="stylesheet">
</>
<body>
    <form id="form1" runat="server" method="post">
        <div class="auth-basic-wrapper d-flex align-items-center justify-content-center">
            <div class="container-fluid my-5 my-lg-0">
                <div class="row">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5 col-xxl-4 mx-auto">
                        <div class="card rounded-4 mb-0 border-top border-4 border-primary border-gradient-1">
                            <div class="card-body p-5">
                                <div class="d-flex justify-content-center">
                                    <img src="material/images/logo.png" class="mb-4" width="145" alt="">
                                </div>
                                <h4 class="fw-bold text-center">Get Started Now</h4>
                                <p class="mb-0 text-center">Enter your credentials to login your account</p>
                                <div class="form-body my-5">
                                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                                    <div class="row g-3">
                                        <div class="col-12">
                                            <asp:Label ID="lblUsername" runat="server" Text="Username" CssClass="form-label"></asp:Label>
                                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-12">
                                            <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="form-label"></asp:Label>
                                            <div class="input-group" id="show_hide_password">
                                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control border-end-0"></asp:TextBox>
                                                <a href="javascript:;" class="input-group-text bg-transparent"><i class="bi bi-eye-slash-fill"></i></a>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="d-grid">
                                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-grd-primary" OnClick="btnLogin_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--end row-->
            </div>
        </div>
    </form>
    <script src="material/js/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#show_hide_password a").on('click', function (event) {
                event.preventDefault();
                if ($('#show_hide_password input').attr("type") == "text") {
                    $('#show_hide_password input').attr('type', 'password');
                    $('#show_hide_password i').addClass("bi-eye-slash-fill");
                    $('#show_hide_password i').removeClass("bi-eye-fill");
                } else if ($('#show_hide_password input').attr("type") == "password") {
                    $('#show_hide_password input').attr('type', 'text');
                    $('#show_hide_password i').removeClass("bi-eye-slash-fill");
                    $('#show_hide_password i').addClass("bi-eye-fill");
                }
            });
        });
    </script>
</body>
</html>
