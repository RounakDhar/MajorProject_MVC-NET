<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 109px;
        }
        .auto-style4 {
            width: 109px;
            height: 13px;
        }
        .auto-style5 {
            height: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 254px">
    <div style="height: 249px; margin-left: 812px">

        <table class="auto-style1" style="height: 221px">
            <tr>
                <td class="auto-style3">WELCOME</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="Image1" runat="server" Width="104px" />
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>

    </div>
</asp:Content>

