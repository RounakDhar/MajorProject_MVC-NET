<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Order_Medicine_m3.aspx.cs" Inherits="Order_Medicine_m3" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #subdiv{
            margin-top:30px;
            margin-left:20px;
            width: 779px;
            height: 332px;
        }
        .auto-style20 {
            width: 100%;
            height: 106px;
        }
        #search{
            background-color:#6ba84b;
            height:200px;
        }
        .auto-style21 {
            width: 100%;
        }
        
        .auto-style22 {
            height: 25px;
        }
        #t1{
            border-bottom-left-radius:10px;
            border-top-left-radius:10px;
            width: 551px;
            margin-left: 0px;
            height:29px;
        }
    
        .button{
            width:50px;
            height:34px;
            border-style:hidden;
            outline:hidden;
            border-style:hidden;
            position: absolute; 
            z-index: auto;
        }
        .auto-style23 {
            height: 67px;
        }
        .d1{
            width:551px;
            height:34px;
            outline:none;
            border-style:hidden;
        }
        #grid_view {
            height: 418px;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script runat ="server">
        protected void f1(object sender, EventArgs e)
        {
            
        }
    </script>
    <div id="maindiv" style="height: 889px">
        <div id="subdiv">

            <table class="auto-style20">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; font-family: 'HP Simplified'; color: #008080; font-size: 50px; font-style: oblique; background-color: #CCFFCC;">Order Medicine Online</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <div id="search">

                            <table class="auto-style21">
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="text-align: center; font-family: 'Leelawadee UI'; font-size: large; color: #000080; font-weight: bold;" class="auto-style22">
                                                                     Select Your city&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="text-align: center" class="auto-style23">
                                        <asp:DropDownList ID="DropDownList1" CssClass="d1" runat="server" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                            <asp:ListItem>---</asp:ListItem>
                                            <asp:ListItem>KALYANI</asp:ListItem>
                                            <asp:ListItem>ASANSOL</asp:ListItem>
                                            <asp:ListItem>KOLKATA</asp:ListItem>
                                        </asp:DropDownList>
                                        <button type="submit" runat="server" class="button" onserverclick="f1" style="border-bottom-right-radius:10px;border-top-right-radius:10px;"><i class="fa fa-search fa-2x"></i></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                    </td>
                                </tr>
                            </table>

                        </div>
                    </td>
                </tr>
                </table>

        </div>
        <div id="grid_view">

            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="280px" Width="1492px" AutoGenerateColumns="False" DataKeyNames="shop_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Visible="False">
                <Columns>
                    <asp:BoundField DataField="shop_id" HeaderText="SHOP ID" ReadOnly="True" SortExpression="shop_id" >
                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#669999" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="shop_name" HeaderText="NAME OF STORE" SortExpression="shop_name" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#000099" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="ADDRESS" SortExpression="address" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#CC9900" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="city" HeaderText="CITY" SortExpression="city" >
                    <ItemStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#006600" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email_id" HeaderText="EMAIL ID" SortExpression="email_id" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="contact_no" HeaderText="CONTACT NUMBER" SortExpression="contact_no" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#663300" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="pagelink" HeaderText="GO TO PHARMACY" Text="CLICK HERE" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle Font-Bold="True" Font-Size="Large" ForeColor="Red" HorizontalAlign="Center" />
                    </asp:HyperLinkField>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT [shop_id], [shop_name], [address], [city], [email_id], [contact_no], [pagelink] FROM [shop_details] WHERE ([city] = @city)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="city" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>

        </div>
    </div>
</asp:Content>

