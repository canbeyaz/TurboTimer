using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TurboTimer_WebApp.AdminPanel
{
	public partial class AdminDuzenle : System.Web.UI.Page
	{
		DataModel dm = new DataModel();
		protected void Page_Load(object sender, EventArgs e)
		{
			lv_kategoriler.DataSource = dm.YoneticileriGetir();
			lv_kategoriler.DataBind();
		}
		protected void lv_kategoriler_ItemCommand(object sender, ListViewCommandEventArgs e)
		{
			//sender itemCommand event'ını tetikleyen kontrol
			int id = Convert.ToInt32(e.CommandArgument);
			if (((System.Web.UI.Control)e.CommandSource).ID != "lbtn_durum")
			{
				if (Session["yonetici"] != null)
				{
					Yonetici user = (Yonetici)Session["yonetici"];
					if(user.YoneticiTur_ID == 1)
					{
						dm.YoneticiSil(id);
					}
					else
					{
						lbl_durum.Visible = true;
					}
				}
				
			}
			else
			{
				dm.UyeDurumGuncelle(id, bool.Parse(e.CommandName));
			}
			lv_kategoriler.DataSource = dm.YoneticileriGetir();
			lv_kategoriler.DataBind();
		}
	}
}