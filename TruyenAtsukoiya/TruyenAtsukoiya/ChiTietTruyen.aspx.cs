using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TruyenAtsukoiya
{
    public partial class ChiTietTruyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /**
                Lấy mã truyện khi người dùng chọn truyện tương ứng
                Ma truyện là tên hiển thị trên thanh địa chỉ của trình duyệt
                Dùng biến ViewState để khi Refresh lại trang, thì giá trị của biến ViewState không bị khởi tạo lại nó vẫn có giá trị như vậy,
                nếu dùng biến khác chẳng hạn string MaBoTruyenLayDuoc, thi khi Refresh lại trang biến MaBoTruyenLayDuoc sẽ không chứa giá trị hiện có mà trở về không (ban đầu)
                Khi dùng thì phải khai báo (int)ViewState["MaTruyenLayDuoc"]
             */

            if (!IsPostBack)
            {
                ViewState["MaTruyenLayDuoc"] = int.Parse(Request.QueryString.Get("MaTruyen"));//để lấy giá trị cho biến
                laybangchogridview();
            }
        }


        public void laybangchogridview()
        {
            ketnoi kn = new ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("select * from Truyen where MaTruyen=" + (int)ViewState["MaTruyenLayDuoc"]);
            drvChiTietTruyen.DataSource = dt;
            drvChiTietTruyen.DataBind();
        }
    }
}