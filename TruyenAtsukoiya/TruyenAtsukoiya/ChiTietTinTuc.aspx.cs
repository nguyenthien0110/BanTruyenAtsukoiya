using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TruyenAtsukoiya
{
    public partial class ChiTietTinTuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ViewState["MaTinTucLayDuoc"] = int.Parse(Request.QueryString.Get("MaTinTuc"));
                laybangchogridview();
            }
        }


        public void laybangchogridview()
        {
            ketnoi kn = new ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("select * from TinTuc where MaTinTuc=" + (int)ViewState["MaTinTucLayDuoc"]);
            grvChiTietTinTuc.DataSource = dt;
            grvChiTietTinTuc.DataBind();
        }
    }
}