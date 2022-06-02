<%@ Page Language="C#" AutoEventWireup="true" CodeFile="otp_check.aspx.cs" Inherits="otp_check" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .t1{
            border-radius:30px;
            outline:none;
             border-style:hidden;
        }
      
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 276px">
    <div class="d1" style="height: 134px; background-color: #6699FF;">

        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center; font-style: oblique; font-variant: inherit; font-size: x-large; font-weight: 300; vertical-align: middle;">&nbsp;&nbsp;&nbsp; Enter OTP</td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="t1" Width="317px" Height="24px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:Button ID="Button1" runat="server" CssClass="t1" OnClick="Button1_Click" Text="Submit" Height="29px" Width="94px" />
                </td>
            </tr>
        </table>

    </div>
    </div>
    </form>
</body>
</html>
