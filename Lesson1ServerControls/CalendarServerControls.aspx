<%@ Page Language="C#" AutoEventWireup="true" ClientIDMode="Static" CodeFile="CalendarServerControls.aspx.cs" Inherits="CalendarServerControls" %>

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
                    <asp:Calendar ID="Calendar1" EnableViewState="false" runat="server" BackColor="White" SelectionMode="DayWeekMonth" OnSelectionChanged="Calendar1_SelectionChanged" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt"></DayHeaderStyle>

                        <DayStyle BackColor="#CCCCCC"></DayStyle>

                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White"></NextPrevStyle>

                        <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>

                        <SelectedDayStyle BackColor="#333399" ForeColor="White"></SelectedDayStyle>

                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt"></TitleStyle>

                        <TodayDayStyle BackColor="#999999" ForeColor="White"></TodayDayStyle>
                    </asp:Calendar>
                    <asp:Label runat="server" ID="submit1text"></asp:Label>
                    <asp:CheckBox ID="CheckBox1" AutoPostBack="true" runat="server" Text="Main" OnCheckedChanged="CheckBox1_CheckedChanged" />
                    <asp:Label runat="server" ID="Label2"></asp:Label>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:listitem>
                            first
                        </asp:listitem>
                        <asp:listitem>
                            second
                        </asp:listitem>
                    </asp:CheckBoxList>
                    <asp:Label runat="server" ID="Label1"></asp:Label>
                    <span id="submit2text" runat="server"></span>


                    <asp:BulletedList ID="BulletedList1" runat="server"></asp:BulletedList>

                </div>
                <asp:Image ID="Image1" ImageUrl="~/IMG/header1.jpg" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>
