using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

namespace COMSATS_store.Code
{
    public class Helper
    {
        public static string generateErrorMsg(string msg)
        {
            string html = @"<div id='alertmsgbox' class='alert alert-danger page-alert' style='font-weight: bold; font-size:16px; font-family:Century; color:#dd4b39;'>
                           <button id='alertclose' class='close' type='button' onclick='closefunction()'>
                           <span aria-hidden='true'>x</span>
                           <span class='sr-only'>Close</span>
                           </button>
                           " + msg + "</div>";
            return html;
        }
        public static string generateSuccessMsg(string msg)
        {
            string html = @"<div id='alertmsgbox' class='alert alert-danger page-alert' style='font-weight: bold; font-size:16px; font-family:Century; color:#00a65a;'>
                           <button id='alertclose' class='close' type='button' onclick='closefunction()'>
                           <span aria-hidden='true'>x</span>
                           <span class='sr-only'>Close</span>
                           </button>
                           " + msg + "</div>";
            return html;
        }
        public static void SendMail(string email, string pwd)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("ciitpurchase@gmail.com");
            msg.To.Add(email);
            msg.Subject = "Purchase Office System";
            msg.Body = @"Respected Sir <br/> Your Login Details <br/><br/> UserName:<b>" + email + "<b><br/>" +
                        "Password: <b>" + pwd + "<b><br/>";
            msg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("ciitpurchase@gmail.com", "1234$$1234");
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Send(msg);
        }
    }
}