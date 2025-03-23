<%@ Page Title="" Language="C#" MasterPageFile="~/FlightMaster.master" AutoEventWireup="true" CodeFile="SearchFlightByNumber.aspx.cs" Inherits="SearchFlight" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .body {
            background-color:violet;
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
            width: 82%;
        }
        .img {
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
       

        .auto-style2 {
            width: 159px;
        }
        .auto-style3 {
            width: 136px;
        }
        .auto-style4 {
            font-family: "Segoe UI";
            font-style: italic;
        }
        .auto-style5 {
        border-left-style: solid;
        border-left-width: 0;
        border-right-style: solid;
        border-right-width: 0;
        border-top-style: solid;
        border-top-width: 0;
        border-bottom-style: solid;
        background-color: #FFFFFF;
    }
        .auto-style6 {
        font-family: "Segoe UI";
        font-style: italic;
        border-left-style: solid;
        border-left-width: 0;
        border-right-style: solid;
        border-right-width: 0;
        border-top-style: solid;
        border-top-width: 0;
        border-bottom-style: solid;
        background-color: #FFFFFF;
    }
       

        .auto-style7 {
            width: 159px;
            color: #0000CC;
        }
       

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  class="container-fluid box ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12">
                 <img src="Images/search1.jpg" class="rounded float-left img" alt="..." height="500" width="300"/>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <h1>Search Flight By Number</h1>                                 
                    <div class="form-group">                       
                                               
                        <table class="auto-style1">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td class="auto-style7">Enter Flight No</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Width="136px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Flight No" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
                                <td class="auto-style2">
                                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" style="color: #0033CC"></asp:Label>
                                </td>
                                <td>
                                    <asp:Button ID="btn" runat="server" Text="Search"  class="btn-block btn-primary" OnClick="btn_Click" Width="94px" />
                                </td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
                                <td colspan="2" rowspan="11">
                                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                                        <table class="auto-style1">
                                            <tr>
                                                <td class="auto-style6">Flight Name</td>
                                                <td class="auto-style5">
                                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style6">Start Station</td>
                                                <td class="auto-style5">
                                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style6">Last Station</td>
                                                <td class="auto-style5">
                                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style4"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style6">Date Of Runing</td>
                                                <td class="auto-style5">
                                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style4"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                                <td class="auto-style3">
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                                               
                   </div>
             </div>
            <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/Flight4.jpg" class="rounded float-right img" alt="..." height="500" width="300">
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

