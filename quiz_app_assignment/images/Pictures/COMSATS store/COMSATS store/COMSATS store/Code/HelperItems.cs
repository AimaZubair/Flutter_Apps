using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace COMSATS_store.Code
{
    public class HelperItems
    {
        public static void getCategories(DropDownList categories)
        {
            string query = "select id,categoryName from ItemsCategory";
            try
            {
                DataTable dt = DB.readFromSQL(query);
                categories.DataSource = dt;
                categories.DataBind();
                categories.DataTextField = "categoryName";
                categories.DataValueField = "id";
                categories.DataBind();
            }
            catch(Exception ex)
            {
                throw ex.InnerException;
            }
        }
        public static void getFirms(DropDownList firms)
        {
            string query = "select id,firmName from Firms";
            try
            {
                DataTable dt = DB.readFromSQL(query);
                firms.DataSource = dt;
                firms.DataBind();
                firms.DataTextField = "firmName";
                firms.DataValueField = "id";
                firms.DataBind();
            }
            catch (Exception ex)
            {
                throw ex.InnerException;
            }
        }
        public static void getItemsTypes(DropDownList types, int cid)
        {
            string query = "select id,typeName from itemTypes where categoryID="+cid+"";
            try
            {
                DataTable dt = DB.readFromSQL(query);
                types.DataSource = dt;
                types.DataBind();
                types.DataTextField = "typeName";
                types.DataValueField = "id";
                types.DataBind();
            }
            catch (Exception ex)
            {
                throw ex.InnerException;
            }
        }
        public static string AddToDB(string value, string table, int cid)
        {
            string query = "";
            SqlConnection con = new SqlConnection(DB.Con());
            con.Open();
            SqlCommand cmd = null;
            if (cid == -1)
            {
                query = "insert into " + table + " values (@param)";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@param",SqlDbType.VarChar).Value = value;
            }
            else
            {
                query = "insert into " + table + " values (@param,@cid)";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@param",SqlDbType.VarChar).Value = value;
                cmd.Parameters.AddWithValue("@cid",SqlDbType.VarChar).Value = cid;
            }
            try
            {
                int rows = cmd.ExecuteNonQuery();
                con.Close();
                if (rows > 0)
                {
                    return "true";
                }
                else
                {
                    return "false";
                }
            }
            catch(Exception e)
            {
                con.Close();
                string msg = e.Message;
                if(msg.Contains(KeyCode.dept))
                {
                    return value + " Department already exists in the system";
                }
                else if (msg.Contains(KeyCode.design))
                {
                    return "Designation" +value+ " already exists in the system";
                }
                else if (msg.Contains(KeyCode.category))
                {
                    return value + "Category already exists in the system";
                }
                else if (msg.Contains(KeyCode.itemTypes))
                {
                    return value + " is already present in the system";
                }
                return "false";
            }
        }
        public static string AddNewFirm(string name, string email, string address, string cell, string ntn, string gst)
        {
            string query = "insert into Firms values('" + name + "','" + email + "','" + address + "','" + cell + "','" + ntn + "','" + gst + "')";
            try
            {
                bool result = DB.insertIntoSQL(query);
                if(result)
                {
                    return "true";
                }
                else
                {
                    return "false";
                }
            }
            catch(Exception e)
            {
                string msg = e.Message;
                if(msg.Contains(KeyCode.firmname))
                {
                    return name + " already exists in the system";
                }
                else if (msg.Contains(KeyCode.firmemail))
                {
                    return "This Email is already registered with another firm";
                }
                else if (msg.Contains(KeyCode.firmcell))
                {
                    return "This Phone is already registered with another firm";
                }
                return "false";
            }
        }

        public static bool AddNewItem(string date, string code, int typeid, int firmid, int price, int quantity, string description, string receipt)
        {
            int total = price * quantity;
            SqlConnection con = new SqlConnection(DB.Con());
            SqlCommand cmd = new SqlCommand("AddNewItem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@date", SqlDbType.VarChar).Value = date;
            cmd.Parameters.AddWithValue("@code", SqlDbType.VarChar).Value = code;
            cmd.Parameters.AddWithValue("@tid", SqlDbType.Int).Value = typeid;
            cmd.Parameters.AddWithValue("@fid", SqlDbType.Int).Value = firmid;
            cmd.Parameters.AddWithValue("@quantity", SqlDbType.Int).Value = quantity;
            cmd.Parameters.AddWithValue("@price", SqlDbType.Int).Value = price;
            cmd.Parameters.AddWithValue("@total", SqlDbType.Int).Value = total;
            cmd.Parameters.AddWithValue("@description", SqlDbType.VarChar).Value = description;
            if (receipt == null)
            {
                cmd.Parameters.Add("@receipt", SqlDbType.VarChar, -1);
                cmd.Parameters["@receipt"].Value = DBNull.Value;
            }
            else
            {
                cmd.Parameters.AddWithValue("@receipt", SqlDbType.VarChar).Value = receipt;
            }
            try
            {
                int result = cmd.ExecuteNonQuery();
                if(result >0)
                {
                    return true;
                }
                else
                {
                    return false;
                }    
            }
            catch
            {
                return false;
            }
        }
    }
}