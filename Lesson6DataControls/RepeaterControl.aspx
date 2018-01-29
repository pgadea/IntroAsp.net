<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RepeaterControl.aspx.cs" Inherits="Lesson6DataControls_RepeaterControl" %>

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
    
        <table class="table table-bordered table-responsive">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <tr>
                    <th>
                        PersonID
                    </th>
                     <th>
                         LastName
                    </th>
                     <th>
                         FirstName
                    </th>
                     <th>
                         Address
                    </th>
                     <th>
                         City
                    </th>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>

                <tr>
                    <td>
                        <%# Eval("PersonID") %>
                    </td>
                    <td>
                        <%# Eval("LastName") %>
                    </td>
                    <td>
                         <%# Eval("FirstName") %>
                    </td>
                    <td>
                         <%# Eval("Address") %>
                    </td>
                    <td>
                         <%# Eval("City") %>
                    </td>

                </tr>

            </ItemTemplate>
        </asp:Repeater>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:EntityFrameworkTestConnectionString %>' SelectCommand="SELECT [PersonID], [LastName], [FirstName], [Address], [City] FROM [Person]"></asp:SqlDataSource>
    </form>
</body>
</html>
