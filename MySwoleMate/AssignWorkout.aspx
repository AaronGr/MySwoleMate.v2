<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MySwoleMate.Master" AutoEventWireup="true" CodeBehind="AssignWorkout.aspx.cs" Inherits="MySwoleMate.AssignWorkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="first">        <div class="container">            <div class="row">                <div class="col-xs-12 text-center">                    <h1>ASSIGN 5-STEP WORKOUT</h1>                </div>            </div>
            <div class="row">                <div class="col-xs-12 text-center">                      <asp:Label ID="TraineeName" runat="server" Text="(Trainee Name)"
                        CssClass="col-xs-12 text-center h1"></asp:Label>                </div>            </div>
            <div class="row">                <div class="form-group">                    <div class="col-xs-8 col-xs-offset-2">                            <asp:DropDownList ID="WorkoutDropList" runat="server"                            CssClass="form-control" DataTextField="WorkoutName" DataValueField="WorkoutID">
                            </asp:DropDownList>                        <div class="has-error">
                            <span class="help-block">                                <asp:RequiredFieldValidator ID="WorkoutSelectedRequired" runat="server" ErrorMessage="Please Select a Workout to Assign"                                ControlToValidate="WorkoutDropList" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>                            </span>                        </div>                    </div>                 </div>            </div>                 <div class="form-group">
                    <div class="col-xs-4 col-xs-offset-5">
                        <asp:Button ID="WorkoutAssignButton" runat="server" Text="Assign" CssClass="btn btn-success"
                            OnClick="WorkoutAssignButton_Click" ValidationGroup="AllValidators" />
                        <asp:HyperLink CssClass="btn btn-default" NavigateUrl="~/Trainees.aspx" runat="server" Text="Back" />
                    </div>
                </div>          </div>
        </section>
</asp:Content>
