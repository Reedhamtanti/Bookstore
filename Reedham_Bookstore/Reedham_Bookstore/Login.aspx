<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Reedham_Bookstore.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="master1" runat="server">
    <link href="Scripts/style.css" rel="stylesheet" />
   <form id="form2" runat="server" class="form-horizontal container">
    <table class="w-100">
    <tr>
        <td class="txt_center" colspan="2">Welcome to Book Store</td>
    </tr>
    <tr>
        <td class="txt_center" colspan="2">Please login to your account:</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="lbl_username" runat="server" Text="Username"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your username" ControlToValidate="txt_username"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="lbl_password" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txt_password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your password" ControlToValidate="txt_password"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style3">
            <asp:Button ID="btn_login" runat="server" CssClass="btn btn-primary" Text="Login" Click="btn_login_Click" />
            <asp:Button ID="btn_cancle" runat="server" CssClass="btn btn-primary" CausesValidation="false" Text="Cancle"  PostBackUrl="~/Default" OnClick="btn_cancle_Click"  />
        </td>
       
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
        </form>
</asp:Content>
