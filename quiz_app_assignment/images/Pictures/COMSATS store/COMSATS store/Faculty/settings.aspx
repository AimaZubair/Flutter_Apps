<%@ Page Title="" Language="C#" MasterPageFile="~/HOD.Master" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="COMSATS_store.Faculty.settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .outertable{
         width: 100%;
         height:530px;
         padding-left:17px;
}
        .innertable {
         width: 60%;
         margin-left: 20%;
         margin-right: 20%;
         font-weight: bold;
        }
        .innertable tr td{
         border:1px solid #ccc;
          padding:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
<form id="form1" runat="server">
     <table class="outertable">
        <tr>
            <td>
                <table class="innertable" id="changetable" runat="server">
                    <tr>
                        <td style="border:none" colspan="2">
                            <div id="errormsg" runat="server"></div>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:40% ">
                            Select Color
                            </td>
                        <td style="width:60% ">
                        <asp:DropDownList ID="ddlcolor" runat="server" style="width:200px; heigth:34px" CssClass="form-control">
                            <asp:ListItem  Selected="true">Default Color</asp:ListItem>
                             <asp:ListItem>Red</asp:ListItem>
                             <asp:ListItem>Green</asp:ListItem>
                             <asp:ListItem>Blue</asp:ListItem>
                             <asp:ListItem>Maroon</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center">
                            <asp:Button ID="btnenter" Text="Save" runat="server" style="font-weight:normal; font-size:20px; width:120px; height: 40px; background-color:#36b9cc; color:white; border:1px solid white; border-radius:4px"/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
</asp:Content>
