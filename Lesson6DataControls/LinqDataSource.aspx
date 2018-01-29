<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqDataSource.aspx.cs" Inherits="Lesson6DataControls_LinqDataSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="LastName" HeaderText="LastName" ReadOnly="True" SortExpression="LastName"></asp:BoundField>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" ReadOnly="True" SortExpression="FirstName"></asp:BoundField>
                <asp:BoundField DataField="Address" HeaderText="Address" ReadOnly="True" SortExpression="Address"></asp:BoundField>
                <asp:BoundField DataField="City" HeaderText="City" ReadOnly="True" SortExpression="City"></asp:BoundField>
            </Columns>
        </asp:GridView>
    
      
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" TableName="OrderProduct1s"></asp:LinqDataSource>

        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DataClassesDataContext" EntityTypeName="" Select="new (LastName, FirstName, Address, City)" TableName="Person1s"></asp:LinqDataSource>

    </div>
    </form>
</body>
</html>
