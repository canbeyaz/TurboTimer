using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TurboTimer_WebApp.AdminPanel
{
    public partial class MakaleListele : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_makaleler.DataSource = dm.MakaleListele();
            lv_makaleler.DataBind();
        }

        protected void lv_makaleler_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
			int id = Convert.ToInt32(e.CommandArgument);
			if (((System.Web.UI.Control)e.CommandSource).ID == "lbtn_durumDegistir")
			{

				dm.MakaleYayinDurumuGuncelle(id, bool.Parse(e.CommandName));
			}
			else if(((System.Web.UI.Control)e.CommandSource).ID == "lbtn_sil")
			{
				dm.MakaleSil(id);
			}
			lv_makaleler.DataSource = dm.MakaleListele();
			lv_makaleler.DataBind();
		}
    }
}