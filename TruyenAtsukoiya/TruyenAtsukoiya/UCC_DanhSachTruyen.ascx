<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCC_DanhSachTruyen.ascx.cs" Inherits="TruyenAtsukoiya.UCC_DanhSachTruyen" %>
<style type="text/css">
    .img_sty
    {
        width:20px; 
    }
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 3%;
    }
</style>
<asp:GridView ID="grvDanhSachTruyen" runat="server" Width="100%" 
    AutoGenerateColumns="False" EnableModelValidation="True" 
    ShowHeader="False">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <table cellspacing="1" class="style1">
                    <tr>
                        <td class="style2" style="background-color: #CCCCFF">
                            <asp:Image ID="Image1" runat="server" CssClass="img_sty" ImageUrl="~/Images/icon_list.jpg" />
                        </td>
                        <td style="background-color: #CCCCFF" width="100%">
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" NavigateUrl='<%# "TruyenTheoBo.aspx?MaBoTruyen=" + Eval("MaBoTruyen") %>' Text='<%# Eval("TenBoTruyen") %>'></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>