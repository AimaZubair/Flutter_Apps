<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="database.aspx.cs" Inherits="COMSATS_store.items.database" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .firmbox{
            width:50%;
            height:300px;
            left:36%;
            top:20%;
            position:absolute;
            border-radius:20px;
        }
        .heading{
            background-color:#4e73df;
            color:white;
            padding-left:20px;
            padding-top:20px;
            font-weight:bold;
            height:50px;
            padding-bottom:40px
        }
        .fcol{
            width:40%;
            background-color:#1cc88a;
            color:white;
            font-weight:bold;
            font-size:16px;
        }
        .scol{
            width:60%;
        }
        .btnsave{
            background-color:#36b9cc;
            color:white;width:120px;
            height:40px;
            font-size:20px;
            font-weight:normal;
            border:1px solid white;
            border-radius:4px;
        }
        table{
            border-collapse:collapse;
        }
        table tr td{
            border: 1px solid #d9d9d9;
            padding-left:35px;
        }
        .form-control{
            border-radius:0px;
        }
        .page-alter{
            margin-bottom:20px;
        }
        .page-alter .page-alter
           {
               border-radius:0px;
               margin-bottom:0px;
           }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <form id="form1" runat="server">
    <div class="firmbox">
        <div id="altermsg" runat="server"></div>
        <div class="heading">
            <li class="fa fa-database" style="font-weight:bold;font-size:20px;"></li>&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="font-weight:bold;font-size:20px">ADD TO DATABASE</span>
        </div>
             <table style="width:100%;text-align:left">
                 <tr style="height:60px">
                     <td class="fcol"></td>
                     <td class="scol"><asp:DropDownList ID="ddtype" Cssclass="form-control" runat="server" autopostback="true" style="width:270px;height:34px" OnSelectedIndexChanged="ddtype_SelectedIndexChanged">
                         <asp:ListItem>Add Item Category</asp:ListItem>
                           <asp:ListItem>Add Item Type</asp:ListItem>
                           <asp:ListItem>Add Department</asp:ListItem>
                           <asp:ListItem>Add Designation</asp:ListItem>
                     </asp:DropDownList></td>
                 </tr>
                 <tr style="height:60px;display:none" id="categoryRow" runat="server">
                     <td class="fcol" id="Td1" runat="server">
                         Select Item Category
                     </td>
                     <td class="scol">
                    <asp:DropDownList ID="ddlcategory" Cssclass="form-control" runat="server" autopostback="false" style="width:270px;height:34px">

                        </asp:DropDownList>
                     </td>
                 </tr>
                  <tr style="height:60px">
                     <td class="fcol" id="lblname" runat="server">
                         Add New Item
                     </td>
                     <td class="scol">
                         <input type="text" class="form-control" style="width:270px;height:34px" id="itemname" runat="server" required />
                     </td>
                 </tr>
            </table>
        <div style="width:100%;height:70px;text-align:center;margin-top:20px; "> 
            <asp:Button id="btnenter" runat="server" text="Save" CssClass="btnsave"  OnClick="btnenter_Click"/>
        </div>
    </div>
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
</asp:Content>
