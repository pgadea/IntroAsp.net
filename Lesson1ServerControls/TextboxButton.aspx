<%@ Page Language="C#" AutoEventWireup="true" ClientIDMode="Static" CodeFile="TextboxButton.aspx.cs" Inherits="Lesson1ServerControls_TextboxButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Introduction TextBox Button</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <br />
    <div>
        <div class="container">
            <div class="row">
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox><br />
                <asp:Button ID="Button1" CssClass="btn btn-primary" OnClick="Button1_Click" runat="server" Text="Submit" /><br /><br />
                <asp:Label runat="server" ID="submit1text"></asp:Label>
                <br /><br />
                <input id="Text1" type="text" class="form-control" runat="server" /><br />
                <button id="button2" class="btn btn-success" onserverclick="button2_ServerClick" runat="server">Submit2</button><br /><br />
                <span id="submit2text" runat="server"></span>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
