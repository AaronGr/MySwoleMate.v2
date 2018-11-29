<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MySwoleMate.Master" AutoEventWireup="true" CodeBehind="ViewWorkout.aspx.cs" Inherits="MySwoleMate.ViewWorkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="first">        <div class="container">            <div class="row">                    <h1>5-STEP WORKOUT</h1>            </div>
            <div id="NoWorkoutHeader" runat="server" class="row">
                <h1 class="text-center">THERE IS NO WORKOUT ASSIGNED TO:</h1>
            </div>
            <div class="row">
                <div class="col-xs-12 text-center h1"                      <asp:Label ID="TraineeName" runat="server" Text="(Trainee Name)"
                        CssClass="col-xs-12 text-center h1"></asp:Label>                </div>
            </div>
            <div id="ExerciseList" runat="server" class="text-center text-capitalize h1">
                <div class="row">
                    <asp:Label ID="WorkoutName" runat="server" Text="Placeholder"
                    CssClass="text-center text-capitalize"></asp:Label>
                </div>
                <div class="row">
                    <asp:Label ID="DisplayExercise1" runat="server" Text="Placeholder" 
                    CssClass="text-center"></asp:Label>
                </div>
                <div class="row">
                    <asp:Label ID="DisplayExercise2" runat="server" Text="Placeholder" 
                    CssClass="text-center"></asp:Label>
                </div>
                <div class="row">
                    <asp:Label ID="DisplayExercise3" runat="server" Text="Placeholder" 
                    CssClass="text-center"></asp:Label>
                </div>
                <div class="row">
                    <asp:Label ID="DisplayExercise4" runat="server" Text="Placeholder" 
                    CssClass="text-center"></asp:Label>
                </div>
                <div class="row">
                    <asp:Label ID="DisplayExercise5" runat="server" Text="Placeholder" 
                    CssClass="text-center"></asp:Label>
                </div>
            </div>
            <div class="form-group col-xs-offset-5">
                <asp:HyperLink id="AssignWorkOutLink" Text="Assign Workout" runat="server" 
                 NavigateUrl="~/AssignWorkout.aspx?TraineeID=" CssClass="btn btn-success" />
                <asp:HyperLink CssClass="btn btn-default" NavigateUrl="~/Trainees.aspx" runat="server" Text="Back" />
            </div>
        </div>
      </section>
</asp:Content>
