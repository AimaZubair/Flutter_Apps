<%@ Page Title="" Language="C#" MasterPageFile="~/HOD.Master" AutoEventWireup="true" CodeBehind="myitems.aspx.cs" Inherits="COMSATS_store.Faulty.myitems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../chartfiles/Loader.js"></script>
    <script src="../chartfiles/faculty.js"></script>
    <script src="../chartfiles/piechart1.js"></script>
    <style type="text/css">
        h2{
        font:bold 20px/1 'PT Sans Narrow' , sans-serif;
        color:#666;
        text-align:center;
    }
   
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <div class="row">
            <div class="col-xl-3 col-md-6 mb-4" style="height:90px">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1"><a href="facultyprofile.aspx">My Profile</a></div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-user fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4" style="height:90px">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1"><a href="/Faculty/changeprofilepic.aspx">Change Picture</a></div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-image fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4" style="height:90px">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1"><a href="#">Faculty Request</a></div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="newmasg" runat="server">0</div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
    <div class="row">

            <!-- Area Chart -->
            <div class="col-xl-8 col-lg-7">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">COMSATS Assets Under My Users</h6>
                 
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div>
                  <div id="infomsg" runat="server"></div>
                    <div id="faculty_div" style="font-weight:bold"></div>
                </div>
              </div>
       </div>
                </div>
            <!-- Pie Chart -->
            <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Resources Piechart</h6>
                 
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div>
                  <div id="piechart" runat="server"></div>
                    <div id="pie_chart" style="font-weight:bold;"></div>
                </div>
              </div>
            </div>
               </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
    <script type="text/javascript">
        function closefunction() {
            $("alertmsg").slideUp();
        }
        </script>
</asp:Content>
