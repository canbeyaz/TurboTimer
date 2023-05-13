<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="MakaleListele.aspx.cs" Inherits="TurboTimer_WebApp.AdminPanel.MakaleListele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/FormStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>Kategori Listesi</h2>
        <hr style="margin: 20px 0px" />
        <asp:ListView ID="lv_makaleler" runat="server" OnItemCommand="lv_makaleler_ItemCommand">
            <LayoutTemplate>
                <table class="formTable" cellspacing="0" cellpadding="0">
                    <tr>
                        <th>Kapak Resim</th>
                        <th>No</th>
                        <th>Başlık</th>
                        <th>Kategori</th>
                        <th>Yazar</th>
                        <th>Görüntüleme Sayı</th>
                        <th>Beğeni Sayı</th>
                        <th>Ekleme Tarih</th>
                        <th>Yayında</th>
                        <th>Seçenekler</th>
                    </tr>
                    <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td><img src='../MakaleResimleri/<%# Eval("KapakResim") %>' width="80" /></td>
                    <td><%# Eval("ID") %></td>
                    <td style="width:20%;"><%# Eval("Baslik") %></td>
                    <td style="width:20%;"><%# Eval("Kategori") %></td>
                    <td><%# Eval("Yazar") %></td>
                    <td><%# Eval("GoruntulemeSayi") %></td>
                    <td><%# Eval("BegeniSayi") %></td>
                    <td><%# Eval("EklemeTarihStr") %></td>
                    <td><%# Eval("YayinDurumuStr") %></td>
                    <td>
                        <asp:LinkButton ID="lbtn_durumDegistir" runat="server" class="lbtn_durumDegistir" CommandName='<%# Eval("YayinDurumu") %>' CommandArgument='<%# Eval("ID") %>'><%# (bool)Eval("YayinDurumu") ? "Yayından Kaldır" : "Yayınla" %></asp:LinkButton>
                        <a href='MakaleDuzenle.aspx?makaleid=<%# Eval("ID") %>' class="btn_duzenle">Düzenle</a>
                        <asp:LinkButton ID="lbtn_sil" runat="server" class="btn_sil" CommandArgument='<%# Eval("ID") %>'>Sil</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>

        </asp:ListView>
    </div>
</asp:Content>

