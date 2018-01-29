<%@ Page Title="" Language="C#" MasterPageFile="~/Lesson7BootstrapForms/Forms.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Lesson7BootstrapForms_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
    <section class="form-horizontal" style="margin:0 auto;">
    <fieldset>
    <legend>Legend</legend>
    <div class="form-group">
      <label class="col-lg-2 control-label" for="inputusername">Username</label>
      <div class="col-lg-10">
        <input class="form-control" runat="server" id="inputusername"  required="required"  type="text" placeholder="Username"/>
            <asp:RequiredFieldValidator ID="Required1" ForeColor="Red" runat="server" ControlToValidate="inputusername" 
            ErrorMessage="Username Required"></asp:RequiredFieldValidator>
        <br />
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-2 control-label" for="inputpassword">Password</label>
      <div class="col-lg-10">
        <input class="form-control" runat="server" id="inputpassword" required="required" type="password" placeholder="Password"/>
        <asp:RequiredFieldValidator ID="Required2" ForeColor="Red" runat="server" ControlToValidate="inputpassword" 
            ErrorMessage="Password Required"></asp:RequiredFieldValidator>
        <br />
        
      </div>
    </div>
   
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button class="btn btn-danger" runat="server" onserverclick="Unnamed_ServerClick" type="button">Go</button>
      </div>
    </div>
  </fieldset>
    </section>
            </div>
        </div>
</asp:Content>

