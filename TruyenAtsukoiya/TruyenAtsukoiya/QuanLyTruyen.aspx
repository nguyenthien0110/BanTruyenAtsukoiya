<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyTruyen.aspx.cs" Inherits="TruyenAtsukoiya.QuanLyTruyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 280px;
        }
        .style5
        {
            width: 122px;
            color: #F5F7F7;
        }
        .style6
        {  
            color: #F5F7F7;
        }
        .style7
        {
            width: 65px;
            height: 14px;
        }
        .style11
        {
            height: 14px;
        }
        .style12
        {
            width: 280px;
            height: 14px;
        }
        .style13
        {
            width: 122px;
            height: 14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="1" class="style3" width="100%">
        <tr>
            <td align="center" colspan="4" 
                style="background-color: #9999FF; font-weight: bold">
                QUẢN LÝ TRUYỆN</td>
        </tr>
        <tr>
            <td class="style6">
                Mã truyện:</td>
            <td class="style4">
                <asp:TextBox ID="txtMaTruyen" runat="server"></asp:TextBox>
            </td>
            <td class="style5">
                Chọn Image truyện:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="btnUploadAnh" runat="server" onclick="btnUploadAnh_Click" Text="Upload ảnh" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Tên truyện:</td>
            <td class="style4">
                <asp:TextBox ID="txtTenTruyen" runat="server" Width="268px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:Label ID="lblAnhTruyen" runat="server" Text="Image truyện:"></asp:Label>
            </td>
            <td rowspan="5">
                <asp:Image ID="imgTruyen" runat="server" Height="167px" Width="134px" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Tác giả:</td>
            <td class="style4">
                <asp:TextBox ID="txtTacGia" runat="server" Width="266px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtTenFileAnh" runat="server" Width="81px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Giá:</td>
            <td class="style4">
                <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Số lượng:</td>
            <td class="style4">
                <asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Mô tả:</td>
            <td class="style4">
                <asp:TextBox ID="txtMoTa" runat="server" Rows="4" TextMode="MultiLine" Width="268px"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Mã bộ truyện:</td>
            <td class="style4">
                <asp:TextBox ID="txtMaBoTruyen" runat="server"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txbTimKiem" runat="server"></asp:TextBox>
                <asp:Button ID="btnTim" runat="server"  OnClick="btnTim_Click" Text ="Tìm"/>
            </td>
        </tr>
        <tr>
            <td class="style11">
            </td>
            <td class="style12">
            </td>
            <td class="style13">
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Button ID="cmdThem" runat="server" onclick="cmdThem_Click" Text="Thêm" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdXoa" runat="server" onclick="cmdXoa_Click" Text="Xóa" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdSua" runat="server" onclick="cmdSua_Click" Text="Sửa" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdGhi" runat="server" onclick="cmdGhi_Click" Text="Ghi" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdKhongGhi" runat="server" onclick="cmdKhongGhi_Click" Text="Không ghi" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Label ID="lblThongBao" runat="server" ForeColor="#CC3300" Text="Label"></asp:Label>&nbsp;&nbsp;
                <asp:Button ID="cmdCo" runat="server" onclick="cmdCo_Click" Text="Có" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="cmdKhong" runat="server" onclick="cmdKhong_Click" Text="Không" />
            </td>
        </tr>
        <tr>
            <td class="style7">
            </td>
            <td class="style12">
            </td>
            <td class="style13">
            </td>
            <td class="style11">
            </td>
        </tr>
        <tr>
            <td class="style6" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="MaTruyen" BorderStyle="None" onselectedindexchanged="GridView1_SelectedIndexChanged" Width="100%" CellSpacing="2">
                    <Columns>
                        <asp:BoundField DataField="MaTruyen" HeaderText="Mã truyện" />
                        <asp:BoundField DataField="TenTruyen" HeaderText="Tên truyện" />
                        <asp:BoundField DataField="TacGia" HeaderText="Tác giả" />
                        <asp:BoundField DataField="Gia" HeaderText="Giá" />
                        <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                        <asp:BoundField DataField="MoTa" HeaderText="Mô tả" />
                        <asp:BoundField DataField="TenFileAnh" HeaderText="Tên File ảnh" />
                        <asp:BoundField DataField="MaBoTruyen" HeaderText="Mã bộ truyên" />
                        <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" 
                        HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
