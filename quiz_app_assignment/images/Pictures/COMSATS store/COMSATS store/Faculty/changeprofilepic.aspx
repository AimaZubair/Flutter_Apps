<%@ Page Title="" Language="C#" MasterPageFile="~/HOD.Master" AutoEventWireup="true" CodeBehind="changeprofilepic.aspx.cs" Inherits="COMSATS_store.Faculty.changeprofilepic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../stdfiles/jquery.min.js"></script>
    <script src="../stdfiles/changepicture.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <form  id="form1" runat="server">
    <table style="width:100%; height:77px" class="outertable">
        <tr style=" height:50px">
            <td style="width:50%">
                <div style="width:80%; background-color:white; padding:2%; border:1px solid rgb(221,221,221);">
                            <img src="../images/no_img.jpg" id="img-upload" style="width:100%;height:460px" alt="Preview Image" />
                        </div>
            </td>
            <td style="width:50%">
                <div id="errormsg" runat="server"></div>
                <div>
                    <asp:FileUpload ID="imgInp" runat="server" CssClass="form-control" style="width:90%" readonly />
                <br />
                    <asp:Button ID="btnupload" runat="server" Text="Upload Picture" style="width:200px; font-weight:bold; font-size: 20px; height:45px; color:white; background-color:#36b9cc; border-radius:4px; border:1px solid white" />
                </div>
            </td>
        </tr>
    </table>
</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
</asp:Content>
