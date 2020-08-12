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
            ClsStatus.SaveData(txtSN.Text, txtDesc.Text, txtFam.Text, ddlBU.SelectedValue, txtBULine.Text, ddlStatus.SelectedValue, txtOE.Text, txtRFID.Text, txtCO.Text, txtEAM.Text, txtAssetGD.Text);
            DtStatus();
            Clear();
        }

        public void Clear()
        {
            txtSN.Text = string.Empty;
            txtDesc.Text = string.Empty;
            txtFam.Text = string.Empty;
            ddlBU.SelectedValue = "--Select Status--";
            txtBULine.Text = string.Empty;
            ddlStatus.SelectedValue = "--Select Status--";
            txtOE.Text = string.Empty;
            txtRFID.Text = string.Empty;
            txtCO.Text = string.Empty;
            txtEAM.Text = string.Empty;
            txtAssetGD.Text = string.Empty;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            ClsStatus.EditData(txtEditDesc.Text, txtEditFam.Text, ddlEditBU.SelectedValue, txtEditLine.Text, ddlEditStatus.SelectedValue, txtEditOE.Text, txtEditRFID.Text, txtEditCO.Text, txtEditEAM.Text, txtEditAGD.Text, Convert.ToString(txtEditSN.Text));
            DtStatus();
            Clear();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            ClsStatus.DeleteData(txtEditDesc.Text, txtEditFam.Text, ddlEditBU.SelectedValue, txtEditLine.Text, ddlEditStatus.SelectedValue, txtEditOE.Text, txtEditRFID.Text, txtEditCO.Text, txtEditEAM.Text, txtEditAGD.Text, Convert.ToString(txtEditSN.Text));
            DtStatus();
            Clear();
        }
    }
}