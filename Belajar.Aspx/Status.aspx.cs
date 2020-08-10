using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Belajar.Aspx.classes;

namespace Belajar.Aspx
{
    public partial class Status : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DtStatus();
            }
        }

        private void DtStatus()
        {
            DataTable Dt = new DataTable();
            Dt = ClsStatus.DtStatus();
            RptStatus.DataSource = Dt;
            RptStatus.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            ClsStatus.SaveData(txtSN.Text, txtDesc.Text, txtFam.Text, txtBU.Text, txtBULine.Text, ddlStatus.SelectedValue, txtOE.Text, txtRFID.Text, txtCO.Text, txtEAM.Text, txtAssetGD.Text);
            DtStatus();
            Delete();
        }

        public void Delete()
        {
            txtSN.Text = string.Empty;
            txtDesc.Text = string.Empty;
            txtFam.Text = string.Empty;
            txtBU.Text = string.Empty;
            txtBULine.Text = string.Empty;
            ddlStatus.SelectedValue = "--Select Status--";
            txtOE.Text = string.Empty;
            txtRFID.Text = string.Empty;
            txtCO.Text = string.Empty;
            txtEAM.Text = string.Empty;
            txtAssetGD.Text = string.Empty;
        }
    }
}