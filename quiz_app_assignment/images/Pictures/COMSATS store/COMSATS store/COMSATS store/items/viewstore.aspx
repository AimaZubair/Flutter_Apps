<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="viewstore.aspx.cs" Inherits="COMSATS_store.items.viewstore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="../stdfiles/dataTable.css" rel="stylesheet" />
    <style type="text/css">
    #example_wrapper{
            width:100%;
           padding:20px;
        }
        input[type="search"]{
            border:1px solid #e3e6f0;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <div id="mainviewbox" runat="server">
    <div id="viewbox" runat="server">
         <table id="example" class="table table-hover" style="width:100%;text-align:center">
                <thead>
                    <tr style="height:45px;font-weight:bold;font-size:16px;background-color:#4e73df;color:white">
                   <th style="width:5%;text-align:center">#</th>
                   <th style="width:12%;text-align:center">Firm Name</th>
                   <th style="width:17%;text-align:center">Category</th>
                   <th style="width:15%;text-align:center">Item Name</th>
                   <th style="width:20%;text-align:center">Quantity Avaiable</th>
                    </thead>
                <tbody id="myTable">
                    <tr>
                        <td>1</td>
                        <td>AI Enterprises</td>
                        <td>Copmuters</td>
                        <td>Hard Disk</td>
                        <td>HD454</td>
                    </tr>
                </tbody>
     
                    </table>
        </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
    <script src="../stdfiles/jquery.dataTables.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#example').dataTable({
            "columns": [
               { "width": "5%" },
               { "width": "12%" },
               { "width": "17%" },
               { "width": "15%" },
               { "width": "20%" }
            ]
        });
    });
</script>
</asp:Content>
