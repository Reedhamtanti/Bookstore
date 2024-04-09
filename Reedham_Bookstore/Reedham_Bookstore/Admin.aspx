<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Reedham_Bookstore.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="master1" runat="server">
            <form id="form1" runat="server" class="form-horizontal">
                <asp:Label ID="errorLbl" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Genre_Id" DataValueField="Genre_Id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Genre]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
                <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [book_Id] = @book_Id" InsertCommand="INSERT INTO [Books] ([book_Id], [book_Name], [book_Des], [Genre_Id], [book_Price], [book_Qty], [book_Img]) VALUES (@book_Id, @book_Name, @book_Des, @Genre_Id, @book_Price, @book_Qty, @book_Img)" SelectCommand="SELECT * FROM [Books] WHERE ([Genre_Id] = @Genre_Id)" UpdateCommand="UPDATE [Books] SET [book_Name] = @book_Name, [book_Des] = @book_Des, [Genre_Id] = @Genre_Id, [book_Price] = @book_Price, [book_Qty] = @book_Qty, [book_Img] = @book_Img WHERE [book_Id] = @book_Id" OnSelecting="SqlDataSource3_Selecting">
        <DeleteParameters>
            <asp:Parameter Name="book_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="book_Id" Type="Int32" />
            <asp:Parameter Name="book_Name" Type="String" />
            <asp:Parameter Name="book_Des" Type="String" />
            <asp:Parameter Name="Genre_Id" Type="String" />
            <asp:Parameter Name="book_Price" Type="Decimal" />
            <asp:Parameter Name="book_Qty" Type="Int32" />
            <asp:Parameter Name="book_Img" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Genre_Id" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="book_Name" Type="String" />
            <asp:Parameter Name="book_Des" Type="String" />
            <asp:Parameter Name="Genre_Id" Type="String" />
            <asp:Parameter Name="book_Price" Type="Decimal" />
            <asp:Parameter Name="book_Qty" Type="Int32" />
            <asp:Parameter Name="book_Img" Type="String" />
            <asp:Parameter Name="book_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="book_Id" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
            book_Id:
            <asp:Label ID="book_IdLabel" runat="server" Text='<%# Eval("book_Id") %>' />
            <br />
            book_Name:
            <asp:Label ID="book_NameLabel" runat="server" Text='<%# Eval("book_Name") %>' />
            <br />
            book_Des:
            <asp:Label ID="book_DesLabel" runat="server" Text='<%# Eval("book_Des") %>' />
            <br />
            Genre_Id:
            <asp:Label ID="Genre_IdLabel" runat="server" Text='<%# Eval("Genre_Id") %>' />
            <br />
            book_Price:
            <asp:Label ID="book_PriceLabel" runat="server" Text='<%# Eval("book_Price") %>' />
            <br />
            book_Qty:
            <asp:Label ID="book_QtyLabel" runat="server" Text='<%# Eval("book_Qty") %>' />
            <br />
            book_Img:
            <asp:Label ID="book_ImgLabel" runat="server" Text='<%# Eval("book_Img") %>' />
<br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Genre]"></asp:SqlDataSource>
                <br />
                <br />
                <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Genre_Id" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="Genre_Id" HeaderText="Genre_Id" ReadOnly="True" SortExpression="Genre_Id" InsertVisible="False" />
            <asp:BoundField DataField="Genre_Type" HeaderText="Genre_Type" SortExpression="Genre_Type" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
                <br />
                <asp:Label ID="Label1" runat="server" Text="To create a new Genre"></asp:Label>
&nbsp;<br />
                <asp:Label ID="Label2" runat="server" Text="Genre_Type"></asp:Label>
&nbsp;<asp:TextBox ID="txtGenretype" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnAddGenre" runat="server" OnClick="btnAddGenre_Click" Text="Add New Genre" />
                <br />
                <br />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
                <br />
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="book_Id" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="book_Id" HeaderText="book_Id" ReadOnly="True" SortExpression="book_Id" />
                        <asp:BoundField DataField="book_Name" HeaderText="book_Name" SortExpression="book_Name" />
                        <asp:BoundField DataField="book_Des" HeaderText="book_Des" SortExpression="book_Des" />
                        <asp:BoundField DataField="Genre_Id" HeaderText="Genre_Id" SortExpression="Genre_Id" />
                        <asp:BoundField DataField="book_Price" HeaderText="book_Price" SortExpression="book_Price" />
                        <asp:BoundField DataField="book_Qty" HeaderText="book_Qty" SortExpression="book_Qty" />
                        <asp:BoundField DataField="book_Img" HeaderText="book_Img" SortExpression="book_Img" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books] WHERE ([book_Id] = @book_Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView2" Name="book_Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="book_Id" DataSourceID="SqlDataSource5" Height="50px" Width="125px" OnPageIndexChanging="DetailsView1_PageIndexChanging" CellPadding="4" GridLines="None" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="book_Id" HeaderText="book_Id" ReadOnly="True" SortExpression="book_Id" />
            <asp:BoundField DataField="book_Name" HeaderText="book_Name" SortExpression="book_Name" />
            <asp:BoundField DataField="book_Des" HeaderText="book_Des" SortExpression="book_Des" />
            <asp:BoundField DataField="Genre_Id" HeaderText="Genre_Id" SortExpression="Genre_Id" />
            <asp:BoundField DataField="book_Price" HeaderText="book_Price" SortExpression="book_Price" />
            <asp:BoundField DataField="book_Qty" HeaderText="book_Qty" SortExpression="book_Qty" />
            <asp:BoundField DataField="book_Img" HeaderText="book_Img" SortExpression="book_Img" />
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowInsertButton="True"/>
            
        </Fields>
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
&nbsp;
                </form>
</asp:Content>

