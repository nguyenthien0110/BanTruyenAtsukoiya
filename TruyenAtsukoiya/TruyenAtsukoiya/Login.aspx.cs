using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TruyenAtsukoiya
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btlDangNhap_Click(object sender, EventArgs e)
        {
            // Tạo đối tượng Connec và mở kết nối đến CSDL SQL Server
            ketnoi kn = new ketnoi();
            String chuoiketnoi = kn.chuoi_kn();
            SqlConnection Conn = new SqlConnection(chuoiketnoi);
            Conn.Open();

            // Tạo đối tượng Command và select toàn bộ bảng NguoiDung
            SqlCommand Cmd;
            Cmd = new SqlCommand();
            Cmd.CommandText = "Select * from NguoiDung where (TenDangNhap=N'" + txtTenDangNhap.Text + "') and (MatKhau=N'" + txtMatKhau.Text + "')";
            Cmd.Connection = Conn;

            // Dữ liệu lấy ra từ csdl được lưu vào biến Dr
            SqlDataReader Dr;
            Dr = Cmd.ExecuteReader();

            // HasRows là thuộc tính kiểu boolean của DataReader, cho biết DataReader có chứa dữ liệu hay không?
            if (Dr.HasRows == true)
                Response.Redirect("DefaultAdmin.aspx");//Đăng nhập thành công
            else
                lblLoiDangNhap.Text = "Đăng nhập không thành công! Vui lòng xem lại tên đăng nhập và mật khẩu";//Đăng nhập không thành công

            // Giải phóng kết nối. 
            Cmd.Dispose();
            Conn.Close();
        }
    }
}