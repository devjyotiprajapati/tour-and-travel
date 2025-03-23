<%@ Page Title="" Language="C#" MasterPageFile="~/PackageMaster.master" AutoEventWireup="true" CodeFile="SearchPacakge.aspx.cs" Inherits="SearchPacakge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .body {
            background-color:blanchedalmond;
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
       

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div  class="container-fluid box ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12">
                 <img src="Images/search5.jpg" class="rounded float-left img" alt="..." height="400" width="300"/>
            </div>
                 <div class="col-md-4 col-ms-4 col-xs-12 body">
                     <h2>Search Package Id</h2>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                        <td>Enter Package No</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Search" Class="btn btn-primary" OnClick="Button1_Click" />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td colspan="2" rowspan="6">
                            <asp:Panel ID="Panel1" runat="server" Visible="False">
                                <table class="auto-style1">
                                    <tr>
                                        <td>Package Name</td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Validity</td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Discount</td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
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
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>             
            <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/Tour1.jpg" class="rounded float-right img" alt="..." height="400" width="300">
            </div>            
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

