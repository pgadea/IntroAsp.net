<%@ Page Language="C#" AutoEventWireup="true" ViewStateEncryptionMode="Always" CodeFile="Default.aspx.cs" Inherits="Lesson2ObjectOriented_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Object Oriented</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <asp:ListBox runat="server" ID="Listbox1"></asp:ListBox>
         <br />
            <asp:BulletedList ID="BulletedList1" runat="server"></asp:BulletedList>
            <br />
             <asp:label runat="server" ID="hello"></asp:label>
        </div>
    </form>

</body>
</html>
