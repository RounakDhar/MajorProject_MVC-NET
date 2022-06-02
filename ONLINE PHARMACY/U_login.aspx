<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="U_login.aspx.cs" Inherits="U_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    #subdiv{
        margin-top: 131px;
        margin-left:609px;
        margin-right:100px;
        margin-bottom:30px;
        width: 557px;
        height: 327px;
        border-radius:30px;
    }
    #maindiv{
        
        
    }

    .auto-style16 {
        width: 538px;
    }
       .tb1{
        border-radius: 20px;
        padding-left:30px;
        outline:none;
        
    }
       .b1{
           border-radius:30px;
           background-color:aliceblue;
           outline:none;
       }
       .ig1{
           border-radius:30px;
           outline:none;
       }
    .auto-style17 {
        width: 538px;
        height: 21px;
    }
    .auto-style18 {
        width: 538px;
        height: 46px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="maindiv" style="background-image: url('photo/Login.jpg'); background-repeat: no-repeat;">   
        <div id="subdiv" style="background-color: aliceblue">

            <table align="center" class="auto-style6">
                <tr>
                    <td class="auto-style16" style="text-align: center">
                        <asp:Image ID="Image1" CssClass="ig1" runat="server" Height="57px" ImageUrl="~/photo/e27c8735da98ec6ccdcf12e258b26475.png" Width="56px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17" style="text-align: center; font-family: 'Bell MT'; font-size: large; font-weight: 300; font-style: oblique; font-variant: inherit; text-transform: inherit; color: #8000FF;">Login</td>
                </tr>
                <tr>
                    <td class="auto-style16" style="text-align: center">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" style="text-align: center">
                        <asp:TextBox ID="TextBox2" CssClass="tb1" runat="server" Height="36px" Width="383px" placeholder="username"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" style="text-align: center">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18" style="text-align: center">
                        <asp:TextBox ID="TextBox3" CssClass="tb1" runat="server" Height="36px" placeholder="password"  Width="383px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" style="text-align: center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16" style="text-align: center">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" CssClass="b1" runat="server" Text="LogIn" Height="34px" Width="99px" BackColor="#3399FF" OnClick="Button1_Click"/>
                    &nbsp;
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16" style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: medium; font-style: inherit; color: #000000;">
                        Don&#39;t have an account? &nbsp<a href="User_reg_m4.aspx">Signup</a> </td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

