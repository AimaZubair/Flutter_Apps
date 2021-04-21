<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="employeesbydept.aspx.cs" Inherits="COMSATS_store.Employees.employeesbydept" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../chartfiles/Loader.js"></script>
    <script src="../chartfiles/piechart.js"></script>
    <link href="../stdfiles/dataTable.css" rel="stylesheet" />
<style type="text/css">
    h2{
        font:bold 25px/1 'PT Sans Narrow' , sans-serif;
        color:#666;
        text-align:center;
    }
    #warpper #content-wrapper{
        background-color:white;
    }
     input[type="search"]{
            border:1px solid #e3e6f0;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
<div id="alertmsg" runat="server"></div>
    <div style="width:100%">
        <h2>Number of Employee By Department</h2>
        <div style="background-color:#1cc88a;height:1px; border-radius:5px"></div>
        <div id="piechart_div" style="width:100%; height:220px; font-weight:bold; margin-top:10px;"></div>
   <div>
       <table id="example" class="table table-hover" style="width:100%;text-align:center">
                <thead>
               <tr style="height:45px;font-weight:bold;font-size:16px;background-color:#4e73df;color:white">
                   <th style="width:5%;text-align:center">#</th>
                   <th style="width:25%;text-align:center">Name</th>
                   <th style="width:25%;text-align:center">Department</th>
                   <th style="width:25%;text-align:center">Designation</th>
                   <th style="text-align:center"></th>
               </tr>
               </thead>
                <tbody id="myTable">
                    <tr>
                        <td>1</td>
                        <td>Admin</td>
                        <td>Adminstration</td>
                        <td>Purchase Officer</td>
                        <td>
                            <a href="#">
                                <i class="fa fa-eye" style="font-size:16px"></i>
                                &nbsp; &nbsp; &nbsp; &nbsp; View
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Dr Malik M.Ali Shahid</td>
                        <td>Computer Science</td>
                        <td>Assistant Professer</td>
                        <td>
                            <a href="#">
                                <i class="fa fa-eye" style="font-size:16px"></i>
                                &nbsp; &nbsp; &nbsp; &nbsp; View
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Ali</td>
                        <td>Computer Science</td>
                        <td>Lecturer</td>
                        <td>
                            <a href="#">
                                <i class="fa fa-eye" style="font-size:16px"></i>
                                &nbsp; &nbsp; &nbsp; &nbsp; View
                            </a>
                        </td>
                    </tr>
                    </tbody>
                   </table>
   </div>
         </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scriptcontent" runat="server">
    <script src="../stdfiles/jquery.dataTables.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#example").dataTable({
            "columns": [
               { "width": "5%" },
               { "width": "25%" },
               { "width": "25%" },
               { "width": "25%" },
               { "width": "20%" }
            ],
            sreaching:false
        });
    });
    </script>
</asp:Content>

