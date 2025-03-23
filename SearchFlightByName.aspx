<%@ Page Title="" Language="C#" MasterPageFile="~/FlightMaster.master" AutoEventWireup="true" CodeFile="SearchFlightByName.aspx.cs" Inherits="SearchFlightByName" %>

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
                 <img src="Images/search.png" class="rounded float-left img" alt="..." height="400" width="300"/>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <h1>Search Flight By Name </h1>
                 <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td>Enter Flight Name</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server"  Text="Search" Class="btn btn-primary" OnClick="Button1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
               
                     
                
            <div>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                                    <Columns>
                                        <asp:BoundField DataField="Flightno" HeaderText="Flight ID" />
                                        <asp:BoundField DataField="Startcity" HeaderText="Start Station" />
                                        <asp:BoundField DataField="Lastcity" HeaderText="Last station" />
                                        <asp:BoundField DataField="Dayofruning" HeaderText="Day of runing" />
                                    </Columns>
                                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" ForeColor="#003399" />
                                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                    <SortedDescendingHeaderStyle BackColor="#002876" />
                                </asp:GridView>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
               </div>
               


            </div>
             <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Images/Flight.jpg" class="rounded float-right img" alt="..." height="400" width="300"/>
            </div>
            
            
            
             </div>
           
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

