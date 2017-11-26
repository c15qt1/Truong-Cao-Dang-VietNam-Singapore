using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.InteropServices;


namespace CayQD
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CAYQDEntities entitiesCayQD = new CAYQDEntities();
                var cauHoi = entitiesCayQD.CAUHOI.FirstOrDefault(q => q.LANUTGOC == true);
                blCauHoi.Text = cauHoi.CAUHOI1.ToString();
                var cauTraLoi = entitiesCayQD.CAUTRALOI.Where(q => q.ID_CAUHOI == cauHoi.ID);
                bxTraLoi.DataSource = cauTraLoi.ToList();
                bxTraLoi.DataTextField = "CAUTRALOI1";
                bxTraLoi.DataValueField = "ID";
                bxTraLoi.RepeatColumns = 1;
                bxTraLoi.DataBind();
            }
        }

        protected void cbxTraLoi_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idCauTraLoiChon = Convert.ToInt32(bxTraLoi.SelectedItem.Value);
            CAYQDEntities entitiesCayQD = new CAYQDEntities();
            var cauHoi = entitiesCayQD.CAUHOI.FirstOrDefault(q => q.ID_CAUTRALOI == idCauTraLoiChon);
            if (cauHoi != null)
            {
                blCauHoi.Text = cauHoi.CAUHOI1.ToString();
                var cauTraLoi = entitiesCayQD.CAUTRALOI.Where(q => q.ID_CAUHOI == cauHoi.ID);
                bxTraLoi.DataSource = cauTraLoi.ToList();
                bxTraLoi.DataTextField = "CAUTRALOI1";
                bxTraLoi.DataValueField = "ID";
                bxTraLoi.DataBind();
            }
            else //là nút lá
            {
                string nganhNghe = entitiesCayQD.CAUTRALOI.FirstOrDefault(q => q.ID == idCauTraLoiChon).NGANHHOC.TENNGANH;
                blCauHoi.Text = "Kết quả: Bạn nên chọn ngành [" + nganhNghe.ToUpper() + "]";
                bxTraLoi.Items.Clear();
            }
        }
    }
}