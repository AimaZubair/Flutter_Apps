using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMSATS_store.Code;

namespace COMSATS_store.Employees
{
    public partial class addemployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            department.DataSource = HelperEmployees.getDepartments();
            department.DataBind();
            department.DataTextField = "deptname";
            department.DataValueField = "id";
            department.DataBind();
            designation.DataSource = HelperEmployees.getDesigantion();
            designation.DataBind();
            designation.DataTextField = "designation";
            designation.DataValueField = "id";
            designation.DataBind();
        }
        protected void btnenter_Click(object sender, EventArgs e)
        {
            HelperEmployees obj = new HelperEmployees();
            obj.EmployeeName = empname.Value;   //settig every properties
            obj.EmployeeID = empID.Value;
            obj.EmployeeDepartment = Convert.ToInt32(department.SelectedValue.ToString());
            obj.EmployeeDesignation = Convert.ToInt32(designation.SelectedValue.ToString());
            obj.EmployeeAddress = empAddress.Value;
            obj.EmployeeEmail = email.Value;
            obj.EmployeeGender = gender.SelectedValue.ToString(); //as gender is an drowpdown
            obj.Employeephone = cell.Value;
            obj.EmployeeAccountType = Convert.ToInt32(accounttype.SelectedValue.ToString()); //converting string into interger
            string html = "";
            string path = "";
            string newfilename = "";
           // byte[] bytes = null;
            HttpPostedFile imgUploaded = Request.Files["ctl00$datacontent$imgInp"];  //converting img to binary
            if(imgUploaded !=null && imgUploaded.ContentLength>0)        //condition to check whether img upload or not
            {
                string ex = Path.GetExtension(imgUploaded.FileName);
                bool flag = Images.CheckExtension(ex);
                if( flag == true)
                {
                    path = Server.MapPath(@"~/StoreImages");
                    newfilename = KeyGenerator.GetUniqueKey(6) + ex;
                    path = Path.Combine(path, newfilename);
                }
                else
                {
                    html = Helper.generateErrorMsg("Image has not Valid Extension. Only jpg and png files are allowed");
                    alertmsg.InnerHtml = "";
                    alertmsg.InnerHtml = html;
                }
                //Stream input = imgUploaded.InputStream;
                //BinaryReader reader = new BinaryReader(input);
                //bytes = reader.ReadBytes((int)input.Length);
            }
            else
            {
                newfilename = "~/StoreImages/no_img.jpg";
                path = HttpContext.Current.Server.MapPath("~/StoreImages/no_img.jpg");
               // bytes = File.ReadAllBytes(path);
            }
            //obj.EmployeePicture = bytes;
            obj.EmployeePicture = newfilename;
            string pwd = KeyGenerator.GetUniqueKey(6);
            obj.EmployeePassword = Encrypt_Decrypt.Encrypt(pwd);

            if (obj.EmployeeAccountType == 2)
            {
                string chk = obj.CheckHOD(obj.EmployeeDepartment);
                if (chk =="false")
                {
                    Helper.SendMail(obj.EmployeeEmail, pwd);
                    string result= HelperEmployees.AddNewEmployee(obj);
                    if (result == "true")
                    {
                        html = Helper.generateSuccessMsg("Employee is Added in System");
                        imgUploaded.SaveAs(path);
                        alertmsg.InnerHtml = "";
                        alertmsg.InnerHtml = html;
                        empID.Value = "";
                        empname.Value = "";
                        cell.Value = "";
                        email.Value = "";
                        empAddress.Value = "";
                    }
                    else
                    {
                        html = Helper.generateErrorMsg(result);
                        alertmsg.InnerHtml = "";
                        alertmsg.InnerHtml = html;
                    }
                }
                else
                {
                    html = "Head of Department of"+department.SelectedItem.ToString()+"already exist.<b>"+chk+"</b>";
                    html = Helper.generateErrorMsg(html);
                    alertmsg.InnerHtml = "";
                    alertmsg.InnerHtml = html;
                }
            }
            else if (obj.EmployeeAccountType == 1 || obj.EmployeeAccountType == 3)
            {
                string result = HelperEmployees.AddNewEmployee(obj);
                if (result == "true")
                {
                    Helper.SendMail(obj.EmployeeEmail, pwd);
                    html = Helper.generateSuccessMsg("Employee is Added in System");
                    imgUploaded.SaveAs(path);
                    alertmsg.InnerHtml = "";
                    alertmsg.InnerHtml = html;
                    empID.Value = "";
                    empname.Value = "";
                    cell.Value = "";
                    email.Value = "";
                    empAddress.Value = "";
                }
                else
                {
                    html = Helper.generateErrorMsg(result);
                    alertmsg.InnerHtml = "";
                    alertmsg.InnerHtml = html;
                }
            }
        }
    }
}