<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="order_prescription.aspx.cs" Inherits="order_prescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #subdiv2{
            margin: 95px 100px 100px 500px;
            width: 761px;
            height: 891px;
            background-color:#ddd3ee;
            /*border-bottom-left-radius:30px;
            border-bottom-right-radius:30px;
            border-top-left-radius:30px;
            border-top-right-radius:30px;*/
            border-radius:30px;
           
        }
    .auto-style20 {
        height: 51px;
    }
    .auto-style22 {
        height: 40px;
    }
    .auto-style23 {
        height: 37px;
    }
    .auto-style25 {
        height: 41px;
    }
    .auto-style26 {
        height: 34px;
    }
    .auto-style28 {
        height: 29px;
    }
    .auto-style29 {
        height: 22px;
    }
    .auto-style30 {
        height: 21px;
    }
    .auto-style31 {
        height: 23px;
    }
    .auto-style32 {
        height: 51px;
        width: 315px;
        text-align: center;
    }
     .textbox{
            border-radius:20px;
            outline:none;
            padding-left:15px;
            padding-right:5px;
        }
    .auto-style33 {
        height: 29px;
        width: 315px;
    }
    .auto-style34 {
        height: 40px;
        width: 315px;
        text-align: center;
    }
    .auto-style35 {
        height: 22px;
        width: 315px;
    }
    .auto-style36 {
        height: 37px;
        width: 315px;
        text-align: center;
    }
    .auto-style37 {
        height: 21px;
        width: 315px;
    }
    .auto-style38 {
        height: 41px;
        width: 315px;
        text-align: center;
    }
    .auto-style39 {
        height: 23px;
        width: 315px;
    }
    .auto-style40 {
        height: 34px;
        width: 315px;
        text-align: center;
    }
    .auto-style42 {
        height: 27px;
        width: 315px;
        text-align: center;
    }
    .auto-style43 {
        height: 27px;
    }
    .auto-style44 {
        height: 20px;
        width: 315px;
        text-align: center;
    }
    .auto-style45 {
        height: 20px;
    }
    .auto-style46 {
        height: 31px;
        width: 315px;
        text-align: center;
    }
    .auto-style47 {
        height: 31px;
    }
    .b1{
            border-radius:30px;
            width:100px;
            height: 40px;
            outline: none;
        }
        .auto-style48 {
            height: 63px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="maindiv" style="background-position: left 100px; height: 1145px; background-image: url('photo/UPLOAD_PRESCRIPTION.jpg'); background-repeat: no-repeat; background-attachment: scroll; width: 1280px;">
    <div id="subdiv1" style="height: 61px">
        <table class="nav-justified" style="width:1500px">
            <tr>
                <td class="auto-style48" style="background-color: #CCFFFF">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#333300" Text="GET GENUINE MEDICINE DELIVERED AT HOME"></asp:Label>
                </td>
            </tr>
            </table>
        <br />

        <br />
        <br />
        

    </div>
    <div id="subdiv2">
        <table style="background-position: center center">
            <tr>
                <td class="auto-style32" style="background-color: #ddd3ee">
                    &nbsp;</td>
                <td class="auto-style20" style="background-color: #ddd3ee">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32" style="background-color: #ddd3ee">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#993300" Text="EMAIL ID"></asp:Label>
                </td>
                <td class="auto-style20" style="background-color: #ddd3ee">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33" style="background-color: #ddd3ee">&nbsp;</td>
                <td class="auto-style28" style="background-color: #ddd3ee">
                    <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style34" style="background-color: #ddd3ee">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#993300" Text="ORDER DATE"></asp:Label>
                </td>
                <td class="auto-style22" style="background-color: #ddd3ee">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style35" style="background-color: #ddd3ee"></td>
                <td class="auto-style29" style="background-color: #ddd3ee"></td>
            </tr>
            <tr>
                <td class="auto-style36" style="background-color: #ddd3ee">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#993300" Text="NAME"></asp:Label>
                </td>
                <td class="auto-style23" style="background-color: #ddd3ee">
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" CssClass="textbox" Width="338px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style37" style="background-color: #ddd3ee"></td>
                <td class="auto-style30" style="background-color: #ddd3ee"></td>
            </tr>
            <tr>
                <td class="auto-style38" style="background-color: #ddd3ee">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#993300" Text="UPLOAD PRESCRIPTION"></asp:Label>
                </td>
                <td class="auto-style25" style="background-color: #ddd3ee">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="24px" Width="252px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style39" style="background-color: #ddd3ee"></td>
                <td class="auto-style31" style="background-color: #ddd3ee"></td>
            </tr>
            <tr>
                <td class="auto-style40" style="background-color: #ddd3ee">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#993300" Text="ADDRESS"></asp:Label>
                </td>
                <td class="auto-style26" style="background-color: #ddd3ee">
                    <asp:TextBox ID="TextBox2" runat="server" Height="74px" CssClass="textbox" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style40" style="background-color: #ddd3ee">
                    &nbsp;</td>
                <td class="auto-style26" style="background-color: #ddd3ee">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style46" style="background-color: #ddd3ee">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#993300" Text="LANDMARK"></asp:Label>
                </td>
                <td class="auto-style47" style="background-color: #ddd3ee">
                    <asp:TextBox ID="TextBox3" runat="server" Height="68px" Width="300px" CssClass="textbox" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style46" style="background-color: #ddd3ee">
                    &nbsp;</td>
                <td class="auto-style47" style="background-color: #ddd3ee">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40" style="background-color: #ddd3ee">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#993300" Text="CITY"></asp:Label>
                </td>
                <td class="auto-style26" style="background-color: #ddd3ee">
                    <asp:TextBox ID="TextBox7" runat="server" Height="28px" CssClass="textbox" Width="185px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style40" style="background-color: #ddd3ee">
                    &nbsp;</td>
                <td class="auto-style26" style="background-color: #ddd3ee">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #ddd3ee">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#993300" Text="PINCODE"></asp:Label>
                </td>
                <td class="auto-style43" style="background-color: #ddd3ee">
                    <asp:TextBox ID="TextBox6" runat="server" Height="25px" CssClass="textbox" Width="162px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style44" style="background-color: #ddd3ee"></td>
                <td class="auto-style45" style="background-color: #ddd3ee"></td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #ddd3ee">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#993300" Text="CONTACT NUMBER"></asp:Label>
                </td>
                <td class="auto-style43" style="background-color: #ddd3ee">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" Height="25px" Width="259px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #ddd3ee">
                    &nbsp;</td>
                <td class="auto-style43" style="background-color: #ddd3ee">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #ddd3ee">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#993300" Text="ALTERNATIV CONTACT NUMBER"></asp:Label>
                </td>
                <td class="auto-style43" style="background-color: #ddd3ee">
                    <asp:TextBox ID="TextBox5" runat="server" Height="25px" CssClass="textbox" Width="259px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #ddd3ee">&nbsp;</td>
                <td class="auto-style43" style="background-color: #ddd3ee">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #ddd3ee"></td>
                <td class="auto-style43" style="background-color: #ddd3ee">&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Place Order" Height="46px" Width="136px" CssClass="b1" BackColor="#FFCC99" BorderColor="#996633" BorderStyle="Double" Font-Bold="True" Font-Size="Large" ForeColor="#990000" />
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#993300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #ddd3ee">&nbsp;</td>
                <td class="auto-style43" style="background-color: #ddd3ee">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style42" style="background-color: #ddd3ee">&nbsp;</td>
                <td class="auto-style43" style="background-color: #ddd3ee">&nbsp;</td>
            </tr>
        </table>
        </div>
        </div>
    
    </asp:Content>

