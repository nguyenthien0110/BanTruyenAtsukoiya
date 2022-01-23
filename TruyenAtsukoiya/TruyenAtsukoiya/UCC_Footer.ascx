<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCC_Footer.ascx.cs" Inherits="TruyenAtsukoiya.UCC_Footer" %>

<style>
    footer
    {
        background-color: #272B2B;
        background: rgba(0,0,0,0.9);
        color: aliceblue;
        font-family: sans-serif;
    }
    .box 
    {
        float: left;
        width: 33.33%;
    }
    .row:after
    {
          content: "";
          display: table;
          clear: both;
    }
     li
    {
        list-style: none;
        margin: 0px 0px 10px 0px;
    }
</style>

<footer>
    <div class="row">
        <div class="box">
            <h1></h1>
        <ul>
            <li><a href="#">Trang chủ</a></li>
            <li><a href="#">Chính sách</a></li>
            <li><a href="#">Xem thêm</a></li>
            <li>©2022 NguyenThien-HoangAnh</li>
        </ul>
    </div>
    <div class="box">
        <h1>Liên hệ</h1>
        <ul>
            <li>aphunghoanganhkpl@gmail.com</li>
            <li>Điện thoai: +84251050001 </li>
            <li>nguyenthien11082005@gmail.com</li>
            <li>Điện thoại: +84251050002</li>
        </ul>
    </div>
    <div class="box">
        <h1>Địa điểm</h1>
        <ul>
            <li>Khoa CNTT</li>
            <li>Trường Đại Học Quy Nhơn</li>
            <li><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3875.3299566497735!2d109.21566861414301!3d13.75896490083605!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x316f6cebf252c49f%3A0xa83caa291737172f!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBRdXkgTmjGoW4!5e0!3m2!1svi!2s!4v1639890535043!5m2!1svi!2s" width="300" height="200" style="border:0;" allowfullscreen="" loading="lazy"></iframe></li>
        </ul>
    </div>
    </div>
</footer>