using COMSATS_store.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMSATS_store.users
{
    public partial class userpwdreset : System.Web.UI.Page
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
            string oldpwd = Encrypt_Decrypt.Encrypt(txtoldpwd.Value);
            string newpwd = Encrypt_Decrypt.Encrypt(txtnewpwd.Value);
            string email = Session["email"].ToString();
            bool result = Helper.ChangePassword(oldpwd, newpwd, email);
            if(result == true)
            {
                errormsg.InnerHtml = Helper.generateSuccessMsg("Password is Changed Successfully");
                Session["email"] = null;
            }
            else
            {
                errormsg.InnerHtml = Helper.generateErrorMsg("Your Current Password is incorrect");
            }
        }
    }
}