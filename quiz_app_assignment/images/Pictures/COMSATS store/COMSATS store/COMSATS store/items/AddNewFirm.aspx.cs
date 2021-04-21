using COMSATS_store.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMSATS_store.items
{
    public partial class AddNewItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetNoStore();
            if (Session["email"] != null && Session["roleid"].ToString().Equals("1"))
            {

            }
            else
            {
                Response.Redirect("~/users/Signin.aspx");
            }
        }

        protected void btnenter_Click(object sender, EventArgs e)
        {
            string name = firmname.Value;
            string email = firmemail.Value;
            string address = firmaddress.Value;
            string cell = phone.Value;
            string tax = ntn.Value;
            string gstax = gst.Value;
            string result = HelperItems.AddNewFirm(name, email, address, cell, tax, gstax);
            if(result == "true")
            {
                altermsg.InnerHtml = Helper.generateSuccessMsg(name +" is successfully stored in the system");
            }
            else if (result == "false")
            {
                altermsg.InnerHtml = Helper.generateErrorMsg("Some Error Occured. Try Again!");
            }
            else
            {
                altermsg.InnerHtml = Helper.generateErrorMsg(result);
            }
        }
    }
}