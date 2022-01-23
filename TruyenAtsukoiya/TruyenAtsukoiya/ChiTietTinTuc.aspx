<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_TrangChu.Master" AutoEventWireup="true" CodeBehind="ChiTietTinTuc.aspx.cs" Inherits="TruyenAtsukoiya.ChiTietTinTuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 380px;
            height: 500px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="grvChiTietTinTuc" runat="server" AutoGenerateColumns="False" 
        EnableModelValidation="True" ShowHeader="False" Width="100%">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table width="100%">
                        <tr>
                            <td>
                                <ul>
                                    <li><asp:Label ID="lbTieuDe" runat="server" Font-Bold="True" ForeColor="#ffffff" Font-Size="30px" Text='<%# Eval("TieuDe") %>'></asp:Label></li>
                                </ul>
                            </td>
                        </tr>
                    </table>
                    <table width="100%">
                        <tr>
                            <td class="style6" rowspan="4">
                                <asp:Image ID="imgTinTucChiTietTinTuc" runat="server" Height="500px" ImageUrl='<%# "~/ImagesTinTuc/" + Eval("TenFileAnh") %>' Width="600px" />
                            </td>
                        </tr>
                    </table>
                    <table width="100%">
                        <tr>
                            <td>
                                <asp:Label ID="lbNoiDung1ChiTiet" runat="server" Text='<%# Eval("NoiDung1") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table width="100%">
                        <tr>
                            <td>
                                <asp:Label ID="lbNoiDung2ChiTiet" runat="server" Text='<%# Eval("NoiDung2") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table width="100%">
                        <tr>
                            <td>
                                <asp:Label ID="lbNoiDung3ChiTiet" runat="server" Text='<%# Eval("NoiDung3") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
