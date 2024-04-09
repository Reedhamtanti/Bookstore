<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Reedham_Bookstore.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="master2" runat="server">
    <asp:Label ID="lbl_username" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="X-Large" Font-Strikeout="False"></asp:Label>
         <main> 
                <form id="form2" runat="server" class="form-horizontal">
    
            <div class="row">
                <div class="col-sm-8">
                    <div class="form-group products">
                       
                        <label class="col-sm-5 lblproduct" style="width: 40%; height: 95px">Please select a product:
                        <br />
                        <br />
                       
                        </label>
                        <div class="col-sm-6">
                             <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="book_Name" DataValueField="book_Id" Height="50px" Width="350px">
                        </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
                        </div>
                    </div>   
                    <div class="form-group">
                        <div class="col-sm-12"><h4><asp:Label ID="lblName" runat="server"></asp:Label></h4></div></div>
                    <div class="form-group">
                        <div class="col-sm-12"><asp:Label ID="lblShortDescription" runat="server"></asp:Label></div></div>
                    <div class="form-group">
                        <div class="col-sm-12"><asp:Label ID="lblLongDescription" runat="server"></asp:Label></div></div>
                    <div class="form-group">
                        <div class="col-sm-12"><asp:Label ID="lblUnitPrice" runat="server"></asp:Label></div></div>
                </div>
                
                <div class="col-sm-4">
                    <asp:Image ID="imgProduct" runat="server" Height="150px" Width="150px" />
                <br />
                  &nbsp;</div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label class="col-sm-1">Quantity:</label>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtQuantity" runat="server" 
                                CssClass="form-control"></asp:TextBox></div>
                        <div class="col-sm-8">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-warning"
                                runat="server" ControlToValidate="txtQuantity" Display="Dynamic" 
                                ErrorMessage="Quantity is a required field."></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="text-warning" 
                                ControlToValidate="txtQuantity" Display="Dynamic" 
                                ErrorMessage="Quantity must range from 1 to 100."
                                MaximumValue="500" MinimumValue="1" Type="Integer"></asp:RangeValidator></div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" 
                                 CssClass="btn btn-primary" OnClick="btnAdd_Click" />
                            <asp:Button ID="btnCart" runat="server" Text="Go to Cart" 
                                PostBackUrl="~/Cart.aspx" CausesValidation="False" CssClass="btn btn-primary" />
                        </div>
                    </div>
                </div>
            </div>
        </form>
         </main>

</asp:Content>
