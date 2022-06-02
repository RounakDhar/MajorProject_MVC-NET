<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shasn001_medientry.aspx.cs" Inherits="shasn001_medientry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 349px;
            text-align: center;
        }
        .auto-style3 {
            width: 869px;
        }
    </style>
</head>
<body style="height: 490px">
    <form id="form1" runat="server">
    <div style="height: 485px">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style3" style="text-align: center">PRODUCT ENTRY FORM</td>
            </tr>
            <tr>
                <td class="auto-style2">ENTER PRODUCT ID</td>
                <td class="auto-style3" style="text-align: left">
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" style="text-align: center" Width="312px"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">ENTER PRODUCT NAME</td>
                <td class="auto-style3">&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="312px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ENTER PRICE</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" Height="49px" Width="72px"></asp:TextBox>
&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">ENTER QUANTITY</td>
                <td class="auto-style3">&nbsp;<asp:TextBox ID="TextBox6" runat="server" Height="23px" Width="140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ENTER UNIT</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" Height="19px" Width="311px"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">IMAGE</td>
                <td class="auto-style3">&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Height="32px" Width="215px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ENTER PRODUCT DETAIS</td>
                <td class="auto-style3">&nbsp;<asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="312px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ENTER KEYWORD</td>
                <td class="auto-style3"><asp:TextBox ID="TextBox7" runat="server" Height="28px" Width="312px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ENTER PRODUCT TYPE</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>MEDICINE</asp:ListItem>
                        <asp:ListItem>HEALTHCARE</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" Text="SUBMIT" Width="105px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
