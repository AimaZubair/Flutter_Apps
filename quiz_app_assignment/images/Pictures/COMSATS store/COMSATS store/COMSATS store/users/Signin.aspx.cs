using COMSATS_store.Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMSATS_store.users
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetNoStore();       //username and password does not store in Cache
            if(Session["email"]!=null && Session["roleid"].ToString().Equals("1"))      // check session already login or not if login admin for roleid 1
            {
                Response.Redirect("../items/additem.aspx");
            }
            else if (Session["email"] != null && (Session["roleid"].ToString().Equals("2") || Session["roleid"].ToString().Equals("3")))
            {
                Response.Redirect("../Faculty/myitems.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string pwd = Encrypt_Decrypt.Encrypt(emailpsd.Text);
            string query = @"select id, username,email,picture,roleid from Employee
             where email='" + emailaddress.Text + "'and pwd='" + pwd + "'";
            DataTable dt = DB.readFromSQL(query);
            string html = "";
            try
            {
                if(dt.Rows.Count > 0)
                {
                    Session["email"] = dt.Rows[0].Field<string>("email");  //cannot go further without login
                    Session["userId"] = dt.Rows[0].Field<Int32>("id");
                    Session["roleId"] = dt.Rows[0].Field<Int32>("roleid");
                    string path = Server.MapPath(@"../StoreImages");
                    string filename = dt.Rows[0].Field<string>("picture");
                    path = Path.Combine(path, filename);
                    int roleid =dt.Rows[0].Field<Int32>("roleid");
                    Application["profile"] = path;  //store path in application type variable
                    if(roleid==1)                   
                    {
                        Response.Redirect("../items/additem.aspx"); 
                    }
                    else if(roleid==2)
                    {
                        Response.Redirect("../Faculty/myitems.aspx");
                    }
                    else if (roleid==3)
                    {
                        Response.Redirect("../Faculty/myitems.aspx");
                    }
                }
                else
                {
                    html = "Invaild Email and Password";
                    html = Helper.generateErrorMsg(html);
                    errormsg.InnerHtml = "";
                    errormsg.InnerHtml = html;
                }
            }
            catch(Exception ex)
            {
                html = "System Internal Error Occured";
                html = Helper.generateErrorMsg(html);
                errormsg.InnerHtml = "";
                errormsg.InnerHtml = html;
            }
        }
    }
}