<%@ Page Language="C#" MasterPageFile="~/AdminPanel/AdminPanel.Master" AutoEventWireup="true" CodeBehind="MakaleDuzenle.aspx.cs" Inherits="TurboTimer_WebApp.AdminPanel.MakaleDuzenle" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/FormStyle.css" rel="stylesheet" />
    <script src="assets/ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form">
        <div class="formTitle">
            <h3>Makale Düzenle</h3>
        </div>
        <div class="formContent">
            <asp:Panel ID="pnl_basarili" runat="server" CssClass="pnl_basarili" Visible="false">
                Makale Düzenleme Başarılı
            </asp:Panel>
            <asp:Panel ID="pnl_basarisiz" runat="server" CssClass="pnl_basarisiz" Visible="false">
                <asp:Label ID="lbl_mesaj" runat="server"></asp:Label>
            </asp:Panel>
            <div class="halfcontent">
                <div class="row">
                    <label>Makale Başlık Adı</label><br />
                    <asp:TextBox ID="tb_baslik" runat="server" CssClass="inputbox"></asp:TextBox>
                </div>
                <div class="row">
                    <label>Kategori Seçiniz</label><br />
                    <asp:DropDownList ID="ddl_kategoriler" runat="server" CssClass="inputbox"></asp:DropDownList>
                </div>
                 <div class="row">
                    <label>Makale Özeti</label><br />
                    <asp:TextBox ID="tb_ozet" runat="server" CssClass="inputbox" TextMode="MultiLine"></asp:TextBox>
                </div>
                 <div class="row">
                    <label>Kapak Resmi Seçiniz</label><br />
                    <asp:FileUpload ID="fu_resim" runat="server" />
                </div>
                 <div class="row">
                    <label>Yayın Durumu</label><br />
                    <asp:CheckBox ID="cb_yayin" runat="server" /> Yayınla
                </div>
                <div class="row">
                    <asp:LinkButton ID="lbtn_Guncelle" runat="server" OnClick="lbtn_Guncelle_Click" CssClass="formButton">Makale Güncelle</asp:LinkButton>
                </div>
            </div>
            <div class="halfcontent" style="margin-left:30px;">
                 <div class="row">
                    <label>Makale İçeriği İçeriği</label><br />
                    <asp:TextBox ID="tb_icerik" runat="server" CssClass="inputbox" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
