<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_TrangChu.Master" AutoEventWireup="true" CodeBehind="TruyenTheoBo.aspx.cs" Inherits="TruyenAtsukoiya.TruyenTheoBo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="1" class="style4" width="100%">
        <tr>
            <td class="style5" style="background-color: #6d84a1">
                <asp:Label ID="lblTongSoTruyen" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" 
                    RepeatColumns="3" Width="100%">
                    <ItemTemplate>
                        <table cellspacing="1" class="style4">
                            <tr>
                                <td class="style6" rowspan="3">
                                    <asp:Image ID="Image1" runat="server" Height="150px" 
                                        ImageUrl='<%# "~/Images/" + Eval("TenFileAnh") %>' Width="100px" />
                                </td>
                                <td>
                                    <asp:HyperLink ID="HyperLink1" runat="server" 
                                        NavigateUrl='<%# "ChiTietTruyen.aspx?MaTruyen=" + Eval("MaTruyen") %>' 
                                        Text='<%# Eval("Tentruyen") %>'></asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Tác giả: </strong>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TacGia") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong>Giá bán: </strong>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
