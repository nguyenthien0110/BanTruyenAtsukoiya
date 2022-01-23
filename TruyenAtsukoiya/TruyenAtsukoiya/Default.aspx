<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_TrangChu.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TruyenAtsukoiya.Default" %>

<%@ Register src="UCC_AllTruyenDataList.ascx" tagname="UCC_AllTruyenDataList" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:UCC_AllTruyenDataList ID="UCC_AllTruyenDataList1" runat="server" />
    <script>
        alert('Chào mừng đến với trang web bán truyện Atsukoiya ');
    </script>
</asp:Content>