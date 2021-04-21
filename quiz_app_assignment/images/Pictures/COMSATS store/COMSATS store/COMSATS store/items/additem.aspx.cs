using COMSATS_store.Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace COMSATS_store.items
{
    public partial class additem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetNoStore();
            if (!Page.IsPostBack)
            {
                if (Session["email"] != null && Session["roleid"].ToString().Equals("1"))
                {
                    HelperItems.getFirms(firms);
                    HelperItems.getCategories(category);
                    if (category.SelectedValue.ToString() !=null)
                    {
                        int cid = Int32.Parse(category.SelectedValue.ToString());
                        HelperItems.getItemsTypes(itemtypes, cid);
                    }
                }
                else
                {
                    Response.Redirect("~/users/Signin.aspx");
                }
            }
        }

        protected void category_SelectedIndexChanged(object sender, EventArgs e)
        {
            int cid = Int32.Parse(category.SelectedValue.ToString());
            HelperItems.getItemsTypes(itemtypes, cid);
        }

        protected void itembtn_Click(object sender, EventArgs e)
        {
            int tid = Int32.Parse(itemtypes.SelectedValue.ToString());
            int fid = Int32.Parse(firms.SelectedValue.ToString());
            HttpPostedFile imgUploaded = Request.Files["ctl00$datacontent$imgInp"];
            string path = "";
            string newfilename = "";
            string html = "";
            if (imgUploaded != null && imgUploaded.ContentLength > 0)
            {
                string ex = Path.GetExtension(imgUploaded.FileName);
                bool flag = Images.CheckExtension(ex);
                if (flag == true)
                {
                    path = Server.MapPath(@"~/StoreImages/Receipts");
                    newfilename = KeyGenerator.GetUniqueKey(6) + ex;
                    path = Path.Combine(path, newfilename);


                }
                else
                {
                    html = Helper.generateErrorMsg("Image has not a valid extension. Only JPG,JPEG & PNG images are allowed");

                    alertmsg.InnerHtml = "";
                    alertmsg.InnerHtml = html;
                }
            }

            else
            {
                newfilename = "~/Storeimages/no-image.png";
                path = HttpContext.Current.Server.MapPath("~/StoreImages/no-img.jpg");
            }

            string date = datepicker.Value;
            string code = itemcode.Value;
            int quantity = Int32.Parse(itemqunatity.Value);
            int price = Int32.Parse(itemprice.Value);
            string desc = description.Value;
            bool result = HelperItems.AddNewItem(date, code, tid, fid, price, quantity, desc, newfilename);
            if (result)
            {
                alertmsg.InnerHtml = Helper.generateSuccessMsg("Item is stored in the system");
                datepicker.Value = "";
                itemcode.Value = "";
                description.Value = "";
                itemprice.Value = "";
                itemqunatity.Value = "";
            }
            else
            {
                alertmsg.InnerHtml = Helper.generateErrorMsg("Sorry. Try Again!");
            }


        }
    }
}