using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                lblCauHoi.Text = cauHoi.CAUHOI1.ToString();
                var cauTraLoi = entitiesCayQD.CAUTRALOI.Where(q => q.ID_CAUHOI == cauHoi.ID);
                cbxTraLoi.DataSource = cauTraLoi.ToList();
                cbxTraLoi.DataTextField = "CAUTRALOI1";
                cbxTraLoi.DataValueField = "ID";
                cbxTraLoi.RepeatColumns = 1;                
                cbxTraLoi.DataBind();
            }
        }

        protected void cbxTraLoi_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idCauTraLoiChon = Convert.ToInt32(cbxTraLoi.SelectedItem.Value);            
            CAYQDEntities entitiesCayQD = new CAYQDEntities();
            var cauHoi = entitiesCayQD.CAUHOI.FirstOrDefault(q => q.ID_CAUTRALOI == idCauTraLoiChon);
            if (cauHoi != null)
            {
                lblCauHoi.Text = cauHoi.CAUHOI1.ToString();
                var cauTraLoi = entitiesCayQD.CAUTRALOI.Where(q => q.ID_CAUHOI == cauHoi.ID);
                cbxTraLoi.DataSource = cauTraLoi.ToList();
                cbxTraLoi.DataTextField = "CAUTRALOI1";
                cbxTraLoi.DataValueField = "ID";
                cbxTraLoi.DataBind();
            }            
            else //là nút lá
            {
                string nganhNghe = entitiesCayQD.CAUTRALOI.FirstOrDefault(q => q.ID == idCauTraLoiChon).NGANHHOC.TENNGANH;
                lblCauHoi.Text = "Kết quả: bạn nên chọn ngành [" + nganhNghe.ToUpper() + "]";
                cbxTraLoi.Items.Clear();                
            }
        }
    }
}