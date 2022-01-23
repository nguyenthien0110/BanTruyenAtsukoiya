<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCC_Banner.ascx.cs" Inherits="TruyenAtsukoiya.UCC_Banner" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .auto-style1 {
        margin-left: 0px;
    }
</style>

<table cellspacing="1" class="style1">
    <tr>
        <td style="height: 97px; background-size:100% 97px;  background-image: url('Images/bannerAnime.gif');" width="100%">
            <asp:Image ID="Image1" runat="server" ImageAlign="Right" ImageUrl="~/Images/bannerAnime.gif" style="text-align: right; background-size:auto"  CssClass="auto-style1" Height="264px" />
        </td>
    </tr>
</table>