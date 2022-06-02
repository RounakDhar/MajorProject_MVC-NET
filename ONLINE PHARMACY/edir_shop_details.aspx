<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edir_shop_details.aspx.cs" Inherits="edir_shop_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 470px">
    <form id="form1" runat="server">
    <div style="height: 460px">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="shop_id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="412px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1312px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="shop_id" HeaderText="shop_id" ReadOnly="True" SortExpression="shop_id" />
                <asp:BoundField DataField="shop_name" HeaderText="shop_name" SortExpression="shop_name" />
                <asp:BoundField DataField="registration_no" HeaderText="registration_no" SortExpression="registration_no" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                <asp:BoundField DataField="pagelink" HeaderText="pagelink" SortExpression="pagelink" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" DeleteCommand="DELETE FROM [shop_details] WHERE [shop_id] = @shop_id" InsertCommand="INSERT INTO [shop_details] ([shop_id], [shop_name], [registration_no], [address], [city], [email_id], [contact_no], [pagelink]) VALUES (@shop_id, @shop_name, @registration_no, @address, @city, @email_id, @contact_no, @pagelink)" SelectCommand="SELECT * FROM [shop_details]" UpdateCommand="UPDATE [shop_details] SET [shop_name] = @shop_name, [registration_no] = @registration_no, [address] = @address, [city] = @city, [email_id] = @email_id, [contact_no] = @contact_no, [pagelink] = @pagelink WHERE [shop_id] = @shop_id">
            <DeleteParameters>
                <asp:Parameter Name="shop_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="shop_id" Type="String" />
                <asp:Parameter Name="shop_name" Type="String" />
                <asp:Parameter Name="registration_no" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
                <asp:Parameter Name="pagelink" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="shop_name" Type="String" />
                <asp:Parameter Name="registration_no" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
                <asp:Parameter Name="pagelink" Type="String" />
                <asp:Parameter Name="shop_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
