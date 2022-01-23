using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TruyenAtsukoiya
{
    public partial class UCC_AllTruyenDataList : System.Web.UI.UserControl
    {
        public void laybangchogridview()
        {
            ketnoi kn = new ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("select * from Truyen order by MaTruyen desc");
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                laybangchogridview();
            }
        }
    }
}