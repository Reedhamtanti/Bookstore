<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Reedham_Bookstore.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="master2" runat="server">
    <div class="container">

        <main>
            <form id="form1" runat="server" class="form-horizontal"
                defaultfocus="txtEmail1" defaultbutton="btnCheckOut">

                <h1 style="text-align: center">Check Out Page</h1>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="summary text-danger" Headertext="Please correct these entries:" />


                <%-- contact info --%>
                <h3>Contact Information</h3>

                <div class="container">
                     <div class="form-group">
                    <label class="control-label col-sm-3">Email Address:</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtEmail1" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:RequiredFieldValidator ID="rfvEmail1" runat="server"
                            ErrorMessage="Email address" ForeColor="Red"
                            Display="Dynamic" ControlToValidate="txtEmail1">Required</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail1" runat="server"
                            ErrorMessage="Email address" CssClass="text-warning"
                            Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="txtEmail1">Must be a valid email address</asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-3">Email Re-entry:</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtEmail2" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:RequiredFieldValidator ID="rfvEmail2" runat="server" ForeColor="Red"
                            ErrorMessage="Email re-entry"
                            Display="Dynamic" ControlToValidate="txtEmail2">Required</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvEmail2" runat="server"
                            ErrorMessage="Email re-entry" CssClass="text-warning" Display="Dynamic"
                            ControlToValidate="txtEmail2" ControlToCompare="txtEmail1">Must match first email address</asp:CompareValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-3">First Name:</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ForeColor="Red"
                            ErrorMessage="First name"
                            Display="Dynamic" ControlToValidate="txtFirstName">Required</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-3">Last Name:</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ForeColor="Red"
                            ErrorMessage="Last name"
                            Display="Dynamic" ControlToValidate="txtLastName">Required</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-3">Phone Number:</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:RequiredFieldValidator ID="rfvphone" runat="server" ForeColor="Red"
                            ErrorMessage="Phone number"
                            Display="Dynamic" ControlToValidate="txtPhone">Required</asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPhone" CssClass="text-warning" Display="Dynamic" ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$">use this formate 999-999-9999 or 999 999 9999 or (999) 999 9999 or 999.999.9999</asp:RegularExpressionValidator>
                    </div>
                </div>
                </div>

               

                <%-- billing info --%>
                <h3>Billing Address</h3>
                <div class="container">
                    <div class="form-group">
                    <label class="control-label col-sm-3">Address:</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:RequiredFieldValidator ID="rfvStreetAddress" runat="server" ForeColor="Red"
                            ErrorMessage="Billing address" Text="Required"
                            Display="Dynamic"
                            ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-3">City:</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:RequiredFieldValidator ID="rfvCity" runat="server" ForeColor="Red"
                            ErrorMessage="Billing city" Text="Required"
                            Display="Dynamic" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-3">State:</label>
                    <div class="col-sm-3">


                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                            <asp:ListItem>ontario</asp:ListItem>
                            <asp:ListItem>nova scotia</asp:ListItem>
                            <asp:ListItem>manitoba</asp:ListItem>
                            <asp:ListItem>british columbia</asp:ListItem>
                            <asp:ListItem>alberta</asp:ListItem>
                            <asp:ListItem>Qubec</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <div class="col-sm-3">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Zip code:</label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:RequiredFieldValidator ID="rfvZip" runat="server" ForeColor="Red"
                            ErrorMessage="Billing zip code" Text="Required"
                            Display="Dynamic" ControlToValidate="txtZip"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                            ErrorMessage="" CssClass="text-warning"
                            Display="Dynamic" ValidationExpression="^([ABCEGHJKLMNPRSTVXY]\d[ABCEGHJKLMNPRSTVWXYZ])\ {0,1}(\d[ABCEGHJKLMNPRSTVWXYZ]\d)"
                            ControlToValidate="txtZip">Use this format: A1B3C4</asp:RegularExpressionValidator>

                    </div>
                </div>
                </div>
                
                <%-- Optional Data  --%>

                <h3>Optional Data</h3>
                <div class="container">
                     <h6>Please let me know about:</h6>
                  <div class="container">
                      <asp:CheckBox ID="CheckBox1" runat="server" Text="New Products" />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="New Editions" />
                <br />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Special Offers" />
                <asp:CheckBox ID="CheckBox4" runat="server" Text="Local Events" />
                  </div>

                


                <h6>please contact me via:</h6>
                    <div class="container">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem>Twitter</asp:ListItem>
                    <asp:ListItem>Facebook</asp:ListItem>
                    <asp:ListItem>Text Message</asp:ListItem>
                    <asp:ListItem>Email</asp:ListItem>

                </asp:RadioButtonList>
                    </div>
                
                
                </div>
               

                <div class="form-group mt-3">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" CssClass="btn btn-primary" OnClick="btnCheckOut_Click"
                             />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel Order" CssClass="btn btn-primary"
                            CausesValidation="False" OnClick="btnCancel_Click"  />
                        <asp:LinkButton ID="lbtnContinueShopping" runat="server" CssClass="btn-primary text-decoration-none cn"
                            PostBackUrl="~/Products.aspx" CausesValidation="False" OnClick="lbtnContinueShopping_Click">Continue Shopping</asp:LinkButton>
                    </div>
                </div>

            </form>
        </main>

    </div>
</asp:Content>
