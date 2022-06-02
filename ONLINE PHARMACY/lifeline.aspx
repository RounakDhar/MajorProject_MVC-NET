<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.master" AutoEventWireup="true" CodeFile="lifeline.aspx.cs" Inherits="lifeline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <script runat ="server">
        protected void f1(object sender, EventArgs e)
        
        {
            if (TextBox1.Text != "")
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }
            else
            {
                Label15.Text = "NO PRODUCT FOUND";
            }
        }
    </script>
    <style type="text/css">
        #subdiv {
            height: 423px;
            
        }
        .button{
            height:40px;
            border-style:hidden;
            border-style:hidden;
            position: absolute; 
            z-index: auto;
            background-color:#CCFFCC;
            border-bottom-right-radius:30px;
            border-top-right-radius:30px;
            width: 40px;
        }
           .txt1{
            width:551px;
            height:40px;
            outline:none;
            border-style:hidden;
            background-color:#CCFFCC;
            border-bottom-left-radius:30px;
            border-top-left-radius:30px;
            padding-left: 20px;
        }
        .auto-style21 {
           
        }
        .auto-style22 {
            height: 48px;
            width: 396px;
        }
        .auto-style23 {
            height: 48px;
            width: 181px;
        }
        .auto-style24 {
            width: 679px;
            height: 34px;
        }
        .auto-style25 {
            height: 34px;
        }
        .auto-style26 {
            width: 679px;
        }
        .auto-style27 {
            height: 48px;
            width: 679px;
        }
        #subdiv2 {
            height: 869px;
            width: 1494px;
        }
        .auto-style28 {
            height: 127px;
        }
        .b1{
            border-radius:30px;
            width:100px;
            height: 40px;
            outline: none;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="maindiv" style="height: 1322px" >
        <div id="subdiv">
            

            &nbsp;

            <table class="nav-justified">
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center;" class="auto-style26">
                        &nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center;" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" class="auto-style24">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Font-Names="times in noman">LIFELINE MEDICINE CENTER</asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" colspan="2" class="auto-style25">
                        &nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#990000">CONTACT NO-</asp:Label>
                    &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="True">7001288769</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" class="auto-style26">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#000099">VIVEKANANDA PALLY WEST ISMILE NEAR P. H. E. WATER TANK</asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" colspan="2">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#0066CC">KOLKATA</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; background-color: #CCFFFF;" class="auto-style21" colspan="3">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Red">E-mail-</asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#CC3300" Text="	lifelinemedi@gmail.com"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center;">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: left;" class="auto-style27">&nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; text-align: right;" class="auto-style23">
                        &nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; text-align: center; color: #000000; font-variant: normal; background-color: #00CC00;" class="auto-style22" id="d">
                        Order through Pescription&nbsp; </td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: left;" class="auto-style27">&nbsp;&nbsp;<asp:TextBox ID="TextBox1" CssClass="txt1" runat="server" BackColor="#CCFFCC"></asp:TextBox>
&nbsp;&nbsp<button type="button" runat="server" class="button" onserverclick="f1"><i class="fa fa-search" style="outline:none"></i></button></td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; text-align: right;" class="auto-style23">
                        &nbsp;</td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: large; text-align: center; background-color: #33CC33;" class="auto-style22">
                        <asp:Button ID="Button1" runat="server" Text="Button" CssClass="b1" BackColor="#FFFF99" ForeColor="#CC3300"/>

                    </td>
                </tr>
                <tr>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center;" class="auto-style26">
                        <asp:Label ID="Label15" runat="server" onserverclick="f1"></asp:Label>
                    </td>
                    <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center;" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="font-family: 'Times New Roman', Times, serif; font-size: x-large">&nbsp;</td>
                </tr>
            </table>

        </div>
         <div id="subdiv2">

             &nbsp;&nbsp;
             <br />
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT * FROM [shasn001_medicine] WHERE ([keyword] LIKE '%' + @keyword + '%')">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="TextBox1" Name="keyword" PropertyName="Text" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label14" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT product_id, product_name, price, unit, image, product_details FROM shasn001_medicine WHERE (product_type = 'MEDICINE')"></asp:SqlDataSource>
             <asp:DataList ID="DataList1" runat="server" BorderColor="#DEBA84" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="product_id" DataSourceID="SqlDataSource1" GridLines="Both" Height="493px" RepeatColumns="3" RepeatDirection="Horizontal" Width="1497px" ForeColor="Aqua" OnItemCommand="DataList1_ItemCommand">
                 <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                 <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                 <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                 <ItemTemplate>
                     <table class="auto-style6" style="height: 185px">
                         <tr>
                             <td style="text-align: center">PRODUCT ID&nbsp;&nbsp;&nbsp;
                                 <asp:Label ID="Label10" runat="server" Text='<%# Eval("product_id") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td style="text-align: center">PRODUCT NAME&nbsp;&nbsp;&nbsp;
                                 <asp:Label ID="Label11" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td style="text-align: center" class="auto-style28">
                                 <asp:Image ID="Image1" runat="server" Height="114px" ImageUrl='<%# Eval("image") %>' Width="154px" />
                             </td>
                         </tr>
                         <tr>
                             <td style="text-align: center">PRICE&nbsp;&nbsp; Rs-<asp:Label ID="Label12" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td style="text-align: center">
                                 <asp:Label ID="Label13" runat="server" Text='<%# Eval("unit") %>'></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td style="text-align: center">QUANTITY
                                 <asp:DropDownList ID="DropDownList1" runat="server">
                                     <asp:ListItem>1</asp:ListItem>
                                     <asp:ListItem>2</asp:ListItem>
                                     <asp:ListItem>3</asp:ListItem>
                                     <asp:ListItem>4</asp:ListItem>
                                     <asp:ListItem>5</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                         </tr>
                         <tr>
                             <td style="text-align: center">
                                 <asp:ImageButton ID="ImageButton1" runat="server" Height="65px" ImageUrl="~/photo/240_F_30864441_VgkpITeuRhgBfOcSxkCpLEuooEs100yL.jpg" Width="185px" CommandArgument='<%# Eval("product_id")%>' CommandName="addtocart" />
                             </td>
                         </tr>
                         <tr>
                             <td style="text-align: center">
                                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("product_details") %>'>VIEW DETAIL</asp:HyperLink>
                             </td>
                         </tr>
                     </table>
                     <br />
                     <br />
                 </ItemTemplate>
                 <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
             </asp:DataList>

         </div>
    </div>
</asp:Content>

