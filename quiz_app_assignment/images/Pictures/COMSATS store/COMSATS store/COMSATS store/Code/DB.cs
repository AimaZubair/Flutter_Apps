using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace COMSATS_store.Code
{
    public class DB
    {
        public static string Con()  //build connection string
        {
            SqlConnectionStringBuilder obj = new SqlConnectionStringBuilder();
            obj.DataSource = "AIMA-PC";
            obj.InitialCatalog = "InventoryMS";
            obj.IntegratedSecurity = true; //dont need username or password
            return obj.ConnectionString;

        }
        public static DataTable readFromSQL(string query)
        {
            SqlConnection con = new SqlConnection(DB.Con());
            con.Open();
            SqlDataAdapter adapt = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            adapt.Fill(dt);
            con.Close();
            return dt;
        }

        public static bool insertIntoSQL(string query)  
        {
            SqlConnection con = new SqlConnection(DB.Con());
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result <= 0) //check whether data insert or not
            {
                return false;
            }
            else
            {
                return true;

            }
        }
    }
    
}