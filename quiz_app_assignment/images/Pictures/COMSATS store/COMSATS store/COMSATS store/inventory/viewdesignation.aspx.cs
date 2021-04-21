using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMSATS_store.Code;

namespace COMSATS_store.inventory
{
    public partial class viewdesignation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetNoStore();
            if (Session["email"] != null && Session["roleid"].ToString().Equals("1"))
            {
                if (Request.QueryString.HasKeys() == true)
                {
                    bool isNumeric = true;
                    foreach (char c in Request.QueryString[0])
                    {
                        if (!char.IsDigit(c))
                        {
                            isNumeric = false;
                            break;
                        }
                    }
                    if (Request.QueryString[0] != null && isNumeric == true)
                    {
                        int id = Int32.Parse(Request.QueryString[0].ToString());
                        string flag = HelperDB.DeleteDesignations(id);
                        if (flag == "true")
                        {
                            msgbox.InnerHtml = Helper.generateSuccessMsg("Desigantion is deleted sucessfully");
                        }
                        else if (flag == "false")
                        {
                            msgbox.InnerHtml = Helper.generateErrorMsg("Some Error Occured. Try Again");
                        }
                        else
                        {
                            msgbox.InnerHtml = Helper.generateErrorMsg(flag);
                        }
                    }
                }
                string result = HelperDB.getDesignation();
                if (result == "")
                {
                    viewbox.InnerHtml = "";
                    viewbox.InnerHtml = Helper.generateErrorMsg("No Designation Exists in the Database");
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