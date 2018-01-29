<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ObjectDataSource.aspx.cs" Inherits="Lesson6DataControls_ObjectDataSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="OrderNumber" DataValueField="PersonID"></asp:DropDownList><br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:EntityFrameworkTestConnectionString %>' SelectCommand="SELECT * FROM [OrderProduct]"></asp:SqlDataSource><br />

        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getmethod" TypeName="ObjectData">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="one" Type="Int32"></asp:ControlParameter>
            </SelectParameters>
        </asp:ObjectDataSource>

        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="ObjectDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True"></CommandRowStyle>

            <EditRowStyle BackColor="#2461BF"></EditRowStyle>

            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True"></FieldHeaderStyle>

            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#EFF3FB"></RowStyle>
        </asp:DetailsView>


    </div>
                </ContentTemplate>
           </asp:UpdatePanel>
    </form>
</body>
</html>
