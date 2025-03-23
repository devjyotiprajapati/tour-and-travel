<%@ Page Title="" Language="C#" MasterPageFile="~/AfterLogin.master" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="Changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .box {
            background-color:white;
           margin:20px,20px;
           border:2px solid black;
           color:Black;
        }
        .body {
            background-color:silver;
        }
        h1 {
            color:white;
            text-align:center;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 265px;
        }
        .img {
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  class="container-fluid body ">
        
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Image ID="Image1" runat="server" Height="122px" ImageUrl="~/Images/change_password.png" Width="270px" />
                        </td>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td>
                                        <asp:Panel ID="Panel1" runat="server">
                                            <table class="auto-style1">
                                                <tr>
                                                    <td>Enter Current Password</td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>
                                                        <asp:Button ID="Button1" runat="server" class="btn btn-primary" OnClick="Button1_Click1" Text="Change" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td>
                                        <asp:Panel ID="Panel2" runat="server" Visible="False">
                                            <table class="auto-style1">
                                                <tr>
                                                    <td>Enter New Password</td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Confirm Password</td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password Not Match" ForeColor="Red"></asp:CompareValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>
                                                        <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="UpDate" OnClick="Button2_Click" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
     </div>
     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

