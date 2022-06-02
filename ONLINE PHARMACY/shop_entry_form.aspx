<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shop_entry_form.aspx.cs" Inherits="shop_entry_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 495px;
        }
        .auto-style2 {
            width: 220px;
        }
        .auto-style3 {
            width: 307px;
        }
        .auto-style4 {
            width: 478px;
        }
    </style>
</head>
<body style="height: 580px">
    <form id="form1" runat="server">
    <div style="height: 576px">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3" style="font-family: &quot;Times New Roman&quot;, Times, serif; background-color: #66FF33;">SHOP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ENTRY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FORM</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">ENTER SHOP ID</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Width="466px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">ENTER SHOP NAME</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" Width="466px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">ENTER REGISTRATION NUMBER</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" Width="466px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">ADDRESS</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server" Height="82px" Width="466px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">CITY</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server" Width="466px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">EMAIL ID</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox6" runat="server" Width="466px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">CONTACT NUMBER</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox7" runat="server" Width="466px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">ENTER PAGELINK</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox8" runat="server" Width="466px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click" Text="SUBMIT FORM" Width="152px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
