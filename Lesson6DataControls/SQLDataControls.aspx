<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SQLDataControls.aspx.cs" Inherits="SQLDataControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="OrderId" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <li style="background-color: #FFF8DC;">OrderId:
                    <asp:Label Text='<%# Eval("OrderId") %>' runat="server" ID="OrderIdLabel" /><br />
                    OrderNumber:
                    <asp:Label Text='<%# Eval("OrderNumber") %>' runat="server" ID="OrderNumberLabel" /><br />
                    PersonID:
                    <asp:Label Text='<%# Eval("PersonID") %>' runat="server" ID="PersonIDLabel" /><br />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #008A8C; color: #FFFFFF;">OrderId:
                    <asp:Label Text='<%# Eval("OrderId") %>' runat="server" ID="OrderIdLabel1" /><br />
                    OrderNumber:
                    <asp:TextBox Text='<%# Bind("OrderNumber") %>' runat="server" ID="OrderNumberTextBox" /><br />
                    PersonID:
                    <asp:TextBox Text='<%# Bind("PersonID") %>' runat="server" ID="PersonIDTextBox" /><br />
                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /></li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">OrderId:
                    <asp:TextBox Text='<%# Bind("OrderId") %>' runat="server" ID="OrderIdTextBox" /><br />
                    OrderNumber:
                    <asp:TextBox Text='<%# Bind("OrderNumber") %>' runat="server" ID="OrderNumberTextBox" /><br />
                    PersonID:
                    <asp:TextBox Text='<%# Bind("PersonID") %>' runat="server" ID="PersonIDTextBox" /><br />
                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /></li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #DCDCDC; color: #000000;">OrderId:
                    <asp:Label Text='<%# Eval("OrderId") %>' runat="server" ID="OrderIdLabel" /><br />
                    OrderNumber:
                    <asp:Label Text='<%# Eval("OrderNumber") %>' runat="server" ID="OrderNumberLabel" /><br />
                    PersonID:
                    <asp:Label Text='<%# Eval("PersonID") %>' runat="server" ID="PersonIDLabel" /><br />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul runat="server" id="itemPlaceholderContainer" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">OrderId:
                    <asp:Label Text='<%# Eval("OrderId") %>' runat="server" ID="OrderIdLabel" /><br />
                    OrderNumber:
                    <asp:Label Text='<%# Eval("OrderNumber") %>' runat="server" ID="OrderNumberLabel" /><br />
                    PersonID:
                    <asp:Label Text='<%# Eval("PersonID") %>' runat="server" ID="PersonIDLabel" /><br />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:EntityFrameworkTestConnectionString %>' SelectCommand="SELECT * FROM [OrderProduct]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [OrderProduct] WHERE [OrderId] = @original_OrderId AND [OrderNumber] = @original_OrderNumber AND [PersonID] = @original_PersonID" InsertCommand="INSERT INTO [OrderProduct] ([OrderId], [OrderNumber], [PersonID]) VALUES (@OrderId, @OrderNumber, @PersonID)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [OrderProduct] SET [OrderNumber] = @OrderNumber, [PersonID] = @PersonID WHERE [OrderId] = @original_OrderId AND [OrderNumber] = @original_OrderNumber AND [PersonID] = @original_PersonID">
            <DeleteParameters>
                <asp:Parameter Name="original_OrderId" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_OrderNumber" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_PersonID" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="OrderId" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="OrderNumber" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="PersonID" Type="Int32"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="OrderNumber" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="PersonID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_OrderId" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_OrderNumber" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_PersonID" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
