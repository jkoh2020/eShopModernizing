﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="eShopLegacyWebForms.Catalog.Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class="esh-body-title">Create</h2>

    <div>
        <div class="form-horizontal">
            <div class="form-group">
                <label class="control-label col-md-2">Name</label>
                <div class="col-md-10">
                    <asp:TextBox ID="Name" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Name"
                        CssClass="text-danger" ErrorMessage="The Name field is required." />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-2">Description</label>
                <div class="col-md-10">
                    <asp:TextBox ID="Description" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-2">Brand</label>
                <div class="col-md-10">
                    <asp:DropDownList ID="Brand" runat="server"
                        SelectMethod="GetBrands"
                        ItemType="eShopLegacyWebForms.Models.CatalogBrand"
                        DataTextField="Brand"
                        DataValueField="Id"
                        CssClass="form-control">
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-2">Type</label>
                <div class="col-md-10">
                    <asp:DropDownList ID="Type" runat="server"
                        SelectMethod="GetTypes"
                        ItemType="eShopLegacyWebForms.Models.CatalogType"
                        DataTextField="Type"
                        DataValueField="Id"
                        CssClass="form-control">
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-2">Price</label>
                <div class="col-md-10">
                    <asp:TextBox ID="Price" runat="server" CssClass="form-control">0.00</asp:TextBox>
                    <asp:RangeValidator runat="server" ControlToValidate="Price" Type="Currency" CssClass="text-danger"
                        MinimumValue="0" MaximumValue="1000000" ErrorMessage="The Price must be a positive number with maximum two decimals between 0 and 1 million." />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-2">Picture name</label>
                <div class="col-md-10 esh-form-information">
                    Uploading images not allowed for this version.
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-2">Stock</label>
                <div class="col-md-10">
                    <asp:TextBox ID="Stock" runat="server" CssClass="form-control">0</asp:TextBox>
                    <asp:RangeValidator runat="server" ControlToValidate="Stock" Type="Integer" CssClass="text-danger"
                        MinimumValue="0" MaximumValue="10000000" ErrorMessage="The field Stock must be between 0 and 10 million." />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-2">Restock</label>
                <div class="col-md-10">
                    <asp:TextBox ID="Restock" runat="server" CssClass="form-control">0</asp:TextBox>
                    <asp:RangeValidator runat="server" ControlToValidate="Restock" Type="Integer" CssClass="text-danger"
                        MinimumValue="0" MaximumValue="10000000" ErrorMessage="The field Restock must be between 0 and 10 million." />
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-2">Max stock</label>
                <div class="col-md-10">
                    <asp:TextBox ID="Maxstock" runat="server" CssClass="form-control">0</asp:TextBox>
                    <asp:RangeValidator runat="server" ControlToValidate="Maxstock" Type="Integer" CssClass="text-danger"
                        MinimumValue="0" MaximumValue="10000000" ErrorMessage="The field Max stock must be between 0 and 10 million." />
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button CssClass="btn esh-button" runat="server" Text="[ Create ]"
                        OnClick="Create_Click" />
                </div>
            </div>
        </div>
    </div>

    <div>
        <a runat="server" href="~" class="esh-link-item esh-link-item--margin">Back to list
        </a>
    </div>
</asp:Content>
