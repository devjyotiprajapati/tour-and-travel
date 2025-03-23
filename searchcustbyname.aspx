<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.master" AutoEventWireup="true" CodeFile="searchcustbyname.aspx.cs" Inherits="searchcustbyname" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
     <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        
        h1 {
            color:blue;
            text-align:center;
            font-weight:bolder;
        } .body {
             background-color:blue;
             border:2px solid black;
             margin-top:20px;
            margin-bottom:20px;
            color:white;
       
        }
        .box {
            background-color:aqua;
            color:white;
             }
       .img {
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
             
        
        .auto-style7 {
            width: 100%;
        }
       
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid body"> 
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12" >
                 <img src="Images/Customer1.jpg" class="rounded float-left img" alt="..." height="400" width="300"/>
            </div>
            <div class="col-md-8 col-ms-4 col-xs-12 box" >
                <h2>Serch customer by Name

                </h2>
                <div class="form-group">
                   <table class="auto-style7">
                    <tr>
                        <td>&nbsp;</td>
                        <td>Enter Customer Name</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Search" Class="btn btn-primary" OnClick="Button1_Click" />
                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" ></asp:Label>
                        </td>
                    </tr>
                </table>
                    </div>
                <div class="form-group">

                    <table class="auto-style7">
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Class="form-control">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Custid" HeaderText="Customer ID" />
                                        <asp:BoundField DataField="Custname" HeaderText="Customer Name" />
                                        <asp:BoundField DataField="Custadd" HeaderText="Customer Address" />
                                        <asp:BoundField DataField="Custgender" HeaderText="Gender" />
                                        <asp:BoundField DataField="Custdob" HeaderText="Date of Birth" />
                                        <asp:BoundField DataField="Custemail" HeaderText="Email ID" />
                                        <asp:BoundField DataField="Custmobile" HeaderText="Contect Number" />
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </div>
             </div>
                    </div>         
       </div> 
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

