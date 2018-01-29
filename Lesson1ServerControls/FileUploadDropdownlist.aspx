<%@ Page Language="C#" AutoEventWireup="true" ClientIDMode="Static" CodeFile="FileUploadDropdownlist.aspx.cs" Inherits="FileUploadDropdownlist" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Introduction File Upload Dropdownlist Controls</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.10.2.js"></script>
    <script src="../Scripts/bootstrap.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <br />
        <div>
            <div class="container">
                <div class="row">
                    <h3>File Upload and Dropdownlist(ASP.NET Server Control):</h3>
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                    <div class="input-group">
                        <span class="input-group-addon formglyphgradient"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:DropDownList runat="server" ForeColor="Black" AutoPostBack="false" CssClass="form-control" ID="dropdownlist">
                            <asp:ListItem Value="1a" Text="First">
                            First
                            </asp:ListItem>
                            <asp:ListItem Value="2a" Text="Second">
                            Second
                            </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br />
                    <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" CssClass="btn btn-warning" Text="Save" /><br />
                    <asp:Label ID="lblmessagesave" runat="server" />

                    <h3>File Upload and Dropdownlist(HTML Server Control):</h3>
                    <br />
                    <input id="File1" type="file" runat="server" />
                    <br />
                    <br />
                    <div class="input-group">
                        <span class="input-group-addon formglyphgradient"><i class="glyphicon glyphicon-user"></i></span>
                        <select id="Select1" class="form-control" runat="server">
                            <option value="1">First1</option>
                            <option value="2">Second2</option>
                        </select>
                    </div>
                    <br />
                    <button runat="server" class="btn btn-info" onserverclick="btnsave_Click2" id="savefile">Save</button><br />
                    <span id="savedmessage" runat="server"></span>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
