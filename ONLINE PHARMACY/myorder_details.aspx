<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myorder_details.aspx.cs" Inherits="myorder_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 73px;
        }
        .auto-style2 {
            width: 100%;
            height: 32px;
        }
        .auto-style3 {
            width: 330px;
            text-align: center;
        }
        .auto-style4 {
            width: 100%;
        }
        .b1{
            border-radius:30px;
            width:100px;
            height: 40px;
            outline: none;
        }
    </style>
</head>
<body style="height: 1081px">
    <form id="form1" runat="server">
    <div style="height: 1024px">
    
        <table class="auto-style1">
            <tr>
                <td style="background-color: #006600; background-image: url('photo/LOGO.png'); background-repeat: no-repeat; background-position: center">&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3" style="background-color: #FFFF99">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#993300" Text="ORDER ID"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#993300"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="36px" Text="HOME" Width="121px" CssClass="b1" BackColor="#FFFFCC" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#003300" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="37px" Text="MY PROFILE" Width="142px" CssClass="b1" BackColor="#FFFFCC" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#003300" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT [sno], [product_id], [product_name], [price], [qty] FROM [myorder_detail] WHERE ([order_id] = @order_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label2" Name="order_id" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Height="223px" Width="1492px">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.NO" SortExpression="sno" />
                <asp:BoundField DataField="product_id" HeaderText="PRODUCT_ID" SortExpression="product_id" />
                <asp:BoundField DataField="product_name" HeaderText="PRODUCT NAME" SortExpression="product_name" />
                <asp:BoundField DataField="price" HeaderText="PRICE" SortExpression="price" />
                <asp:BoundField DataField="qty" HeaderText="QUANTITY" SortExpression="qty" />
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
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT [shop_id], [shop_name], [address], [city], [email_id], [contact_no], [pagelink] FROM [shop_details] WHERE ([shop_id] = @shop_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label3" Name="shop_id" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <table class="auto-style4">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#993300">ORDERED FROM</asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="shop_id" DataSourceID="SqlDataSource2" ForeColor="Black" Height="201px" Width="1492px">
            <Columns>
                <asp:BoundField DataField="shop_id" HeaderText="SHOP ID" ReadOnly="True" SortExpression="shop_id" />
                <asp:BoundField DataField="shop_name" HeaderText="SHOP NAME" SortExpression="shop_name" />
                <asp:BoundField DataField="address" HeaderText="ADDRESS" SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="CITY" SortExpression="city" />
                <asp:BoundField DataField="email_id" HeaderText="EMAIL ID" SortExpression="email_id" />
                <asp:BoundField DataField="contact_no" HeaderText="CONTACT NO" SortExpression="contact_no" />
                <asp:HyperLinkField DataNavigateUrlFields="pagelink" HeaderText="ORDER AGAIN" Text="CLICK HERE" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
