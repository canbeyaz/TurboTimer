<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UyeKayit.aspx.cs" Inherits="TurboTimer_WebApp.UyeKayit" ValidateRequest="false" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="registerPanel">
        <div class="row">
            <h1>Üye Ol</h1>
            <br />
            <p class="subtitle">
                İkinci viteste aynamdasın üçüncü viteste konum atarım.</p>
        </div>
       <div class="row">
                <table class="formTable">
                    <tr>
                        <td>İsim</td>
                        <td>
                            <asp:TextBox ID="tb_isim" runat="server" CssClass="formInput"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Soyad</td>
                        <td>
                            <asp:TextBox ID="tb_soyad" runat="server" CssClass="formInput"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>Kullanıcı Adı</td>
                        <td>
                            <asp:TextBox ID="tb_kullaniciAdi" runat="server" CssClass="formInput"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Mail</td>
                        <td>
                            <asp:TextBox ID="tb_mail" runat="server" CssClass="formInput"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td>Şifre</td>
                        <td>
                            <asp:TextBox ID="tb_sifre" runat="server" CssClass="formInput"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
       
        <div class="row">
            <asp:LinkButton ID="lbtn_giris" runat="server" CssClass="formButton" OnClick="lbtn_giris_Click1">Üye Kaydımı Oluştur</asp:LinkButton>
            <br />
            <asp:Label ID="lbl_message" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
    </div>
</asp:Content>
