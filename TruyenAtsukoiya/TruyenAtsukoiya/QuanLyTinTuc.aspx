<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyTinTuc.aspx.cs" Inherits="TruyenAtsukoiya.QuanLyTinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="1" class="style3" width="100%">
        <tr>
            <td align="center" colspan="4" 
                style="background-color: #9999FF; font-weight: bold">
                QUẢN LÝ TIN TỨC</td>
        </tr>
        <tr>
            <td class="style6">
                Mã Tiêu đề:</td>
            <td class="style4">
                <asp:TextBox ID="txtMaTinTuc" runat="server"></asp:TextBox>
            </td>
            <td class="style5">
                Chọn Image tin tức:</td>
            <td>
                <asp:FileUpload ID="fulAnh" runat="server" />
                <asp:Button ID="btnUploadAnh" runat="server" onclick="btnUploadAnh_Click" Text="Upload ảnh" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Tiêu đề:</td>
            <td class="style4">
                <asp:TextBox ID="txtTieuDe" runat="server" Width="268px" Rows="1" TabIndex="1"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:Label ID="lbAnh" runat="server" Text="Image tin tức:"></asp:Label>
            </td>
            <td rowspan="5">
                <asp:Image ID="imgAnh" runat="server" Height="200px" Width="300px" TabIndex="5" />
                <asp:TextBox ID="txtTenFileAnh" runat="server" Rows="6" TabIndex="6"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Nội dung 1:</td>
            <td class="style4">
                <asp:TextBox ID="txtNoiDung1" runat="server" Rows="2" TextMode="MultiLine"  Width="268px" TabIndex="2"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Nội dung 2:</td>
            <td class="style4">
                <asp:TextBox ID="txtNoiDung2" runat="server" Rows="3" TextMode="MultiLine" Width="268px" TabIndex="3"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Nội dung 3:</td>
            <td class="style4">
                <asp:TextBox ID="txtNoiDung3" runat="server" Rows="4" TextMode="MultiLine" Width="268px" TabIndex="4"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
            </td>
            <td class="auto-style2">
            </td>
            <td class="auto-style2">
            </td>
            <td class="auto-style2">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" class="auto-style2">
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
                    CellPadding="3" DataKeyNames="MaTinTuc" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="100%" BorderStyle="None" CellSpacing="2">
                    <Columns>
                        <asp:BoundField DataField="MaTinTuc" HeaderText="Mã Tin Tức" />
                        <asp:BoundField DataField="TieuDe" HeaderText="Tiêu Đề" />
                        <asp:BoundField DataField="TenFileAnh" HeaderText="Tên file ảnh" />
                        <asp:BoundField DataField="NoiDung1" HeaderText="Nội dung 1" />
                        <asp:BoundField DataField="NoiDung2" HeaderText="Nội dung 2" />
                        <asp:BoundField DataField="NoiDung3" HeaderText="Nội dung 3" />
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
