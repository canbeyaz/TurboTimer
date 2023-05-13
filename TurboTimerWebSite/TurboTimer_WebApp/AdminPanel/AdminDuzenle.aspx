<%@ Page Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AdminDuzenle.aspx.cs" Inherits="TurboTimer_WebApp.AdminPanel.AdminDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/FormStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="lv_kategoriler" runat="server" OnItemCommand="lv_kategoriler_ItemCommand">
            <LayoutTemplate>
                <table class="formTable" cellspacing="0" cellpadding="0">
                    <tr>
                        <th>No</th>
                        <th>Yonetici Tur ID</th>
                        <th>Isim</th>
                        <th>Soyisim</th>
                        <th>Kullanıcı Adı</th>
                        <th>Mail</th>
                        <th>Durum</th>
                        <th>Seçenekler</th>
                    </tr>
                    <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("Unvan") %></td>
                    <td><%# Eval("Isim") %></td>
                    <td><%# Eval("Soyisim") %></td>
                    <td><%# Eval("KullaniciAdi") %></td>
                    <td><%# Eval("Mail") %></td>
                    <td><%# Eval("Durum") %></td>
                    <td>
                        <%--<a href='KategoriDuzenle.aspx?kategoriid=<%# Eval("ID") %>' class="btn_duzenle">Düzenle</a>--%>
                        <asp:LinkButton ID="lbtn_sil" runat="server" class="btn_sil" CommandArgument='<%# Eval("ID") %>'>Sil</asp:LinkButton>
                        
                        <asp:LinkButton ID="lbtn_durum" runat="server" class="btn_duzenle"  CommandName='<%# Eval("Durum") %>' CommandArgument='<%# Eval("ID") %>'><%# Eval("Durum").ToString() =="True" ? "Disable" : "Active" %></asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                 <tr class="alternate">
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("Unvan") %></td>
                    <td><%# Eval("Isim") %></td>
                    <td><%# Eval("Soyisim") %></td>
                    <td><%# Eval("KullaniciAdi") %></td>
                    <td><%# Eval("Mail") %></td>
                    <td><%# Eval("Durum") %></td>
                    <td>
                        <%--<a href='KategoriDuzenle.aspx?kategoriid=<%# Eval("ID") %>' class="btn_duzenle">Düzenle</a>--%>
                        <asp:LinkButton ID="lbtn_sil" runat="server" class="btn_sil" CommandArgument='<%# Eval("ID") %>'>Sil</asp:LinkButton>
                        <asp:LinkButton ID="lbtn_durum" runat="server" class="btn_duzenle" CommandName='<%# Eval("Durum") %>' CommandArgument='<%# Eval("ID") %>'><%# Eval("Durum").ToString() =="True" ? "Disable" : "Active" %></asp:LinkButton>
                    </td>
                </tr>
            </AlternatingItemTemplate>
        </asp:ListView>
    <asp:Label ID="lbl_durum" CssClass="mg-t-30" runat="server" Font-Bold="True" ForeColor="Red" Height="30px" Text="Bu işlemi yapmak için yetkiniz yok. Sen yazarsın kendine gel." Visible="False"></asp:Label>
</asp:Content>
