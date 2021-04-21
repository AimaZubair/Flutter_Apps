<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddNewFirm.aspx.cs" Inherits="COMSATS_store.items.AddNewItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css" >
        .datacontent_mainbox{
            width:50%;
            height:550px;
            position:fixed;
            top:13%;
            left:37%;
            border-radius:20px;
        }
        table{
            border-collapse:collapse;
        }
        table tr td{
            border:1px solid #d9d9d9;
            padding-left:35px;
        }
        .form-control{
            border-radius:0px;
        }
        button{
            margin-bottom:3px;
        }
        .page-alerts{
            margin-bottom:20px;
        }
        .page-alerts .page-alerts{
            border-radius:0;
            margin-bottom:0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <form runat="server" id="addfirm">
    <div class="mainbox" style="width:60%; margin-left:20%; margin-right:20%; position:relative">
        <div id="altermsg" runat="server"></div>
        <div style="background-color:#4e73df;height:50px;padding-left:20px;color:white;margin-top:20px;padding-top:10px">
            <li class="fa fa-briefcase" style="font-size:20px;font-weight:bold"></li>&nbsp;&nbsp;&nbsp;<span style="font-size:20px;font-weight:bold">ADD NEW FIRM</span>
        </div>
        <table style="width:100%;text-align:left">
            <tr style="height:60px">
            <td style="width:40%; font-weight:bold; font-size:16px; background-color:#1cc88a; color:white">Firm Name<span style="font-weight:bold; color:red; padding-left:5px; font-size:15px">*</span></td>
            <td style="width:60%"><input id="firmname" class="form-control" runat="server" style="width:280px; height:40px" required/></td>
             </tr>
             <tr style="height:60px">
            <td style="width:40%; font-weight:bold; font-size:16px; background-color:#1cc88a;color:white ">Email<span style="font-weight:bold; color:red; padding-left:5px; font-size:15px">*</span></td>
            <td style="width:60%"><input type="email" name="email" id="firmemail" class="form-control" runat="server" style="width:280px;height:40px" required/></td>
             </tr>
             <tr style="height:60px">
            <td style="width:40%; font-weight:bold; font-size:16px; background-color:#1cc88a; color:white ">Phone Number<span style="font-weight:bold; color:red; padding-left:5px; font-size:15px">*</span></td>
            <td style="width:60%"><input id="phone" class="form-control" runat="server" style="width:280px; height:40px" type=" tel" pattern="^/{11}$" placeholder="03331111000" required=""/></td>
             </tr>
             <tr style="height:60px">
            <td style="width:40%; font-weight:bold; font-size:16px; background-color:#1cc88a; color:white ">CNIC/NTN<span style="font-weight:bold; color:red; padding-left:5px; font-size:15px">*</span></td>
            <td style="width:60%"><input id="ntn" class="form-control" runat="server" style="width:280px; height:40px"/></td>
             </tr>
            <tr style="height:60px">
            <td style="width:40%; font-weight:bold; font-size:16px; background-color:#1cc88a; color:white; ">Firm GST<span style="font-weight:bold; color:red; padding-left:5px; font-size:15px">*</span></td>
            <td style="width:60%"><input id="gst" class="form-control" runat="server" style="width:280px; height:40px;"/></td>
             </tr>
            <tr style="height:110px">
            <td style="width:40%; font-weight:bold; font-size:16px; background-color:#1cc88a; color:white">Address<span style="font-weight:bold; color:red; padding-left:5px; font-size:15px">*</span></td>
            <td style="width:60%"><input id="firmaddress" class="form-control" runat="server" style="width:280px; height:85px"/></td>
             </tr>
        </table>
        <div style="width:100%; text-align:center; height:50px; margin-top:15px">
            <asp:Button ID="btnenter" runat="server" Text="Add Firm" style="background-color:#36b9cc; color:white; width:120px; height:40px; font-size:20px; font-weight:normal; border:1px solid white; border-radius:4px " />
        </div>
    </div>
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
<script type="text/javascript">
    function closefunction() {
        $('#alertmsgbox').slideUp();
    }
</script>
</asp:Content>
