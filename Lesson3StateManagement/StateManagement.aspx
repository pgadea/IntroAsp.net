<%@ Page Title="" Language="C#" ViewStateEncryptionMode="Always" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="StateManagement.aspx.cs" Inherits="Lesson3StateManagement_StateManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="margin-top: 25%;">
        <asp:Button runat="server" OnClick="Unnamed_Click" CssClass="btn btn-danger" Text="Submit" /><br />
        <asp:Label runat="server" ID="viewstatecontrol"></asp:Label><br />
        <asp:HiddenField ID="HiddenField1" Visible="false" runat="server" />
        <asp:Label ID="firstcookie" runat="server"></asp:Label>
        <asp:label runat="server" ID="sessionvalue"></asp:label><br />
        <asp:label runat="server" ID="applicationvalue"></asp:label>
    </div>

</asp:Content>

