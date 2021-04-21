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
        public static string Con()
        {
            SqlConnectionStringBuilder obj = new SqlConnectionStringBuilder();
            obj.DataSource = "AIMA-PC";
            obj.InitialCatalog = "InventoryMS";
            obj.IntegratedSecurity = true;
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
            if (result <= 0)
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