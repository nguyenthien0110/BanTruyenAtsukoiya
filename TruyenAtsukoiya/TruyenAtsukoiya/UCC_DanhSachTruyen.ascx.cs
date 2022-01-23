using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TruyenAtsukoiya
{
    public partial class UCC_DanhSachTruyen : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                laybangchogridview();
            }
        }

        public void laybangchogridview()
        {
            ketnoi kn = new ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("select * from BoTruyen");
            grvDanhSachTruyen.DataSource = dt;
            grvDanhSachTruyen.DataBind();
        }
    }
}