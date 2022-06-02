<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 66px;
        }
        .auto-style3 {
            width: 249px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            width: 249px;
            height: 51px;
        }
        .auto-style6 {
            height: 51px;
        }
        .auto-style7 {
            width: 249px;
            height: 37px;
        }
        .auto-style8 {
            height: 37px;
        }
        .auto-style9 {
            height: 30px;
            width: 824px;
        }
          .b1{
            border-radius:30px;
            width:100px;
            height: 40px;
            outline: none;
        }
    </style>
</head>
<body style="height: 992px">
    <form id="form1" runat="server">
    <div style="height: 995px; width: 1056px">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="background-position: center center; background-color: #006600; background-image: url('photo/LOGO.png'); background-repeat: no-repeat;"></td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="background-color: #006666">&nbsp;</td>
                <td style="text-align: center; background-color: #FFFF66;">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#993300" Text="MY PROFILE"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="background-color: #006666; text-align: center;">
                    <asp:Button ID="Button2" runat="server" BackColor="#FFFF99" CssClass="b1" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#003300" Height="34px" OnClick="Button2_Click" Text="HOME" Width="113px" />
                </td>
                <td class="auto-style6" style="text-align: center; background-color: #006666;"></td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #006666; text-align: center;">
                    <asp:Button ID="Button1" runat="server" BackColor="#FFFF99" CssClass="b1" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#003300" OnClick="Button1_Click" Text="MY ORDER" Width="200px" />
                </td>
                <td style="text-align: center">
                    <asp:Image ID="Image1" runat="server" Height="117px" Width="136px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="background-color: #006666; text-align: center;">
                    &nbsp;</td>
                <td class="auto-style8" style="text-align: center; background-color: #FFFF66;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#993300"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#993300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #006666">&nbsp;</td>
                <td style="text-align: center; background-color: #FFFF66;">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#993300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #006666">&nbsp;</td>
                <td style="text-align: center; background-color: #FFFF66;">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#993300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #006666">&nbsp;</td>
                <td style="text-align: center; background-color: #006666;">&nbsp;</td>
            </tr>
        </table>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style9" style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#993300" Visible="False">YOUR ORDER</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style4" style="text-align: center">
                    <asp:Button ID="Button3" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Times New Roman" Height="30px" OnClick="Button3_Click" Text="CLOSE MY ORDER" Visible="False" Width="142px" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT [order_id], [address], [city], [pincode], [phoneno], [totalamount], [order_date], [shop_id], [order_by] FROM [my_order] WHERE ([email_id] = @email_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label2" Name="email_id" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" Height="229px" OnRowCommand="GridView1_RowCommand" Visible="False" Width="1057px">
            <Columns>
                <asp:BoundField DataField="order_id" HeaderText="ORDER ID" SortExpression="order_id" />
                <asp:BoundField DataField="shop_id" HeaderText="ORDER FROM" SortExpression="shop_id" />
                <asp:BoundField DataField="order_by" HeaderText="ORDER BY" SortExpression="order_by" />
                <asp:BoundField DataField="address" HeaderText="ADDRESS" SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="CITY" SortExpression="city" />
                <asp:BoundField DataField="pincode" HeaderText="PINCODE" SortExpression="pincode" />
                <asp:BoundField DataField="phoneno" HeaderText="MOBILE NUMBER" SortExpression="phoneno" />
                <asp:BoundField DataField="totalamount" HeaderText="TOTAL AMOUNT" SortExpression="totalamount" />
                <asp:BoundField DataField="order_date" HeaderText="ORDER DATE" SortExpression="order_date" />
                <asp:ButtonField ButtonType="Button" CommandName="vieworderdetail" Text="ORDER DETAIL" />
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
    
    </div>
    </form>
</body>
</html>
