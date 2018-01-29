<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EntityDataSource.aspx.cs" Inherits="Lesson6DataControls_EntityDataSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.10.2.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="table table-responsive">
        <asp:GridView ID="GridView1" CssClass="table-bordered table-condensed" runat="server"></asp:GridView><br /><br />
    </div>
        <br />
         <div class="table table-responsive">
         <asp:GridView ID="GridView2" CssClass="table-bordered table-condensed" runat="server"></asp:GridView>
         </div>
        <asp:TextBox ID="TextBox1" CssClass="form-control col-lg-2" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" OnClick="Delete_Click" Text="Delete" />
        <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" OnClick="Insert_Click" Text="Insert" />
         <asp:Button ID="Button3" CssClass="btn btn-primary" runat="server" OnClick="Update_Click" Text="Update" />
        </form>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server"></asp:EntityDataSource>
</body>
</html>
