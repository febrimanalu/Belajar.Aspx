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
    public partial class Active : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DtStatus();
        }

        private void DtStatus()
        {
            DataTable dtStatus = new DataTable();
            dtStatus = ClsStatus.DtStatus();
        }
    }
}