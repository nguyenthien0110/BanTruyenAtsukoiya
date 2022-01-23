<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_TrangChu.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="TruyenAtsukoiya.TinTuc" %>
<%@ Register src="UCC_DatalistTinTuc.ascx" tagname="UCC_DatalistTinTuc" tagprefix="uc5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc5:UCC_DatalistTinTuc ID="UCC_DatalistTinTuc1" runat="server" />
</asp:Content>
