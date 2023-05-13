using DataAccessLayer;
using System;
using System.Drawing;

namespace TurboTimer_WebApp
{
	public partial class UyeKayit : System.Web.UI.Page
	{
		DataModel dm = new DataModel();
		protected void Page_Load(object sender, EventArgs e)
		{
			
		}
		protected void lbtn_giris_Click1(object sender, EventArgs e)
		{
			Uye uye = new Uye()
			{
				Isim = tb_isim.Text,
				Soyisim = tb_soyad.Text,
				KullaniciAdi = tb_kullaniciAdi.Text,
				Sifre = tb_sifre.Text,
				Durum = true,
				Mail = tb_mail.Text,
				UyelikTarihi = DateTime.Now,
			};

			if(dm.UyeGetir(tb_mail.Text, tb_kullaniciAdi.Text) != null && dm.UyeGetir(tb_mail.Text, tb_kullaniciAdi.Text).ID == 0) 
			{
				if (dm.UyeEkle(uye))
				{
					lbl_message.Text = "Başarıyla üye olundu.";
					lbl_message.ForeColor = Color.Green;
					lbl_message.Visible = true;
				}else
				{
					lbl_message.Text = "Kayıt olunurken bir hata oluştu!";
					lbl_message.ForeColor = Color.Red;
					lbl_message.Visible = true;
				}
			}
			else
			{
				lbl_message.Text = "Bu kullanıcı zaten var!";
				lbl_message.ForeColor = Color.Red;
				lbl_message.Visible = true;
			}
			
		}
	}
}