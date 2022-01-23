﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace TruyenAtsukoiya
{
    public class ketnoi
    {
        public SqlConnection kn = new SqlConnection();

        public String chuoi_kn()
        {
            //Lấy chuỗi kết nối chút dùng cho khỏe :))
            string chuoikn = @"Data Source=.\sqlexpress;Initial Catalog=TruyenAtsukoiya;Integrated Security=True";
            return chuoikn;
        }

        //Tạo kết nối đến CSDL SQL Server
        public void kn_csdl()
        {
            String chuoikn = chuoi_kn();
            kn.ConnectionString = chuoikn;
            kn.Open();
        }

        //Đóng kết nối tới CSDL
        public void dongketnoi()
        {
            if (kn.State == ConnectionState.Open)
            { kn.Close(); }
        }

        //Khi muốn lấy bảng dữ liệu thì: ketnoi.laybang(“Bỏ cái câu sql lấy bảng vào đây”);
        public DataTable bangdulieu = new DataTable();
        public DataTable laybang(string caulenh)
        {
            try
            {
                kn_csdl();
                SqlDataAdapter Adapter = new SqlDataAdapter(caulenh, kn);
                DataSet ds = new DataSet();

                Adapter.Fill(bangdulieu);
            }
            catch (System.Exception)
            {
                bangdulieu = null;
            }
            finally
            {
                dongketnoi();
            }

            return bangdulieu;
        }

        //Khi muốn cập nhật: thêm, xóa, sửa, delete thì dùng class ketnoi.xulydulieu(“bỏ cái câu sql vào”);
        public int xulydulieu(string caulenhsql)
        {
            int kq = 0;
            try
            {
                kn_csdl();
                SqlCommand lenh = new SqlCommand(caulenhsql, kn);
                kq = lenh.ExecuteNonQuery();        //kq cho giá trị là một số lớn hơn không
            }
            catch (Exception)
            {
                //Thông báo lỗi ra!

                kq = 0;
            }
            finally
            {
                dongketnoi();
            }
            return kq;
        }



        //Khi muốn lấy 1 giá trị (khi muốn lấy một cột gồm nhiều giá trị) từ câu select thì ketnoi.lay1giatri(“bỏ câu sql vào”);
        //Lưu ý trường muốn lấy phải đổi tên thành ‘tong’
        //dí dụ : select sotien as ‘tong’ from ctphieu
        public string lay1giatri(string sql)
        {
            string kq = "";
            try
            {
                kn_csdl();

                SqlCommand sqlComm = new SqlCommand(sql, kn);
                SqlDataReader r = sqlComm.ExecuteReader();
                if (r.Read())
                {
                    kq = r["tong"].ToString();
                }
            }
            catch
            { }
            return kq;
        }
    }
}