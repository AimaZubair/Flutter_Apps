using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMSATS_store.Code;

namespace COMSATS_store.items
{
    public partial class viewitems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null && Session["roleid"].ToString().Equals("1"))
            {
                string result = HelperDB.ViewItems();
                if (result == "")
                {
                    viewbox.InnerHtml = "";
                    viewbox.InnerHtml = Helper.generateErrorMsg("No Items Exists in the Database");
                }
                else
                {
                    myTable.InnerHtml = result;
                }
            }
            else
            {
                Response.Redirect("~/users/Signin.aspx");
            }
        }
    }
}