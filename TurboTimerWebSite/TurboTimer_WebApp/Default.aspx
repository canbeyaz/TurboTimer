<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TurboTimer_WebApp.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="lv_makaleler" runat="server">
        <LayoutTemplate>
            <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="makale">
                <div class="resim">
                    <a href='MakaleDetay.aspx?makid=<%#Eval("ID") %>'>
                        <img src='MakaleResimleri/<%#Eval("KapakResim") %>' width="100%" /></a>
                </div>
                <div class="icerik">
                    <div>
                        <a class="content-title" href='MakaleDetay.aspx?makid=<%#Eval("ID") %>'>
                            <h2><%#Eval("Baslik") %></h2>
                        </a>
                        <div class="bilgi">

                            <div class="content-info">
                                <img src="Assets/Resimler/user.png" /><label> <%#Eval("Yazar") %></label>
                            </div>
                            <div class="content-info">
                                <img src="Assets/Resimler/calendar.png" /><label> <%# DateTime.Parse(Eval("EklemeTarih").ToString()).ToShortDateString() %></label>
                            </div>
                            <div class="content-info">
                                <img src="Assets/Resimler/category.png" /><label> <%#Eval("Kategori") %></label>
                            </div>
                            <div class="content-info">
                                <img src="Assets/Resimler/counter.png" /><label> <%#Eval("GoruntulemeSayi") %></label>
                            </div>

                        </div>
                    </div>
                    <div>
                        <p>
                            <%#Eval("Ozet") %>
                        </p>

                        <a class="makale-button" href='MakaleDetay.aspx?makid=<%#Eval("ID") %>'>Devamını Oku </a>
                    </div>


                </div>
                <div style="clear: both"></div>

            </div>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
