<%@ Page Title="" Language="C#" MasterPageFile="~/Bus.master" AutoEventWireup="true" CodeFile="SearchBusByNumber.aspx.cs" Inherits="SearchBusByNumber" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .body {
            background-color:blueviolet;
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
        h1 {
            text-align:center;
        }
        .box {
            background-color:aqua;
        }

        .auto-style1 {
            width: 100%;
        }
        .img {
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
       

        .auto-style3 {
            width: 490px;
        }
        .auto-style6 {
            width: 512px;
        }
       

        .auto-style7 {
            width: 102px;
        }
       

        .auto-style8 {
            width: 246px;
        }
       

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div  class="container-fluid box ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12">
                  <img src="Images/search2.png" class="rounded float-left img" alt="..." height="400" width="300"/>
            </div>
                 <div class="col-md-4 col-ms-4 col-xs-12 body">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">Enter Bus Number</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="32px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Search" Class="btn btn-success" OnClick="Button1_Click1" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td colspan="2" rowspan="6">
                            <asp:Panel ID="Panel1" runat="server" Visible="False" style="border-style: none">
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style6">Bus name</td>
                                        <td class="auto-style3">
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">Start Station</td>
                                        <td class="auto-style3">
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">Last Station</td>
                                        <td class="auto-style3">
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">Day of Runing</td>
                                        <td class="auto-style3">
                                            <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>             
            <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/Bus5.jpg" class="rounded float-right img" alt="..." height="400" width="300">
            </div>        
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

