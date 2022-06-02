<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="home2_m2.aspx.cs" Inherits="home2_m2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style>
        #maindiv{
            background-color: white;
        }
        #subdiv1{
            
            width: 254px;
            height: 248px;
            border-radius:30px;
            background-color:cyan;
            
        }
        #subdiv1:hover{
            box-shadow: 5px 5px #808080;
        }
        #subdiv2{
            width: 254px;
            height: 248px; 
            background-color:cyan;
            border-radius:30px;
        }
         #subdiv2:hover{
            box-shadow: 5px 5px #808080;
        }
        #subdiv3{
            width: 254px; 
            height: 248px; 
            
            background-color:cyan;
            border-radius:30px;
        }
         #subdiv3:hover{
            box-shadow: 5px 5px #808080;
        }
        #subdiv4{
            width: 254px; 
            height: 248px; 
             
            background-color:cyan;
            border-radius:30px;
        }
         #subdiv4:hover{
            box-shadow: 5px 5px #808080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="maindiv" style="height: 446px">

        
        <table class="auto-style6" style="margin-top:20px; margin-left:35px">
            <tr>
                <td><div id="subdiv1" style="background-color: #FFFFFF; background-repeat: no-repeat;">&nbsp;<asp:Image ID="Image1" runat="server" Height="171px" ImageUrl="~/photo/CLIP_MEDI.jpg" Width="250px" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#000099" style="text-align: center" Text="ORDER MEDICINE"></asp:Label>
                    </div></td>
                <td><div id="subdiv2" style="background-color: #FFFFFF; background-image: none; background-repeat: no-repeat; text-align: center;">
                    <asp:Image ID="Image4" runat="server" Height="187px" ImageUrl="~/photo/Brackenbox-169990326-v2.jpg" Width="246px" />
                    <br />
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#663300" Text="GET DELIVERY ON TIME"></asp:Label>
                    </div></td>
                <td><div id="subdiv3" style="background-color: #FFFFFF; background-repeat: no-repeat; background-image: none; text-align: center;">
                    <asp:Image ID="Image2" runat="server" Height="160px" ImageUrl="~/photo/HEATHCARE_PRO.jpg" Width="252px" />
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#006600" Text="HEALTHCARE PRODUCT"></asp:Label>
                    <br />
                    </div></td>
                <td><div id="subdiv4" style="background-color: #FFFFFF; background-repeat: no-repeat; text-align: center;">
                    <asp:Image ID="Image3" runat="server" Height="158px" ImageUrl="~/photo/COD.jpg" Width="254px" />
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#CC3300" Text=" ORDER NOW.PAY ON DELIVERY"></asp:Label>
                    </div></td>
            </tr>
        </table>

        
        <table class="nav-justified">
            <tr>
                <td style="background-color: #00FFFF; text-align: center;">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#CC0000" Text="OFFER-10% DISCOUNT ON ALL PRODUCTS"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #FFFFCC; text-align: center;">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#993300" Text="CASH ON DELIVERY AVAILABLE"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="background-color: #FFFF99; text-align: center;">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#006600" Text="PLACE ORDER WITH PESCRIPTION"></asp:Label>
                </td>
            </tr>
        </table>

        
    </div>
</asp:Content>

