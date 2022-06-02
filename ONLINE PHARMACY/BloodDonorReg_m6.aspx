<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage6.master" AutoEventWireup="true" CodeFile="BloodDonorReg_m6.aspx.cs" Inherits="BloodDonorReg_m6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #subdiv{
            margin: 100px 100px 100px 577px;
            width: 623px;
            height: 510px;
            background-color:#ddd3ee;
            border-radius: 30px;
        }
        .auto-style16 {
            width: 130px;
        }
        .auto-style17 {
        }
        .auto-style18 {
            height: 5px;
        }
        .auto-style19 {
            width: 130px;
            height: 42px;
        }
        .auto-style20 {
            height: 42px;
        }
        .auto-style21 {
            width: 130px;
            height: 23px;
        }
        .auto-style22 {
            height: 23px;
        }
        .textbox{
            border-radius:20px;
            outline:none;
            padding-left:15px;
            padding-right:5px;
        }
        .b1{
            border-radius:30px;
            outline:none;
        }
        .auto-style23 {
            width: 130px;
            height: 71px;
        }
        .auto-style24 {
            height: 71px;
        }
        .ig1{
            border-radius:30px;
            outline:none;
        }
        .auto-style25 {
            width: 130px;
            height: 35px;
        }
        .auto-style26 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="maindiv" style="background-position: left bottom; height: 628px; background-image: url('photo/Blood-banks-i2tutorials.jpg'); background-repeat: no-repeat; background-position:inherit;">
        <div id="subdiv">

            <table class="auto-style6">
                <tr>
                    <td class="auto-style23"></td>
                    <td class="auto-style24" style="text-align: center">
                        <asp:Image ID="Image1" CssClass="ig1" runat="server" Height="73px" ImageUrl="~/photo/register_button.png" Width="79px" />
                    </td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17" style="text-align: center">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19" style="font-size: large; text-align: right">Email</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" Height="25px" Width="315px"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25" style="font-size: large; text-align: right">Name</td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox" Height="25px" Width="315px"></asp:TextBox>
                    </td>
                    <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style22"></td>
                </tr>
                <tr>
                    <td class="auto-style21" style="text-align: right">Phone Number</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox" Height="25px" Width="315px"></asp:TextBox>
                    </td>
                    <td class="auto-style22"><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="enter phone number" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style22" colspan="2" style="text-align: right">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="enter 10 digit contact number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" style="font-size: large; text-align: right">Blood Group</td>
                    <td class="auto-style17">
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red">
                            <asp:ListItem>A+</asp:ListItem>
                            <asp:ListItem>A-</asp:ListItem>
                            <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>B-</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            <asp:ListItem>AB-</asp:ListItem>
                            <asp:ListItem>O+</asp:ListItem>
                            <asp:ListItem>O-</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18" colspan="3" style="text-align: right">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16" style="text-align: right; font-size: large;">Enter Image</td>
                    <td class="auto-style17">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17" style="text-align: center">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" CssClass="b1" runat="server" Height="32px" Text="Signup" Width="105px" BackColor="CornflowerBlue" OnClick="Button1_Click" />
                    &nbsp;
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

