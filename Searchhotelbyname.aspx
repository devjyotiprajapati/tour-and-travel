<%@ Page Title="" Language="C#" MasterPageFile="~/HotelMaster.master" AutoEventWireup="true" CodeFile="Searchhotelbyname.aspx.cs" Inherits="Searchhotelbyname" %>

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
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  class="container-fluid box ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12">
                 <img src="Images/search4.png" class="rounded float-left img" alt="..." height="500" width="300"/>
            </div>
            <div class="col-md-6 col-ms-4 col-xs-12 body">
                <h2>Search Hotel By name</h2>
                <div class="form-group">

                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td>Hotel Name</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Search" Class="btn btn-success" />
                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="form-group">

                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Hid" HeaderText="Hotel ID" />
                                        <asp:BoundField DataField="Hname" HeaderText="Hotel name" />
                                        <asp:BoundField DataField="Haddress" HeaderText="Hotel Address" />
                                        <asp:BoundField DataField="Hcontectno" HeaderText="Hotel Contect no" />
                                        <asp:BoundField DataField="Hemail" HeaderText="Hotel Email" />
                                    </Columns>
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                </asp:GridView>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </div>
            </div>
            <div class="col-md-2 col-ms-4 col-xs-12">
                <img src="Images/Hotel1.jpg" class="rounded float-right img" alt="..." height="500" width="150"/>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

