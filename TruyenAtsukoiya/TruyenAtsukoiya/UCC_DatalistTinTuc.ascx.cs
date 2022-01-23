using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TruyenAtsukoiya
{
    public partial class UCC_DatalistTinTuc : System.Web.UI.UserControl
    {
        public void laybangchogrv()
        {
            ketnoi kn = new ketnoi();
            DataTable datb = new DataTable();
            datb = kn.laybang("select * from TinTuc order by MaTinTuc desc");
            GridView1.DataSource = datb;
            GridView1.DataBind();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                laybangchogrv();
            }
        }
    }
}