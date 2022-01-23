<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCC_DatalistTinTuc.ascx.cs" Inherits="TruyenAtsukoiya.UCC_DatalistTinTuc" %>

<style type="text/css">
    .style6
    {
        width: 101px;
    }
    .auto-style1 {
        height: 1px;
    }
</style>
<table cellspacing="1" class="style4">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeader="False" Width="100%">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table class="style4" width="100%">
                                <tr>
                                    <td class="style6" rowspan="4">
                                        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# "~/ImagesTinTuc/" + Eval("TenFileAnh") %>' Width="300px" />
                                    </td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ChiTietTinTuc.aspx?MaTinTuc=" + Eval("MaTinTuc") %>' Text='<%# Eval("TieuDe") %>'></asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("NoiDung1") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>