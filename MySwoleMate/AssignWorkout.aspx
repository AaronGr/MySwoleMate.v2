﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MySwoleMate.Master" AutoEventWireup="true" CodeBehind="AssignWorkout.aspx.cs" Inherits="MySwoleMate.AssignWorkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="first">
            <div class="row">
                        CssClass="col-xs-12 text-center h1"></asp:Label>
            <div class="row">
                            </asp:DropDownList>
                            <span class="help-block">
                    <div class="col-xs-4 col-xs-offset-5">
                        <asp:Button ID="WorkoutAssignButton" runat="server" Text="Assign" CssClass="btn btn-success"
                            OnClick="WorkoutAssignButton_Click" ValidationGroup="AllValidators" />
                        <asp:HyperLink CssClass="btn btn-default" NavigateUrl="~/Trainees.aspx" runat="server" Text="Back" />
                    </div>
                </div>
        </section>
</asp:Content>