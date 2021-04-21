<%@ Page Title="" Language="C#" MasterPageFile="~/HOD.Master" AutoEventWireup="true" CodeBehind="facultyprofile.aspx.cs" Inherits="COMSATS_store.Faulty.facultyprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <table style="width:80%; margin-left:10%; margin-right:10%">
        <tr>
            <td style="text-align:center; font-size:1.4rem;font-weight:bold; width:40%" id="imgdiv" runat="server">
                <span>
                    <a href="#" style="color:#858796; font-size:14px">
                        <i class="fa fa-edit"></i>
                        &nbsp; &nbsp; &nbsp;Edit Profile
                    </a>
                </span>
                <img src="../images/1.png" class="img-profile rounded-circle" style="width:17rem; height:17rem"/>
                <br /><br />
                <span>Aima</span>
                <br />
                <span style="font-weight:normal">Lecturer</span><br />
                <span style="font-weight:normal">Department of Computer Science</span>
            </td>
            <td style="width:60%; padding-left:10%">
                <table style="width:400px;text-align:left; margin-top:15px">
                    <tr style="height:50px">
                        <td style="font-size:16px">Phone</td>
                        <td><input type="number" id="cell" runat="server" class="form-control" style="width:236px; height:34px" value="03321111111" readonly /></td>
                    </tr>
                    <tr style="height:50px">
                        <td style="font-size:16px">Gender</td>
                        <td><input type="text" id="gen" runat="server" class="form-control" style="width:236px; height:34px" value="Female" readonly /></td>
                    </tr>
                    <tr style="height:50px">
                        <td style="font-size:16px">Employee ID</td>
                        <td><input type="text" id="empID" runat="server" class="form-control" style="width:236px; height:34px" value="CIIT/VHR/VE-300"  /></td>
                    </tr>
                    <tr style="height:50px">
                        <td style="font-size:16px">Email</td>
                        <td><input type="text" id="email" runat="server" class="form-control" style="width:236px; height:34px" value="aimak2340@gmail.com" readonly /></td>
                    </tr>
                    <tr style="height:50px">
                        <td style="font-size:16px">Office Location</td>
                        <td><textarea type="text" id="location" runat="server" class="form-control" style="width:236px; height:34px; resize:none" readonly /></td>
                    </tr>
                    <tr style="height:50px">
                        <td style="font-size:16px">Account</td>
                        <td><input type="text" id="role" runat="server" class="form-control" style="width:236px; height:34px" value="Admin" readonly /></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
</asp:Content>
