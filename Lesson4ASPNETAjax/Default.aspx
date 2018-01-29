<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Lesson4ASPNETAjax_Default" %>

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
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" ID="update1">
            <ContentTemplate>
               <%-- <asp:Timer ID="Timer1" Interval="1000" OnTick="Timer1_Tick" runat="server"></asp:Timer>--%>
                <div>
                    <%--<asp:Button ID="clickme" CssClass="btn btn-primary" runat="server" OnClick="clickme_Click" Text="Button" /><br />--%>
                    <br />
                    <asp:Label runat="server" ID="textme">hello john</asp:Label><br />
                    <asp:Label runat="server" ID="test">hey</asp:Label>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="clickme" EventName="Click" />
                 <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
        <
        <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="update1" runat="server">
            <ProgressTemplate>
                <div style="margin-left:200px;">
                    <img src="../IMG/ajax-loader.gif" />
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:Button ID="clickme" CssClass="btn btn-primary" runat="server" OnClick="clickme_Click" Text="Button" /><br />
        <asp:Timer ID="Timer1" Interval="1000" OnTick="Timer1_Tick" runat="server"></asp:Timer>
    </form>
</body>
</html>
