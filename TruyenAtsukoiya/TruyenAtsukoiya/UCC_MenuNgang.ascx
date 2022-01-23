<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCC_MenuNgang.ascx.cs" Inherits="TruyenAtsukoiya.UCC_MenuNgang" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    span
    {
        color: #ffffff;
    }
</style>

<table cellspacing="1" class="style1">
    <tr>
        <td align="center" style="height: 35px; background-color: #272B2B;" 
            width="100%">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" Font-Bold="True" Font-Underline="False" ForeColor="#ffffff">Trang chủ</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/GioiThieu.aspx" Font-Bold="True" Font-Underline="False" ForeColor="#ffffff">Giới thiệu</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx" Font-Bold="True" Font-Underline="False" ForeColor="#ffffff">Đăng nhập</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/TinTuc.aspx" Font-Bold="True" Font-Underline="False" ForeColor="#ffffff">Tin Tức</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/profile/index.html" Font-Bold="True" Font-Underline="False" ForeColor="#ffffff">Liên hệ</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;
            

            <span>Thời gian bây giờ là:</span>
            <span id="gio">00</span><span>:</span>       
            <span id="phut">00</span><span>:</span>
            <span id="giay">00</span>&nbsp;&nbsp;

            <span><script> document.write(new Date().toLocaleDateString()); </script></span>

 	        <script>
                 function Dong_ho() {
                     var gio = document.getElementById("gio");
                     var phut = document.getElementById("phut");
                     var giay = document.getElementById("giay");
                     var Gio_hien_tai = new Date().getHours();
                     var Phut_hien_tai = new Date().getMinutes();
                     var Giay_hien_tai = new Date().getSeconds();
                     gio.innerHTML = Gio_hien_tai;
                     phut.innerHTML = Phut_hien_tai;
                     giay.innerHTML = Giay_hien_tai;
                 }
                 var Dem_gio = setInterval(Dong_ho, 1000);
             </script>
        </td>
    </tr>
</table>