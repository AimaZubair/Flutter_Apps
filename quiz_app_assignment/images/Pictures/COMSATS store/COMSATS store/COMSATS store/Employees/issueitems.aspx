<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="issueitems.aspx.cs" Inherits="COMSATS_store.Employees.issueitems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .outertable{
            width:100%;
            background-color:#ecf0f5;
        }
        .outertable tr td{
            padding-left:17px;
        }
        .requesttable{
            width:100%;
        }
        .requesttable tr td{
            padding:5px;
        }
        .btnenter{
            background-color:transparent;
            text-decoration:underline;
            color:blue;
            width:50%;
            height:40px;
            font-size:20px;
            font-weight:normal;
            border:none;
            margin-left:37%;
        }
        .maintable{
            border-collapse:collapse;
            width:95%;
        }
        .maintable{
            border:1px solid #1cc88a;
        }
        .maintable tr td{
            border:1px solid #1cc88a;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <form id="form1" runat="server">
    <table id="employeeinfo" runat="server" style="width:96%; margin-left:2%; margin-top:3%; text-align:center">
        <tr>
            <td colspan="4">
                <div id="searchResult" runat="server"></div>
            </td>
        </tr>
        <tr>
            <td style="width:25%">
                <asp:DropDownList ID="deptlist" runat="server" CssClass="form-control" style="width:200px; height:34px" AutoPostBack="false">
                    <asp:ListItem Selected="False">Computer Science</asp:ListItem>
                    <asp:ListItem Selected="False">Management Science</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width:25%">
                <asp:DropDownList ID="desiglist" runat="server" CssClass="form-control" style="width:200px; height:34px" AutoPostBack="false">
                    <asp:ListItem Selected="False">Lecturer</asp:ListItem>
                    <asp:ListItem Selected="False">Assitant Professor</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width:25%">
                <asp:DropDownList ID="namelist" runat="server" CssClass="form-control" style="width:200px; height:34px" AutoPostBack="false">
                    <asp:ListItem Selected="False">AIM</asp:ListItem>
                    <asp:ListItem Selected="False">Zubair</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width:25%">
                <asp:Button ID="btnissueitems" Text="IssueItems" runat="server" style="background-color:#36b9cc; color:white; width:120px; height:34px; font-size:20px; font-weight:normal; border:1px solid white; border-radius:4px" />
            </td>
        </tr>
    </table>
        <table id="outertable" class="outertable" runat="server">
            <tr>
                <td>
                    <table id="requesttable" class="requesttable" runat="server">
                        <tr>
                            <td colspan="5"> 
                                <div id="alertmsg" runat="server"></div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="font-weight:bold; font-size:18px">
                                Generate Assets Request Form
                            </td>
                            <td colspan="2" style=" font-weight:bold; font-size:18px; text-align:right" id="totalquantity" runat="server">
                                Avaiable Quantity =30
                            </td>
                        </tr>
                        <tr>
                            <td style="width:17%">
                                <asp:DropDownList ID="firm" style="width:100%; height:34px" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td style="width:17%">
                                <asp:DropDownList ID="category" style="width:100%; height:34px" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td style="width:17%">
                                <asp:DropDownList ID="itemtype" style="width:100%; height:34px" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td style="width:16%">
                               <input type="number" min="1" id="Reqquantity" runat="server" style="width:100%; height:34px" placeholder="Required Quantity"/>
                            </td>
                             <td style="width:16%">
                               <input type="number" min="1" id="recquantity" runat="server" style="width:100%; height:34px" placeholder="Issued Quantity"/>
                            </td>

                             <td style="width:17%">
                                 <asp:button ID="btnsave" runat="server" Text="Enter" style="background-color:#36b9cc; color:white; width:120px; height:34px; font-size:20px; font-weight:normal; border:1px solid white; border-radius:4px" />
                             </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="alterbox" runat="server"></div>
                    <div id="maindiv" runat="server">
                        <table id="maintable" class="maintable">
                            <tbody>
                                <tr style="font-weight:bold; text-align:center;height:50px; color:white; background-color:#4e73df">
                                    <td class="first-td">Sr#</td>
                                    <td class="second-td" style="width:19%">Firm Name</td>
                                    <td class="second-td" style="width:19%">Item Category</td>
                                    <td class="second-td" style="width:19%">Item Type</td>
                                    <td class="last-td" style="width:19%">Quantity Required</td>
                                    <td class="last-td" style="width:19%">Quantity Issued</td>
                                </tr>
                                <tr style="text-align:center;height:35px">
                                     <td class="first-td">1</td>
                                    <td class="second-td" style="width:19%">Ali Enterprises</td>
                                    <td class="second-td" style="width:19%">Building material</td>
                                    <td class="second-td" style="width:19%">Doors</td>
                                    <td class="last-td" style="width:19%">1</td>
                                    <td class="last-td" style="width:19%">1</td>
                                </tr>
                                 <tr style="text-align:center;height:35px">
                                     <td class="first-td">2</td>
                                    <td class="second-td" style="width:19%">Ahmad Enterprises</td>
                                    <td class="second-td" style="width:19%">Computer</td>
                                    <td class="second-td" style="width:19%">RAM</td>
                                     <td class="last-td" style="width:19%">12</td>
                                    <td class="last-td" style="width:19%">1</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="fourth-row">
                    <table style="width:100%">
                        <tr>
                            <td style="width:40%; font-size:17px" id="uname" runat="server">
                                <span style="font-style:italic; line-height:35px; font-weight:bold">Aima </span>
                                <br />
                                    <span style="line-height:35px; font-weight:normal">Lecturer</span>
                                    <br />
                                    <span style="line-height:35px; font-weight:normal">Department of Computer Science</span>
                                    <br />
                                    <span style="line-height:35px; font-weight:normal">26-June-2020</span>
                               
                            </td>
                            <td style="width:60%;" id="hodrow" runat="server">
                                <div style="width:100%; text-align:left; margin-top:20px; height:130px">
                                    <span>
                                        Note(Optional)
                                    </span>
                                    <textarea rows="2" id="desc" runat="server" style="resize:none; width:85%; margin-right:15px"></textarea>
                                    <asp:Button ID="bntenter" CssClass="btnenter" Text="IssueItem" runat="server" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
    <script type="text/javascript">
        function closefunction(){
            $('#altermsgbox').slideUp();
        }
        function validataFeild() {
            if ($('#Reqquantity').val() == "") {
                $('#Reqquantity').css('border-color', 'red');
                return false;
            }
        }
    </script>
</asp:Content>
