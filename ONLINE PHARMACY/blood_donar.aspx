<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage6.master" AutoEventWireup="true" CodeFile="blood_donar.aspx.cs" Inherits="blood_donar" %>

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
            height: 915px;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <script runat ="server">
        protected void f1(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    </script>
    <div id="maindiv" style="height: 889px">
        <div id="subdiv">

            <table class="auto-style20">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center; font-family: 'HP Simplified'; color: #008080; font-size: 50px; font-style: oblique; background-color: #CCFFCC;">FIND BLOOD DONAR</td>
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
                                                                     SELECT BLOOD GROUP</td>
                                </tr>
                                <tr>
                                    <td style="text-align: center" class="auto-style23">
                                        <asp:DropDownList ID="DropDownList1" CssClass="d1" runat="server">
                                            <asp:ListItem>---</asp:ListItem>
                                            <asp:ListItem>A+</asp:ListItem>
                                            <asp:ListItem>A-</asp:ListItem>
                                            <asp:ListItem>B+</asp:ListItem>
                                            <asp:ListItem>B-</asp:ListItem>
                                            <asp:ListItem>O+</asp:ListItem>
                                            <asp:ListItem>O-</asp:ListItem>
                                            <asp:ListItem>AB+</asp:ListItem>
                                            <asp:ListItem>AB-</asp:ListItem>
                                        </asp:DropDownList>
                                        <button type="submit" runat="server" class="button" onserverclick="f1" style="border-bottom-right-radius:10px;border-top-right-radius:10px;"><i class="fa fa-search fa-2x"></i></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">

                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Text="Want to be a Blood Donar"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/BloodDonorReg_m6.aspx">Click Here</asp:HyperLink>

                                    </td>
                                </tr>
                            </table>

                        </div>
                    </td>
                </tr>
                </table>

        </div>
        <div id="grid_view">

            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="350px" Width="1260px" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1" Visible="False">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="DONAR NAME" SortExpression="Name" >
                    <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Bloodgroup" HeaderText="BLOOD GROUP" SortExpression="Bloodgroup" />
                    <asp:TemplateField HeaderText="DONAR PHOTO" SortExpression="Image">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="155px" ImageUrl='<%# Eval("Image") %>' Width="200px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Email" HeaderText="EMAIL ID" SortExpression="Email" ReadOnly="True" />
                    <asp:BoundField DataField="Phoneno" HeaderText="CONTACT NO" SortExpression="Phoneno" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT * FROM [blood_donar] WHERE ([Bloodgroup] = @Bloodgroup)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Bloodgroup" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

