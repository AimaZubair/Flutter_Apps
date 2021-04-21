<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="additem.aspx.cs" Inherits="COMSATS_store.items.additem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../stdfiles/itemcss.css" rel="stylesheet" />
    <style type="text/css">
       .receiptbox{
            width:32%;
            position:absolute;
        }
       table{
           border-collapse:collapse;
       }
       table tr td{
           border:1px solid #d9d9d9;
       }
       .receipt tr td{
           border:none;
           padding:0px;
       }
       .form-control{
           border-radius:0px;
       }
       .btn-file{
           position:relative;
           overflow:hidden;
       }
       .btn-file input[type=file]{
           position:absolute;
           top:0;
           right:0;
           min-height:100%;
           min-width:100%;
           font-size:100px;
           text-align:right;
           filter:alpha(opacity=0);
           opacity:0;
           outline:none;
           background:white;
           cursor:inherit;
           display:block;
       }
       #img-upload{
           width:100%;
       }
       .fcol{
           width:40%;
           font-size:16px;
           font-weight:bold;
           color:white;
           background-color:#1cc88a;
           padding-left:10px;
       }
       .scol{
           width:60%;
       }
       .itembox{
           width:45%;
           position:absolute;
           left:54.5%;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <form id="newitem" runat="server">
    <div class="receiptbox">
            <div style="background-color:#4e73df; height:50px; padding-left:20px; color:white; padding-top:10px; margin-top:20px;">
       <li class="fa fa-camera" style="font-size:20px; font-weight:bold"></li>&nbsp; &nbsp; &nbsp;<span style="font-size:20px; font-weight:bold">Upload Purchase Receipt</span>
             </div>
        <div style="width:100%">
            <table style="width:100%">
                <tr style="height:400px">
                    <td style="width:100%">
                        <div style="width:100%; background-color:white; padding:2%; border:1px solid rgb(221,221,221);">
                            <img src="../images/no_img.jpg" id="img-upload" style="width:100%;height:300px" alt="Preview Image"
                        </div>
                        <div class="input-group">
                            <span class="input-group-btn">
                            <span class="btn btn-default btn-file" style="background-color:#4e73df; color:white">
                                Browse.. <input type="file" id="imgInp" runat="server" />
                            </span>
                                </span>
                            <input type="text" class="form-control" style="width:60%" readonly />
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="itembox">
        <div id="errormsg" runat="server">
            <table style="width:100%; text-align:left; margin-top:30px">
                <tr>
                <td class="fcol">Purchase Date</td>
                <td class="scol">
                    <input id="datepicker" runat="server" style="width:270px; height:40px" required />
                </td>
                </tr>
                 <tr>
                <td class="fcol">Select Firm</td>
                <td class="scol">
                 <asp:DropDownList ID="firms" runat="server" class="form-form" style="width:270px; height:40px" required=""></asp:DropDownList>

                </td>
                </tr>
                 <tr>
                <td class="fcol">Select Item Category</td>
                <td class="scol">
                <asp:DropDownList ID="category" runat="server" class="form-form" style="width:270px;height:40px" required=""></asp:DropDownList>

                </td>
                </tr>
                 <tr>
                <td class="fcol">Select Item type</td>
                <td class="scol">
               <asp:DropDownList ID="itemtypes" runat="server" class="form-form" style="width:270px;height:40px" required=""></asp:DropDownList>

                </td>
                </tr>
                 <tr>
                <td class="fcol">Item Code</td>
                <td class="scol">
                     <input id="itemcode" runat="server" style="width:270px; height:40px" required />
                </td>
                </tr>
                 <tr>
                <td class="fcol">Item Price</td>
                <td class="scol">
                    <input id="itemprice"  type="number" min="1" runat="server" style=" width:270px; height:40px" required />
                </td>
                </tr>
                 <tr>
                <td class="fcol">Item Qunatity</td>
                <td class="scol">
                    <input id="itemqunatity"  type="number" min="1" runat="server" style="width:270px; height:40px" required />
                </td>
                </tr>
                 <tr>
                <td class="fcol">Description</td>
                <td class="scol">
                     <input id="description" runat="server" style="width:270px; height:50px" required />
                </td>
                </tr>
            </table>
            <div style="width:100%; text-align:center; height:70px; margin-top:10px">
                <asp:Button ID="itembtn" runat="server" Text="Add Item" style="background-color:#36b9cc; color:white; width:120px; height:40px; font-weight:normal; font-size:20px; border:1px solid white; border-radius:4px;" />

            </div>
        </div>
    </div>
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
    <script src="../stdfiles/datepicker.js"></script>
    <script src="../stdfiles/fileupload.js"></script>
    <script src="../stdfiles/script.js"></script>
</asp:Content>
