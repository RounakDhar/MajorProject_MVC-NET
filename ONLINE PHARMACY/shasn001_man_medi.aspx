<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shasn001_man_medi.aspx.cs" Inherits="shasn001_man_medi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 448px;
        }
    </style>
</head>
<body style="height: 487px">
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" DeleteCommand="DELETE FROM [shasn001_medicine] WHERE [product_id] = @product_id" InsertCommand="INSERT INTO [shasn001_medicine] ([product_id], [product_name], [price], [qty], [unit], [image], [product_details], [keyword], [product_type]) VALUES (@product_id, @product_name, @price, @qty, @unit, @image, @product_details, @keyword, @product_type)" SelectCommand="SELECT * FROM [shasn001_medicine]" UpdateCommand="UPDATE [shasn001_medicine] SET [product_name] = @product_name, [price] = @price, [qty] = @qty, [unit] = @unit, [image] = @image, [product_details] = @product_details, [keyword] = @keyword, [product_type] = @product_type WHERE [product_id] = @product_id">
            <DeleteParameters>
                <asp:Parameter Name="product_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="product_id" Type="Int32" />
                <asp:Parameter Name="product_name" Type="String" />
                <asp:Parameter Name="price" Type="Int64" />
                <asp:Parameter Name="qty" Type="String" />
                <asp:Parameter Name="unit" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="product_details" Type="String" />
                <asp:Parameter Name="keyword" Type="String" />
                <asp:Parameter Name="product_type" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="product_name" Type="String" />
                <asp:Parameter Name="price" Type="Int64" />
                <asp:Parameter Name="qty" Type="String" />
                <asp:Parameter Name="unit" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="product_details" Type="String" />
                <asp:Parameter Name="keyword" Type="String" />
                <asp:Parameter Name="product_type" Type="String" />
                <asp:Parameter Name="product_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="SqlDataSource1" Height="252px" Width="1053px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id" />
                <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:BoundField DataField="unit" HeaderText="unit" SortExpression="unit" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                <asp:BoundField DataField="product_details" HeaderText="product_details" SortExpression="product_details" />
                <asp:BoundField DataField="keyword" HeaderText="keyword" SortExpression="keyword" />
                <asp:BoundField DataField="product_type" HeaderText="product_type" SortExpression="product_type" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
