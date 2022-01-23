<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_TrangChu.Master" AutoEventWireup="true" CodeBehind="GioiThieu.aspx.cs" Inherits="TruyenAtsukoiya.GioiThieu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .box
        {
            background-color: #357878;
            background: rgba(0,0,0,0.8);
        }
        table, th, td 
        {
          border:1px solid #D0D6D6;
          margin: 3px;
        }
        .style
        {
            width: 100%;
            float: left;
            background-color: #357878;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="style">
        <h1>Giới thiệu</h1>
        <p>Web vẫn chưa hoàn chỉnh và cần bổ sung nhiều thứ, nhưng cũng tương đối đủ các chức và nay sẽ được trình bày rõ trong bài báo cáo</p>
        <div>
            <h2>ATSUKOIYA</h2>
            <table>
                <tr>
                    <th>Họ tên</th>
                    <th>Lớp</th>
                    <th>Mã sinh viên</th>
                </tr>
                <tr>
                    <td>A Phùng Hoàng Anh</td>
                    <td>CNTT K42 A</td>
                    <td>4251050001</td>
                </tr>
                <tr>
                    <td>Nguyễn Tích Thiện</td>
                    <td>CNTT K42 A</td>
                    <td>4251050002</td>
                </tr>
            </table>
        </div>
        <div>
            <h2>Hướng dẫn</h2>
            <ul>
                <li>Muốn mua hàng thì chọn xem chi tiết món hàng</li>
                <li>Nếu số lượng còn thì liên hệ trực tiếp với thành viên nhóm trong phần liên hệ</li>
                <li>Chọn Contact Me để nhắn tin trực tiếp qua Gmail và được hổ trợ</li>
                <li>Và còn nhiều phương thức hỗ trợ khác !</li>
            </ul>
        </div>
    </div>
</asp:Content>
