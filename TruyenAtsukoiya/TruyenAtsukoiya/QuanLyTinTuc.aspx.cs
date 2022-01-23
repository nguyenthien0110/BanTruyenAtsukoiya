using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TruyenAtsukoiya
{
    public partial class QuanLyTinTuc : System.Web.UI.Page
    {
        public void laybangchogridview()
        {
            ketnoi kn = new ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("select * from TinTuc order by MaTinTuc desc");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        public void HienThiHangDauTienTrongBang()
        {
            ketnoi kn = new ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("select * from TinTuc order by MaTinTuc desc");
            GridView1.DataSource = dt;
            GridView1.DataBind();

            txtMaTinTuc.Text = dt.Rows[0]["MaTinTuc"].ToString();
            txtTieuDe.Text = dt.Rows[0]["TieuDe"].ToString();
            txtNoiDung1.Text = dt.Rows[0]["NoiDung1"].ToString();
            txtNoiDung2.Text = dt.Rows[0]["NoiDung2"].ToString();
            txtNoiDung3.Text = dt.Rows[0]["NoiDung3"].ToString();
            imgAnh.ImageUrl = "~/ImagesTinTuc/" + dt.Rows[0]["TenFileAnh"].ToString();
            txtTenFileAnh.Text = dt.Rows[0]["TenFileAnh"].ToString();
            closeAllBox();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                laybangchogridview();
                lblThongBao.Visible = false;
                cmdCo.Visible = false;
                cmdKhong.Visible = false;
                closeGhiKhongGhi();
                txtMaTinTuc.Enabled = false;
                HienThiHangDauTienTrongBang();
                ViewState["flag"] = false;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            imgAnh.Visible = true;
            int dong = GridView1.SelectedIndex; 
            ketnoi kn = new ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("select * from TinTuc order by MaTinTuc desc");
            txtMaTinTuc.Text = dt.Rows[dong][0].ToString(); 
            txtTieuDe.Text = dt.Rows[dong][1].ToString(); 
            txtNoiDung1.Text = dt.Rows[dong][2].ToString();
            txtNoiDung2.Text = dt.Rows[dong][3].ToString();
            txtNoiDung3.Text = dt.Rows[dong][4].ToString();
            imgAnh.ImageUrl = "~/ImagesTinTuc/" + dt.Rows[dong][5].ToString();
            txtTenFileAnh.Text = dt.Rows[dong][5].ToString();
            txtTenFileAnh.Visible = true;
            lbAnh.Visible = true;
            closeAllBox();
            openThemSuaXoa();
            closeGhiKhongGhi();
        }

        protected void btnUploadAnh_Click(object sender, EventArgs e)
        {
            string TenFileAnhLayDuoc;
            TenFileAnhLayDuoc = fulAnh.FileName;
            fulAnh.SaveAs(MapPath("~/ImagesTinTuc/" + TenFileAnhLayDuoc));
            imgAnh.ImageUrl = "~/ImagesTinTuc/" + TenFileAnhLayDuoc;
            txtTenFileAnh.Text = TenFileAnhLayDuoc;
        }

        protected void cmdThem_Click(object sender, EventArgs e)
        {
            txtMaTinTuc.Enabled = false;
            openBox();
            txtMaTinTuc.Text = "";
            txtTieuDe.Text = "";
            txtNoiDung1.Text = "";
            txtNoiDung2.Text = "";
            txtNoiDung3.Text = "";
            txtTenFileAnh.Text = "";
            imgAnh.ImageUrl = "";
            txtTieuDe.Focus();
            cmdGhi.Enabled = true;
            cmdKhongGhi.Enabled = true;
            closeThemSuaXoa();
            ViewState["flag"] = true;
        }

        protected void cmdXoa_Click(object sender, EventArgs e)
        {
            lblThongBao.Visible = true;
            lblThongBao.Text = "Bạn có muốn xóa không?";
            cmdCo.Visible = true;
            cmdKhong.Visible = true;
        }

        protected void cmdCo_Click(object sender, EventArgs e)
        {
            ketnoi kn = new ketnoi();
            int kq = kn.xulydulieu("Delete TinTuc where MaTinTuc='" + txtMaTinTuc.Text + "'");
            if (kq > 0)
            {
                lblThongBao.Visible = true;
                lblThongBao.Text = "Bạn đã xóa thành công!";
                laybangchogridview();
                cmdCo.Visible = false;
                cmdKhong.Visible = false;
                HienThiHangDauTienTrongBang();
            }
        }

        protected void cmdKhong_Click(object sender, EventArgs e)
        {

            lblThongBao.Visible = false;
            cmdCo.Visible = false;
            cmdKhong.Visible = false;
        }

        protected void cmdSua_Click(object sender, EventArgs e)
        {

            txtMaTinTuc.Enabled = false;
            openBox();
            txtTieuDe.Focus();
            openGhiKhongGhi();
            closeThemSuaXoa();
            ViewState["flag"] = false;
        }

        public void sua()
        {
            ketnoi kn = new ketnoi();
            int kq = kn.xulydulieu("Update TinTuc set TieuDe=N'" + txtTieuDe.Text + "',NoiDung1=N'" + txtNoiDung1.Text + "',NoiDung2=N'" + txtNoiDung2.Text + "',NoiDung3=N'" + txtNoiDung3.Text + "',TenFileAnh=N'" + txtTenFileAnh.Text + "' where MaTinTuc = '" + txtMaTinTuc.Text + "'");
            if (kq > 0)
            {
                lblThongBao.Visible = true;
                lblThongBao.Text = "Bạn đã sửa thành công!";
                laybangchogridview();
            }
            else
            {
                lblThongBao.Visible = true;
                lblThongBao.Text = "Bạn đã sửa không thành công!";
            }
        }

        public void them()
        {
            ketnoi kn = new ketnoi();
            int kq = kn.xulydulieu("Insert into TinTuc(TieuDe,NoiDung1,NoiDung2,NoiDung3,TenFileAnh) Values(N'" + txtTieuDe.Text + "',N'" + txtNoiDung1.Text + "','" + txtNoiDung2.Text + "','" + txtNoiDung3.Text + "',N'" + txtTenFileAnh.Text + "')");
            if (kq > 0)
            {
                lblThongBao.Visible = true;
                lblThongBao.Text = "Bạn đã thêm thành công!";
                laybangchogridview();
            }
            else
            {
                lblThongBao.Visible = true;
                lblThongBao.Text = "Bạn đã thêm không thành công!";
            }
        }

        protected void cmdGhi_Click(object sender, EventArgs e)
        {
            if ((bool)ViewState["flag"] == true)
            {
                them();
                closeGhiKhongGhi();
                openThemSuaXoa();
                HienThiHangDauTienTrongBang();
            }
            else
            {
                sua();
                closeGhiKhongGhi();
                openThemSuaXoa();
                HienThiHangDauTienTrongBang();
            }
        }

        protected void openGhiKhongGhi()
        {
            cmdGhi.Enabled = true;
            cmdKhongGhi.Enabled = true;
        }

        protected void closeGhiKhongGhi()
        {
            cmdGhi.Enabled = false;
            cmdKhongGhi.Enabled = false;
        }

        protected void openThemSuaXoa()
        {
            cmdThem.Enabled = true;
            cmdXoa.Enabled = true;
            cmdSua.Enabled = true;
        }

        protected void closeThemSuaXoa()
        {
            cmdThem.Enabled = false;
            cmdXoa.Enabled = false;
            cmdSua.Enabled = false;
        }

        protected void openBox()
        {
            txtTieuDe.Enabled = true;
            txtNoiDung1.Enabled = true;
            txtNoiDung2.Enabled = true;
            txtNoiDung3.Enabled = true;
            txtTenFileAnh.Enabled = true;
            btnUploadAnh.Enabled = true;
            fulAnh.Enabled = true;
        }

        protected void closeAllBox()
        {
            txtMaTinTuc.Enabled = false;
            txtTieuDe.Enabled = false;
            txtNoiDung1.Enabled = false;
            txtNoiDung2.Enabled = false;
            txtNoiDung3.Enabled = false;
            txtTenFileAnh.Enabled = false;
            btnUploadAnh.Enabled = false;
            fulAnh.Enabled = false;
        }

        protected void cmdKhongGhi_Click(object sender, EventArgs e)
        {
            lblThongBao.Visible = true;
            lblThongBao.Text = "Đã hủy!";
            openThemSuaXoa();
            closeGhiKhongGhi();
            HienThiHangDauTienTrongBang();
        }
    }
}