<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TruyenAtsukoiya.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            height: 100vh;
	        background: linear-gradient(45deg,#E1E8E8,#454A4A);
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        font-family: "Poppins";
	        color: white;
        }
        .box{
            width: 300px;
            padding: 40px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            background: #474544;
            text-align: center;
            border-radius: 10px;
        }
        .box h1{
            color: white;
            text-transform: uppercase;
            font-weight: 500;
        }
        .box #txtTenDangNhap,.box #txtMatKhau{
            border:0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid #3498db;
            padding: 14px 10px;
            width: 200px;
            outline: none;
            color: white;
            border-radius: 24px;
            transition: 0.5s;
        }
        .box #txtTenDangNhap:focus,.box #txtMatKhau:focus{
            width: 280px;
            border-color: #2ecc71;
        }
        .box #btlDangNhap{
            border:0;
            background: none;
            display: block;
            margin: 20px auto;
            text-align: center;
            border: 2px solid #2ecc71;
            padding: 14px 40px;
            outline: none;
            color: white;
            border-radius: 24px;
            transition: 0.25s;
            cursor: pointer;
        }
        .box #btlDangNhap:hover{
            background: #696969;
        }

    </style>
</head>
<body>
    <form class="box" id="form2" runat="server"> 
        <h2>ĐĂNG NHẬP TRANG QUẢN TRỊ</h2>
        <h4>(Chỉ dành cho quản trị viên)</h4>
        <label>Tên đăng nhập</label>
        <asp:TextBox ID="txtTenDangNhap" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDangNhap" ErrorMessage="Chưa nhập tên đăng nhập!">*</asp:RequiredFieldValidator><br />
        <label>Mật khẩu</label>
        <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="Chưa nhập mật khẩu!">*</asp:RequiredFieldValidator>
        <asp:Button ID="btlDangNhap" runat="server" onclick="btlDangNhap_Click" Text="Đăng nhập" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Label ID="lblLoiDangNhap" runat="server"></asp:Label> 
    </form>
</body>
</html>
