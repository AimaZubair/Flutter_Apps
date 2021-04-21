using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMSATS_store
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogout_ServerClick(object sender, EventArgs e)
        {
            Session["email"]= null;
            Session["userId"]= null;
            Session["roleid"]= null;
            Session.Abandon();
            Response.Redirect("../users/Signin.aspx");
        }
    }
}