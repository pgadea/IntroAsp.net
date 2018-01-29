<%@ Page Title="" Language="C#" MasterPageFile="~/Lesson7BootstrapForms/Forms.master" AutoEventWireup="true" CodeFile="Loggedin.aspx.cs" Inherits="Lesson7BootstrapForms_Loggedin" ClientIDMode="Static" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <script type="text/javascript">
        function openModal() {
            $('#myModal').modal('show');
        }
    </script>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <asp:Label runat="server" CssClass="pull-right" ID="username"></asp:Label></a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                <ul class="nav navbar-nav">
                </ul>

            </div>
        </div>

    </nav>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="table table-responsive">
                <asp:GridView ID="GridView1" DataSourceID="sqldatasource1" OnRowCommand="GridView1_RowCommand" DataKeyNames="PersonID" CssClass="table table-bordered table-condensed" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>

                    <Columns>
                        <asp:ButtonField CommandName="detail"
                            ControlStyle-CssClass="btn btn-info" ButtonType="Button"
                            Text="Detail" HeaderText="Detailed View" />
                        <asp:BoundField DataField="PersonID" />
                        <asp:BoundField DataField="LastName" />
                        <asp:BoundField DataField="FirstName" />
                        <asp:BoundField DataField="Address" />
                        <asp:BoundField DataField="City" />
                    </Columns>

                    <EditRowStyle BackColor="#999999"></EditRowStyle>

                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

                    <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                    <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

                    <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

                    <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

                    <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>

                </asp:GridView>
                <asp:HiddenField runat="server" ID="hiddenprimary" />
                <asp:SqlDataSource runat="server" ID="sqldatasource1" ConnectionString='<%$ ConnectionStrings:EntityFrameworkTestConnectionString %>' SelectCommand="SELECT [PersonID], [LastName], [FirstName], [Address], [City] FROM [PersonCRUD]"></asp:SqlDataSource>

            </div>



            <div class="modal fade" runat="server" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Person CRUD</h4>
                        </div>
                        <div class="modal-body">
                            <fieldset>

                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="personprimary">PersonID: </label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="personprimary" readonly="readonly" runat="server" type="text" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="personlast">LastName: </label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="personlast" runat="server" type="text" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="personfirst">FirstName: </label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="personfirst" runat="server" type="text" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="personaddress">Address: </label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="personaddress" runat="server" type="text" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="personcity">City: </label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="personcity" runat="server" type="text" />
                                    </div>
                                </div>

                            </fieldset>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
                                 <asp:Button runat="server" OnClick="Update_Click" UseSubmitBehavior="false" Text="Update" CssClass="btn btn-primary" />
                              <asp:Button runat="server" OnClick="Delete_Click" UseSubmitBehavior="false" Text="Delete" CssClass="btn btn-warning" />

                        </div>
                    </div>

                </div>
            </div>
            <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#add">ADD Person</button>

            <!-- Modal -->
            <div class="modal fade" runat="server" id="add" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Person CRUD</h4>
                        </div>
                        <div class="modal-body">
                            <fieldset>

                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="personprimary1">PersonID: </label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="personprimary1" readonly="readonly" runat="server" type="text" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="personlast1">LastName: </label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="personlast1" runat="server" type="text" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="personfirst1">FirstName: </label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="personfirst1" runat="server" type="text" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="personaddress1">Address: </label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="personaddress1" runat="server" type="text" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 control-label" for="personcity1">City: </label>
                                    <div class="col-lg-10">
                                        <input class="form-control" id="personcity1" runat="server" type="text" />
                                    </div>
                                </div>

                            </fieldset>

                        </div>
                        <div class="modal-footer">
                          <asp:Button runat="server" OnClick="Unnamed_ServerClick" UseSubmitBehavior="false" Text="ADD" CssClass="btn btn-primary" />
                        
                        </div>
                    </div>
                    </div>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

