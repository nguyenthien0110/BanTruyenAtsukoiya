using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TruyenAtsukoiya
{
    public partial class TruyenTheoBo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["MaBoTruyenLayDuoc"] = int.Parse(Request.QueryString.Get("MaBoTruyen"));
                laybangchogridview();
                DemSoMauTinTuongUngVoiTheLoaiTruyenDuocChon();
            }
        }


        public void laybangchogridview()
        {
            ketnoi kn = new ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("select * from Truyen where MaBoTruyen=" + (int)ViewState["MaBoTruyenLayDuoc"] + "order by MaTruyen desc");
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }


        public void DemSoMauTinTuongUngVoiTheLoaiTruyenDuocChon()
        {
            // Tạo đối tượng Connection và mở kết nối đến CSDL SQL Server
            string chuoiketnoi = @"Data Source=.\sqlexpress;Initial Catalog=TruyenAtsukoiya;Integrated Security=True";
            SqlConnection Conn = new SqlConnection(chuoiketnoi);
            Conn.Open();


            // Tạo đối tượng Command và select toàn bộ bảng Truyen
            SqlCommand Cmd;
            Cmd = new SqlCommand();
            Cmd.CommandText = "Select Count(*) from Truyen where MaBoTruyen=" + (int)ViewState["MaBoTruyenLayDuoc"];
            Cmd.Connection = Conn;

            // Hiển thị kết quả trên Label
            int SL = (int)Cmd.ExecuteScalar();
            lblTongSoTruyen.Text = "Tìm được [" + SL.ToString() + "] Truyện";

            // Giải phóng kết nối. 
            Cmd.Dispose();
            Conn.Close();

        }
    }
}