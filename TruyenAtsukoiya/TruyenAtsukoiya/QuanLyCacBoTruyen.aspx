<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyCacBoTruyen.aspx.cs" Inherits="TruyenAtsukoiya.QuanLyCacBoTruyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            height: 25px;
        }
        .style5
        {  
            color: #F5F7F7;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table cellspacing="1" class="style3" 
        style="padding-right: 150px; padding-left: 150px;" width="100%">
        <tr>
            <td align="center" class="style4" colspan="2" 
                style="background-color: #9999FF; font-weight: bold;">
                QUẢN LÝ CÁC BỘ TRUYỆN</td>
        </tr>
        <tr>
            <td class="style5">
                Mã Bộ Truyện:</td>
            <td>
                <asp:TextBox ID="txtMaBoTruyen" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Tên Bộ Truyện:</td>
            <td>
                <asp:TextBox ID="txtTenBoTruyen" runat="server" Width="311px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style5" colspan="2">
                <asp:Button ID="cmdThem" runat="server" onclick="cmdThem_Click" Text="Thêm" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdXoa" runat="server" onclick="cmdXoa_Click" Text="Xóa" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdSua" runat="server" onclick="cmdSua_Click" Text="Sửa" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdGhi" runat="server" onclick="cmdGhi_Click" Text="Ghi" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdKhongGhi" runat="server" onclick="cmdKhongGhi_Click" 
                    Text="Không ghi" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style5" colspan="2">
                <asp:Label ID="lblThongBao" runat="server" ForeColor="#CC3300" Text="Label"></asp:Label>&nbsp;&nbsp;
                <asp:Button ID="cmdCo" runat="server" onclick="cmdCo_Click" Text="Có" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdKhong" runat="server" onclick="cmdKhong_Click" Text="Không" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="100%" 
                    DataKeyNames="MaBoTruyen" CellSpacing="2">
                    <Columns>
                        <asp:BoundField DataField="MaBoTruyen" HeaderText="Mã bộ truyện" />
                        <asp:BoundField DataField="TenBoTruyen" HeaderText="Tên bộ truyện" />
                        <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
        </tr>
    </table>

</asp:Content>
