﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Dersguncelle.aspx.cs" Inherits="AspNetBootstrap.Dersguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="Form1" runat="server">
       <div class="form-group">
            <div>
                <asp:Label for="TxtDersID" runat="server">Ders Id</asp:Label>
                <asp:TextBox ID="TxtDersID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtDersAD" runat="server">Ders Ad</asp:Label>
                <asp:TextBox ID="TxtDersAD" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
        </div>
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-info" OnClick="Button1_Click"  />

    </form>
</asp:Content>
