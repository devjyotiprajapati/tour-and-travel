<%@ Page Title="" Language="C#" MasterPageFile="~/TrainMaster.master" AutoEventWireup="true" CodeFile="SearchTrainByname.aspx.cs" Inherits="SearchTrain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style type="text/css">
        .body {
            background-color: blue;
            margin-top: 20px;
            margin-bottom: 20px;
            border: 2px solid black;
            color: white;
            padding: 20px,20px;
        }

        h1 {
            text-align: center;
        }

        .box {
            background-color: aqua;
        }

        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 256px;
        }

        .auto-style3 {
            width: 147px;
        }

        .auto-style4 {
            width: 211px;
        }

        .bg {
            margin-right: auto;
        }

        .img {
            margin-top: 20px;
            margin-bottom: 20px;
            border: 2px solid black;
            
        }
        .auto-style5 {
            width: 258px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid box ">
        <div class="row">
                      
            <div class="col-md-12 col-ms- col-xs-12 body">
                <h1>Search Train By Name </h1>
                <div class="form-group">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style2">Enter Train Name</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Search"  class="btn btn-primary" OnClick="Button1_Click" />
                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </div>
                <div class="form-group">

                    <table class="auto-style1 bg ">
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="686px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Trainno" HeaderText="Train No" />
                                        <asp:BoundField DataField="Trainname" HeaderText="Train name" />
                                        <asp:BoundField DataField="Startstation" HeaderText="Start station" />
                                        <asp:BoundField DataField="Laststation" HeaderText="Last station" />
                                        <asp:BoundField DataField="Dayofruning" HeaderText="Day of runing" />
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
                        </tr>
                    </table>

                </div>
            </div>
           
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</asp:Content>

