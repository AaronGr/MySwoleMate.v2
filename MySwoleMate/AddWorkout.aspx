<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MySwoleMate.Master" AutoEventWireup="true" CodeBehind="AddWorkout.aspx.cs" Inherits="MySwoleMate.AddWorkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="first">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <h1>CREATE NEW 5-STEP WORKOUT</h1>
                </div>
            </div>
            <div class="form-horizontal">
                <div class="form-group">
                    <asp:Label ID="WorkoutNameLabel" runat="server" Text="Workout Name"
                        AssociatedControlID="WorkoutName" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="WorkoutName" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="WorkoutNameRequired" runat="server" ErrorMessage="Workout Name is Required"
                                    ControlToValidate="WorkoutName" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Exercise1Label" runat="server" Text="Step 1-Exercise"
                        AssociatedControlID="Exercise1" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise1" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise1Required" runat="server" ErrorMessage="Step 1-Exercise is Required"
                                    ControlToValidate="Exercise1" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Exercise1SetsLabel" runat="server" Text="# of Sets"
                        AssociatedControlID="Exercise1Sets" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-2">
                        <asp:TextBox ID="Exercise1Sets" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                               <asp:RequiredFieldValidator ID="Exercise1SetsRequired" runat="server" ErrorMessage="# of Exercise 1 sets is Required"
                                    ControlToValidate="Exercise1Sets" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Exercise1SetsValidator" runat="server" ControlToValidate="Exercise1Sets" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="100"
                                    ErrorMessage="Please enter the number of sets (1-100)" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                     <asp:Label ID="Exercise1RepsLabel" runat="server" Text="# of Reps"
                        AssociatedControlID="Exercise1Reps" CssClass="col-xs-1 control-label"></asp:Label>
                    <div class="col-xs-2">
                        <asp:TextBox ID="Exercise1Reps" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise1RepsRequired" runat="server" ErrorMessage="# of Exercise 1 reps is Required"
                                    ControlToValidate="Exercise1Reps" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                 <asp:RangeValidator ID="Exercise1RepsValidator" runat="server" ControlToValidate="Exercise1Reps" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="100"
                                    ErrorMessage="Please enter the number of reps (1-100)" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Exercise2Label" runat="server" Text="Step 2-Exercise"
                        AssociatedControlID="Exercise2" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise2" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise2Required" runat="server" ErrorMessage="Step 2-Exercise is Required"
                                    ControlToValidate="Exercise2" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Exercise2SetsLabel" runat="server" Text="# of Sets"
                        AssociatedControlID="Exercise2Sets" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-2">
                        <asp:TextBox ID="Exercise2Sets" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="# of Exercise 2 sets is Required"
                                    ControlToValidate="Exercise2Sets" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Exercise2SetsValidator" runat="server" ControlToValidate="Exercise2Sets" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="100"
                                    ErrorMessage="Please enter the number of sets (1-100)" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                     <asp:Label ID="Exercise2RepsLabel" runat="server" Text="# of Reps"
                        AssociatedControlID="Exercise2Reps" CssClass="col-xs-1 control-label"></asp:Label>
                    <div class="col-xs-2">
                        <asp:TextBox ID="Exercise2Reps" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="# of Exercise 2 reps is Required"
                                    ControlToValidate="Exercise2Reps" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                 <asp:RangeValidator ID="Exercise2RepsValidator" runat="server" ControlToValidate="Exercise1Reps" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="100"
                                    ErrorMessage="Please enter the number of reps (1-100)" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Exercise3Label" runat="server" Text="Step 3-Exercise"
                        AssociatedControlID="Exercise3" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise3" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise3Required" runat="server" ErrorMessage="Step 3-Exercise is Required"
                                    ControlToValidate="Exercise3" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Exercise3SetsLabel" runat="server" Text="# of Sets"
                        AssociatedControlID="Exercise3Sets" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-2">
                        <asp:TextBox ID="Exercise3Sets" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                               <asp:RequiredFieldValidator ID="Exercise3SetsRequired" runat="server" ErrorMessage="# of Exercise 3 sets is Required"
                                    ControlToValidate="Exercise3Sets" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Exercise3SetsValidator" runat="server" ControlToValidate="Exercise3Sets" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="100"
                                    ErrorMessage="Please enter the number of sets (1-100)" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                     <asp:Label ID="Exercise3RepsLabel" runat="server" Text="# of Reps"
                        AssociatedControlID="Exercise3Reps" CssClass="col-xs-1 control-label"></asp:Label>
                    <div class="col-xs-2">
                        <asp:TextBox ID="Exercise3Reps" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise3RepsRequired" runat="server" ErrorMessage="# of Exercise 3 reps is Required"
                                    ControlToValidate="Exercise3Reps" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                 <asp:RangeValidator ID="Exercise3Validator" runat="server" ControlToValidate="Exercise3Reps" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="100"
                                    ErrorMessage="Please enter the number of reps (1-100)" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Exercise4Label" runat="server" Text="Step 4-Exercise"
                        AssociatedControlID="Exercise4" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise4" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise4Required" runat="server" ErrorMessage="Step 4-Exercise is Required"
                                    ControlToValidate="Exercise4" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Exercise4SetsLabel" runat="server" Text="# of Sets"
                        AssociatedControlID="Exercise4Sets" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-2">
                        <asp:TextBox ID="Exercise4Sets" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                               <asp:RequiredFieldValidator ID="Exercise4SetsRequired" runat="server" ErrorMessage="# of Exercise 4 sets is Required"
                                    ControlToValidate="Exercise4Sets" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Exercise4SetsValidator" runat="server" ControlToValidate="Exercise4Sets" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="100"
                                    ErrorMessage="Please enter the number of sets (1-100)" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                     <asp:Label ID="Exercise4RepsLabel" runat="server" Text="# of Reps"
                        AssociatedControlID="Exercise4Reps" CssClass="col-xs-1 control-label"></asp:Label>
                    <div class="col-xs-2">
                        <asp:TextBox ID="Exercise4Reps" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise4RepsRequired" runat="server" ErrorMessage="# of Exercise 4 reps is Required"
                                    ControlToValidate="Exercise4Reps" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                 <asp:RangeValidator ID="Exercise4RepsValidator" runat="server" ControlToValidate="Exercise4Reps" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="100"
                                    ErrorMessage="Please enter the number of reps (1-100)" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Exercise5Label" runat="server" Text="Step 5-Exercise"
                        AssociatedControlID="Exercise5" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-4">
                        <asp:TextBox ID="Exercise5" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise5Required" runat="server" ErrorMessage="Step 5-Exercise is Required"
                                    ControlToValidate="Exercise5" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                </div>
                 <div class="form-group">
                    <asp:Label ID="Exercise5SetsLabel" runat="server" Text="# of Sets"
                        AssociatedControlID="Exercise5Sets" CssClass="col-xs-4 control-label"></asp:Label>
                    <div class="col-xs-2">
                        <asp:TextBox ID="Exercise5Sets" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                               <asp:RequiredFieldValidator ID="Exercise5SetsRequired" runat="server" ErrorMessage="# of Exercise 5 sets is Required"
                                    ControlToValidate="Exercise5Sets" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="Exercise5SetsValidator" runat="server" ControlToValidate="Exercise5Sets" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="100"
                                    ErrorMessage="Please enter the number of sets (1-100)" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                     <asp:Label ID="Exercise5RepsLabel" runat="server" Text="# of Reps"
                        AssociatedControlID="Exercise5Reps" CssClass="col-xs-1 control-label"></asp:Label>
                    <div class="col-xs-2">
                        <asp:TextBox ID="Exercise5Reps" runat="server" CssClass="form-control" TextMode="SingleLine" MaxLength="30"></asp:TextBox>
                        <div class="has-error">
                            <span class="help-block">
                                <asp:RequiredFieldValidator ID="Exercise5RepsRequired" runat="server" ErrorMessage="# of Exercise 5 reps is Required"
                                    ControlToValidate="Exercise5Reps" Display="Dynamic" ValidationGroup="AllValidators"></asp:RequiredFieldValidator>
                                 <asp:RangeValidator ID="Exercise5RepsValidator" runat="server" ControlToValidate="Exercise5Reps" Display="Dynamic"
                                    ValidationGroup="AllValidators" MinimumValue="1" MaximumValue="100"
                                    ErrorMessage="Please enter the number of reps (1-100)" Type="Integer"></asp:RangeValidator>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-4 col-xs-offset-4">
                        <asp:Button ID="WorkoutAddButton" runat="server" Text="Submit" CssClass="btn btn-success"
                            OnClick="WorkoutAddButton_Click" ValidationGroup="AllValidators" />
                        <asp:HyperLink CssClass="btn btn-default" NavigateUrl="~/Workouts.aspx" runat="server" Text="Back" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
