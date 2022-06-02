<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order_shasn001.aspx.cs" Inherits="order_shasn001" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <title></title>
    <style type="text/css">
        #suddiv1 {
            height: 343px;
        }
        .auto-style1 {
            width: 103%;
            height: 51px;
        }
        .auto-style5 {
            width: 549px;
        }
        .auto-style6 {
            width: 103%;
        }
        .auto-style7 {
            width: 503px;
            text-align: center;
        }
        .auto-style8 {
            width: 503px;
            text-align: center;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
        .auto-style10 {
            width: 100%;
            height: 447px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style14 {
            text-align: center;
            height: 30px;
        }
        .b1{
            border-radius:30px;
            width:100px;
            height: 40px;
            outline: none;
        }
        .auto-style17 {
            text-align: center;
            height: 51px;
        }
        .auto-style18 {
            height: 51px;
        }
        .auto-style19 {
            text-align: center;
            height: 94px;
        }
        .auto-style20 {
            height: 94px;
        }
        .auto-style21 {
            text-align: center;
            height: 40px;
        }
        .auto-style22 {
            height: 61px;
        }
        .auto-style23 {
            text-align: center;
            height: 61px;
        }
        .auto-style24 {
            text-align: center;
            height: 34px;
        }
        .auto-style26 {
            text-align: center;
            height: 35px;
        }
        .auto-style27 {
            text-align: center;
            height: 57px;
        }
        .auto-style28 {
            height: 57px;
        }
        .auto-style29 {
            width: 100%;
        }
        .auto-style30 {
            height: 28px;
        }
    </style>
</head>
<body style="height: 1115px">
    <form id="form1" runat="server">
    <div style="height: 1067px">
        <table class="auto-style1" style="background-color: #006600; background-image: url('photo/LOGO.png')">
            <tr>
                <td style="background-repeat: no-repeat; background-position: center; background-color: #006600; background-image: url('photo/LOGO.png');">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center;" class="auto-style26">
                        &nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center;" class="auto-style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" class="auto-style24">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Font-Names="times in noman">LIFELINE MEDICINE CENTER</asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" class="auto-style5">
                        &nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#990000">CONTACT NO-</asp:Label>
                    &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="True">7001288769</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" class="auto-style26">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#000099">VIVEKANANDA PALLY WEST ISMILE NEAR P. H. E. WATER TANK</asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#0066CC">KOLKATA</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" class="auto-style21" colspan="2">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red">E-mail-</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#CC3300" Text="	lifelinemedi@gmail.com"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#0066CC" Visible="False">SH_ASN_001</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center;">
                        &nbsp;</td>
                </tr>
                </table>
    
        <table class="auto-style6">
            <tr>
                <td class="auto-style8" style="background-color: #FFFF99">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#990000" Text="ORDER ID"></asp:Label>
                </td>
                <td class="auto-style9" style="background-color: #FFFF00">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#990000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="background-color: #FFFF99">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#990000" Text="ORDER DATE"></asp:Label>
                </td>
                <td style="text-align: left; background-color: #FFFF00;">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#990000" style="text-align: left"></asp:Label>
                </td>
            </tr>
        </table>
    
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="224px" ShowFooter="True" Width="1492px">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="SNO" />
                <asp:BoundField DataField="product_id" HeaderText="PRODUCT ID" />
                <asp:BoundField DataField="product_name" HeaderText="PRODUCT NAME" />
                <asp:ImageField DataImageUrlField="image" HeaderText="PRODUCT IMAGE">
                </asp:ImageField>
                <asp:BoundField DataField="price" HeaderText="PRICE" />
                <asp:BoundField DataField="qty" HeaderText="QUANTITY" />
                <asp:BoundField DataField="totalprice" HeaderText="TOTAL PRICE" />
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
        <table class="auto-style29">
            <tr>
                <td class="auto-style30" style="text-align: center">
                    <asp:Button ID="Button2" runat="server" BackColor="#FFFFCC" CssClass="b1" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#CC6600" Text="Go to Cart" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style10">
            <tr>
                <td class="auto-style14" style="text-align: center; background-color: #CCFFCC;">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#003399" Text="E-mail ID"></asp:Label>
                </td>
                <td style="background-color: #FFFF00" class="auto-style9">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#990000" style="text-align: left"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#990000" style="text-align: left"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="text-align: center; background-color: #CCFFCC;">
                    <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#003399" Text="ORDER BY"></asp:Label>
                </td>
                <td style="background-color: #FFFF00">
                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#990000" style="text-align: left"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" style="background-color: #FFFF99">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#006666" Text="ADDRESS"></asp:Label>
                </td>
                <td style="background-color: #FFFFFF" class="auto-style20">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="583px" Height="63px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="background-color: #FFFF99">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#006666" Text="LANDMARK"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="311px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style23" style="background-color: #FFFF99">
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#006666" Text="CITY"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox3" runat="server" Height="35px" Width="311px"></asp:TextBox>
&nbsp;
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#990000" style="text-align: left" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style23" style="background-color: #FFFF99">
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#006666" Text="PIN CODE"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox4" runat="server" Height="22px" Width="311px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#FFFF99" CssClass="b1" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#009933" Height="53px" OnClick="Button1_Click" Text="PLACE ORDER" Width="251px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style27" style="background-color: #CCFFCC">
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#003399" Text="MOBILE NUMBER"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="311px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="background-color: #FFFFFF">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
    
    </div>
    </form>
</body>

</html>
