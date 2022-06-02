<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart_shasn001.aspx.cs" Inherits="cart_shasn001" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #suddiv1 {
            height: 343px;
        }
        .auto-style1 {
            width: 100%;
            height: 51px;
        }
        .auto-style3 {
            width: 101%;
            height: 56px;
        }
        .auto-style4 {
            width: 1087px;
            text-align: center;
        }
        .b1{
            border-radius:30px;
            width:100px;
            height: 40px;
            outline: none;
        }
    </style>
</head>
<body style="height: 946px">
    <form id="form1" runat="server">
    <div style="height: 942px">
        <table class="auto-style1" style="background-color: #006600; background-image: url('photo/LOGO.png')">
            <tr>
                <td style="background-repeat: no-repeat; background-position: center; background-color: #006600; background-image: url('photo/LOGO.png');">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center;" class="auto-style26">
                        &nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center;">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" class="auto-style24">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Font-Names="times in noman">LIFELINE MEDICINE CENTER</asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" class="auto-style25">
                        &nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#990000">CONTACT NO-</asp:Label>
                    &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="True">7001288769</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" class="auto-style26">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#000099">VIVEKANANDA PALLY WEST ISMILE NEAR P. H. E. WATER TANK</asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#0066CC">KOLKATA</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" class="auto-style21" colspan="2">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red">E-mail-</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#CC3300" Text="	lifelinemedi@gmail.com"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center;">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: left;" class="auto-style27">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#CC6600" Text="TOTAL NUMBER OF PROUCT IN CART"></asp:Label>
&nbsp;&nbsp; -
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#990000"></asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; text-align: center;" class="auto-style23">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" CssClass="b1" ForeColor="#990000" Height="45px" OnClick="Button1_Click" Text="ORDER MEDICINE" Width="217px" BackColor="#FFFF99" />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" BackColor="#FFFF99" Font-Bold="True" Font-Names="Times New Roman" CssClass="b1" Font-Size="Large" ForeColor="#003300" Height="45px" OnClick="Button4_Click" Text="HEALTHCARE PRODUCT" Width="300px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: left;" class="auto-style27">&nbsp;&nbsp;
&nbsp;&nbsp<asp:Label ID="Label12" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; text-align: right;" class="auto-style23">
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td colspan="2" style="font-family: 'Times New Roman', Times, serif; font-size: x-large">&nbsp;</td>
                </tr>
            </table>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="304px" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Width="1492px">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.NO" />
                <asp:BoundField DataField="product_id" HeaderText="PRODUCT ID" />
                <asp:BoundField DataField="product_name" HeaderText="PRODUCT NAME" />
                <asp:ImageField DataImageUrlField="image" HeaderText="PRODUCT IMAGE">
                </asp:ImageField>
                <asp:BoundField DataField="price" HeaderText="PRICE" />
                <asp:BoundField DataField="qty" HeaderText="QUANTITY" />
                <asp:BoundField DataField="totalprice" HeaderText="TOTAL PRICE" />
                <asp:CommandField DeleteText="REMOVE" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    
        <br />
        <br />
        <br />
        <table class="auto-style3">
            <tr>
                <td class="auto-style4" style="background-color: #FFFFCC">
                    <asp:Button ID="Button3" runat="server" BackColor="#FFFF99" CssClass="b1" BorderColor="#990000" BorderStyle="Groove" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" cssForeColor="#990000" Height="50px" Text="CHECKOUT" Width="207px" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
