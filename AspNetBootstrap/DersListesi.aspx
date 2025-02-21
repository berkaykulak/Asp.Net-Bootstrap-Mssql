﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="AspNetBootstrap.DersListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">Ders Id</th>
            <th scope="col">Ders Adı</th>

            <th scope="col">İŞLEMLER</th>


        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DERSID")%></td>
                        <td><%#Eval("DERSAD")%></td>
                       

                        <td>
                            <asp:HyperLink NavigateUrl='<%# "DersSil.aspx?DERSID="+Eval("DERSID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink  NavigateUrl='<%# "DersGuncelle.aspx?DERSID="+Eval("DERSID")%>' ID="HyperLink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>


           
        </tbody>
    </table>
     <asp:HyperLink ID="HyperLink3" CssClass="btn btn-info" runat="server" NavigateUrl="~/DersEkle.aspx">Ders Ekle</asp:HyperLink>

</asp:Content>
