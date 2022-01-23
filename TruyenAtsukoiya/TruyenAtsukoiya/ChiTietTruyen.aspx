<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_TrangChu.Master" AutoEventWireup="true" CodeBehind="ChiTietTruyen.aspx.cs" Inherits="TruyenAtsukoiya.ChiTietTruyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 101px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="1" class="style4">
        <tr>
            <td class="style5" style="background-color: #6d84a1">
                CHI TIẾT TRUYỆN</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="drvChiTietTruyen" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" ShowHeader="False" Width="100%" BackColor="#BCCCC7">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table class="style4" width="100%">
                                    <tr>
                                        <td class="style6" rowspan="4">
                                            <asp:Image ID="imgTenFileAnh" runat="server" Height="150px" 
                                                ImageUrl='<%# "~/Images/" + Eval("TenFileAnh") %>' Width="100px" />
                                        </td>
                                        <td>
                                            <asp:Label ID="lbTenTruyen" runat="server" Font-Bold="True" ForeColor="#ffffff" 
                                                Text='<%# Eval("TenTruyen") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Tác giả: </strong>
                                            <asp:Label ID="lbTacGia" runat="server" Text='<%# Eval("TacGia") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Giá bán: </strong>
                                            <asp:Label ID="lbGia" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>Số lượng hiện đang có: </strong>
                                            <asp:Label ID="lbSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <table cellspacing="1" class="style4">
                                    <tr>
                                        <td>
                                            <strong>Mô tả truyện:<br /> </strong>
                                            <asp:Label ID="lbMoTa" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
