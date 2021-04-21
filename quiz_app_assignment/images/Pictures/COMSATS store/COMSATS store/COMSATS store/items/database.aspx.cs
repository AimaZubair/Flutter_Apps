using COMSATS_store.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMSATS_store.items
{
    public partial class database : System.Web.UI.Page
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

        protected void ddtype_SelectedIndexChanged(object sender, EventArgs e)
        {
            string value = ddtype.SelectedItem.ToString();
            itemname.Value = "";
            if(value=="Add Item Category")
            {
                categoryRow.Attributes["style"] = "display:none;height:60px";
                lblname.InnerHtml = "Enter Item Category";
            }
            else if (value=="Add Item Type")
            {
                categoryRow.Attributes["style"] = "visibility:visible;height:60px";
                HelperItems.getCategories(ddlcategory);
                lblname.InnerHtml = "Enter Item Type";
            }
            else if (value=="Add Department")
            {
                categoryRow.Attributes["style"] = "display:none;height:60px";
                lblname.InnerHtml = "Enter Department Name";
            }
            else if (value == "Add Designation")
            {
                categoryRow.Attributes["style"] = "display:none;height:60px";
                lblname.InnerHtml = "Enter Designation Name";
            }
        }

        protected void btnenter_Click(object sender, EventArgs e)
        {
            string value = ddtype.SelectedItem.ToString();
            int cid = -1;
            string name = itemname.Value;
            string table = "";
            string html = "";
            if (value=="Add Item Type")
            {
                table = "ItemTypes";
                cid = Int32.Parse(ddlcategory.SelectedValue.ToString());
            }
            else if(value== "Add Item Category")
            {
                table = "ItemsCategory";
            }
            else if(value=="Add Department")
            {
                table = "Departments";
            }
            else if (value == "Add Designation")
            {
                table = "Designation";
            }
            string result = HelperItems.AddToDB(name, table, cid);
            if(result == "true")
            {
                html = Helper.generateSuccessMsg(name + " is stored in the system");
                altermsg.InnerHtml = html;
                itemname.Value = "";
            }
            else if (result == "false")
            {
                html = Helper.generateErrorMsg("Sorry Try Again !");
                altermsg.InnerHtml = html;
            }
            else
            {
                html = Helper.generateErrorMsg(result);
                altermsg.InnerHtml = html;
            }
        }
    }
}