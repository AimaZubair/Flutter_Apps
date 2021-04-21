<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="COMSATS_store.users.Signin" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>CUI Purchase Office</title>
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../css/sb-admin-2.min.css" rel="stylesheet">
    <script type="text/javascript">
        function closefunction() {
            $('#alertmsgbox').hide();
        }
        </script>
</head>
<body style="background-color:#808080">
      <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image">
                <div class="small" style="margin-top:390px;text-align:center">
                    <span>Copyright &copy; 2020
                        <a href="http://vehari.comsats.edu.pk/Default.aspx">COMSATS VEHARI</a>
                    </span>All Copyright Reserved
                    </div>
                </div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">CUI Vehari Purchase Office</h1>
                  </div>
                  <form class="user" runat="server">
                    <div class="form-group">
                   <asp:TextBox ID="emailaddress" TextMode="Email" class="form-control form-control-user" aria-describedby="emailHelp" placeholder="admin@ciitvehari.edu.pk" runat="server"></asp:TextBox>
                         </div>
                    <div class="form-group">
                   <asp:TextBox ID="emailpsd" TextMode="Password" class="form-control form-control-user"  placeholder="Password" runat="server"></asp:TextBox>
                         </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck"/>
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                     <asp:Button ID="btnLogin" class="btn btn-primary btn-user btn-block" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    <br />
                      <div id="errormsg" runat="server" style="margin-top:10px" ></div>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>
    <!-- Bootstrap core JavaScript-->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
</body>
</html>
