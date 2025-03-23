<%@ Page Title="" Language="C#" MasterPageFile="~/HotelMaster.master" AutoEventWireup="true" CodeFile="searchHotelByid.aspx.cs" Inherits="searchHotel" %>

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
            width: 100%;
        }
        .img {
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
       
        .auto-style3 {
        width: 259px;
    }
        .auto-style4 {
            width: 247px;
        }
       
        .auto-style5 {
        width: 236px;
    }
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  class="container-fluid box ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12">
                 <img src="Images/search2.png" class="rounded float-left img" alt="..." height="500" width="300"/>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <h1>Search Hotel by Hotel ID </h1>
                <form>
                    <div class="form-group">
                      
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style4"><center>Enter Hotel ID</center></td>
                                <td class="auto-style3"> <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Hotel id" Width="212px" style="margin-left: 0px"></asp:TextBox> </td>
                                <td> <asp:Button ID="Button1" runat="server" Text="Search" Class="btn btn-primary" OnClick="Button1_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style3">
                       <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                      
                  </div>
                    <div class="form-group">                                                                   
                        <table class="auto-style1">
                            <tr>
                                <td>&nbsp;</td>
                                <td rowspan="7">
                                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                                        <table class="auto-style1">
                                            <tr>
                                                <td>Hotel Name</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Hotel Address</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Hotel Contect No</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Hotel Email</td>
                                                <td>
                                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                       
                      
                       
                   </div>
               </form>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/Hotel.jpg" class="rounded float-right img" alt="..." height="500" width="300"/>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

