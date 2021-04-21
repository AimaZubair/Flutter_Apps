<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="allemployees.aspx.cs" Inherits="COMSATS_store.Employees.allemployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../stdfiles/dataTable.css" rel="stylesheet" />
<style type="text/css">
    #example_wrapper{
        width:100%;
        padding:20px;
        margin-top:40px;
    }
   
    #myTable tr{
        height:40px;
    }
    input[type="search"]{
            border:1px solid #e3e6f0;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <form id="form1" runat="server">
    <table id="employeeinfo" class="employeeinfo" runat="server" style="width:96%; margin-left:2%; margin-top:3%; text-align:center">
        <tr>
            <td colspan="4" style="border:none;">
                <div id="searchResult" runat="server"></div>
            </td>
        </tr>
        <tr>
            <td style="width:30%">
                <asp:DropDownList ID="deptlist" runat="server" CssClass="form-control" style="width:200px; height:34px; margin:0 auto;" AutoPostBack="false">
                    <asp:ListItem Selected="False">Computer Science</asp:ListItem>
                    <asp:ListItem Selected="False">Management Science</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width:30%">
                <asp:DropDownList ID="desiglist" runat="server" CssClass="form-control" style="width:200px; height:34px; margin:0 auto;" AutoPostBack="false">
                    <asp:ListItem Selected="False">Lecturer</asp:ListItem>
                    <asp:ListItem Selected="False">Assitant Professor</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width:30%">
                <asp:Button ID="btnissueitems" Text="IssueItems" runat="server" style="background-color: #36b9cc;border-radius:4px; color:white; width:120px; height:34px; font-size:20px; font-weight:normal; border:1px solid white" />
            </td>
        </tr>
    </table>
        <table id="example" class="table table-hover" style="width:100%;text-align:center">
                <thead>
               <tr style="height:45px;font-weight:bold;font-size:16px;background-color: #4e73df;color:white">
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
                            <a href="viewemployeeassets.aspx">
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
                            <a href="viewemployeeassets.aspx">
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
                            <a href="viewemployeeassets.aspx">
                                <i class="fa fa-eye" style="font-size:16px"></i>
                                &nbsp; &nbsp; &nbsp; &nbsp; View
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Muhammad Shoiab</td>
                        <td>Humanities</td>
                        <td>Assitant Professor</td>
                        <td>
                            <a href="viewemployeeassets.aspx">
                                <i class="fa fa-eye" style="font-size:16px"></i>
                                &nbsp; &nbsp; &nbsp; &nbsp; View
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Muhammad Asraf</td>
                        <td>Managnment Science</td>
                        <td>Assitant Professor</td>
                        <td>
                            <a href="viewemployeeassets.aspx">
                                <i class="fa fa-eye" style="font-size:16px"></i>
                                &nbsp; &nbsp; &nbsp; &nbsp; View
                            </a>
                        </td>
                    </tr>
                    </tbody>
                   </table>
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
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
                ]
            });
        });
    </script>
</asp:Content>
