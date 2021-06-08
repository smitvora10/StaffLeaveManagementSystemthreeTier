﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Content/SLMSAdminPanel.master" AutoEventWireup="true" CodeFile="CityAddEdit.aspx.cs" Inherits="AdminPanel_City_CityAddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphScriptBlock" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphToList" runat="Server">
    <asp:Button ID="btnCityList" runat="Server" Text="City List" CssClass="btn btn-primary" OnClick="btnCityList_Click" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphTitle" runat="Server">
    <h2 style="font-family: 'Berlin Sans FB Demi'; font-weight: bold;">
        <asp:Label ID="lblPageHeaderText" runat="server">
        </asp:Label></h2>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphBreadCrumb" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="cphContent" runat="Server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <div class="container">
        <br />
        <div class="row mb-2">
            <div class="offset-md-4 col-md-4 alert alert-danger" id="divError" visible="false" runat="server">
                <asp:label id="lblErrorMessage" runat="server" text=""></asp:label>
            </div>
        </div>
        <div class="row mb-2">
            <div class="offset-md-4 col-md-4 alert alert-success" id="divSuccess" visible="false" runat="server">
                <asp:label id="lblSuccessMessage" runat="server" text=""></asp:label>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4 text-right">
                <span class="font-weight-bold">
                    <span style="color: red">*</span>
                    <label>State</label>
                </span>
            </div>
            <div class="col-md-4">
                <asp:DropDownList ID="ddlStateName" runat="server" CssClass="form-control">
                </asp:DropDownList>

                <asp:CompareValidator ID="cvStateName" runat="server" ErrorMessage="Select State"
                    Display="Dynamic" CssClass="text-danger" ControlToValidate="ddlStateName"
                    Operator="NotEqual" ValidationGroup="vgSave" ValueToCompare="-1">
                </asp:CompareValidator>
            </div>
        </div>
        <br />
        <div class="row align-center">
            <div class="col-md-4 text-right">
                <span class="font-weight-bold">
                    <span style="color: red">*</span>
                    <label>City</label>
                </span>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtCityName" runat="server" placeholder="Add City" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCityName" runat="server" ErrorMessage="Enter City"
                    Display="Dynamic" ForeColor="Red" ControlToValidate="txtCityName" ValidationGroup="vgSave"></asp:RequiredFieldValidator>

            </div>
        </div>
        <br />

        <div class="row align-center">
            <div class="col-md-4 text-right">
                <span class="font-weight-bold">
                    <label>Pincode</label>
                </span>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtPincode" runat="server" placeholder="Add Pincode" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revPincode" runat="server" ErrorMessage="Enter Correct Pincode" Display="Dynamic"
                    ForeColor="Red" ValidationExpression="[0-9]{6}" ControlToValidate="txtPincode" ValidationGroup="vgSave"></asp:RegularExpressionValidator>

            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-1 offset-4">
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-info" ValidationGroup="vgSave" OnClick="btnSave_Click" />
            </div>
            <div>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-danger" OnClick="btnCancel_Click" />
            </div>
        </div>
    </div>
</asp:Content>
