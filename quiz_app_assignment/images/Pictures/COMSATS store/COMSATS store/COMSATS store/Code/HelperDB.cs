using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace COMSATS_store.Code
{
    public class HelperDB
    {
        public static string getDepartments()
        {
            string query = "select * from Departments";
            SqlConnection con = new SqlConnection(DB.Con());
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            string html = "";
            if(reader.HasRows)
            {
                int i = 1;
                while (reader.Read())
                {
                    html = html + "<tr><td>" + i.ToString() + "</td>";
                    html = html + "<td>" + reader[1].ToString() + "</td>";
                    html = html + "<td><a href='viewdept.aspx?id=" + reader[0].ToString() + "'><i class='fa fa-trash' style='font-size:20px'></i>Delete</a>";
                    html = html + "</tr>";
                    i++;
                }
            }
            con.Close();
            return html;
        }
        public static string getDesignation()
        {
            string query = "select * from Designation";
            SqlConnection con = new SqlConnection(DB.Con());
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            string html = "";
            if (reader.HasRows)
            {
                int i = 1;
                while (reader.Read())
                {
                    html = html + "<tr><td>" + i.ToString() + "</td>";
                    html = html + "<td>" + reader[1].ToString() + "</td>";
                    html = html + "<td><a href='viewdesignation.aspx?id=" + reader[0].ToString() + "'><i class='fa fa-trash' style='font-size:20px'></i>Delete</a>";
                    html = html + "</tr>";
                    i++;
                }
            }
            con.Close();
            return html;
        }
        public static string getFirms()
        {
            string query = "select * from Firms";
            SqlConnection con = new SqlConnection(DB.Con());
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            string html = "";
            if (reader.HasRows)
            {
                int i = 1;
                while (reader.Read())
                {
                    html = html + "<tr><td>" + i.ToString() + "</td>";
                    html = html + "<td>" + reader[1].ToString() + "</td>";
                    html = html + "<td>" + reader[2].ToString() + "</td>";
                    html = html + "<td>" + reader[3].ToString() + "</td>";
                    html = html + "<td>" + reader[4].ToString() + "</td>";
                    html = html + "<td>" + reader[5].ToString() + "</td>";
                    html = html + "<td><a href='viewFirms.aspx?id=" + reader[0].ToString() + "'><i class='fa fa-trash' style='font-size:20px'></i>Delete</a>";
                    html = html + "</tr>";
                    i++;
                }
            }
            con.Close();
            return html;
        }
        public static string ViewItems()
        {
            string query = @"select NewPurchase.id,purchaseDate,firmName,categoryName,typeName,itemCode
                from
                NewPurchase,itemTypes,ItemsCategory,Firms
                where
                NewPurchase.typeId=itemTypes.id
                and 
                itemTypes.categoryID = ItemsCategory.id
                and 
                NewPurchase.firmID = Firms.id
                order by NewPurchase.id DESC";
            SqlConnection con = new SqlConnection(DB.Con());
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            string html = "";
            if (reader.HasRows)
            {
                int i = 1;
                while (reader.Read())
                {
                    html = html + "<tr><td>" + i.ToString() + "</td>";
                    html = html + "<td>" + reader[1].ToString() + "</td>";
                    html = html + "<td>" + reader[2].ToString() + "</td>";
                    html = html + "<td>" + reader[3].ToString() + "</td>";
                    html = html + "<td>" + reader[4].ToString() + "</td>";
                    html = html + "<td>" + reader[5].ToString() + "</td>";
                    html = html + "<td><a href='viewitems.aspx?id=" + reader[0].ToString() + "'><i class='fa fa-eye' style='font-size:20px'></i> View</a>";
                    html = html + "<td><a href='edititems.aspx?id=" + reader[0].ToString() + "'><i class='fa fa-eye' style='font-size:20px'></i> Edit</a>";
                    html = html + "</tr>";
                    i++;
                }
            }
            con.Close();
            return html;
        }
        public static string DeleteDepartment(int id)
        {
            string query = "delete from Departments where id=" + id + "";
            try
            {
                bool result = DB.insertIntoSQL(query);
                if (result)
                {
                    return "true";
                }
                else
                {
                    return "false";
                }
            }
            catch(Exception ex)
            {
                if(ex.Message.Contains("The DELETE statement with the REFERENCE constraint"))
                {
                    return "Sorry ! Employee of this Department exists in system";
                }
                else
                {
                    return "false";
                }
            }
        }
        public static string DeleteDesignations(int id)
        {
            string query = "delete from Designation where id=" + id + "";
            try
            {
                bool result = DB.insertIntoSQL(query);
                if (result)
                {
                    return "true";
                }
                else
                {
                    return "false";
                }
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("The DELETE statement with the REFERENCE constraint"))
                {
                    return "Sorry ! Employee of this Designation exists in system";
                }
                else
                {
                    return "false";
                }
            }
        }
        public static string DeleteFirm(int id)
        {
            string query = "delete from Firms where id=" + id + "";
            try
            {
                bool result = DB.insertIntoSQL(query);
                if (result)
                {
                    return "true";
                }
                else
                {
                    return "false";
                }
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("The DELETE statement with the REFERENCE constraint"))
                {
                    return "Sorry ! Assets of this Firm exists in system";
                }
                else
                {
                    return "false";
                }
            }
        }
    }
}