using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Web;

namespace COMSATS_store.Code
{
    public class HelperEmployees
    {
        private string empName;
        private string empID;
        private int department;
        private int designation;
        private string email;
        private string address;
        private string phone;
        private string gender;
        private string password;
        private int accoutType;
        //private byte[] picture;
        private string picture;
        //properties of every attribute
        public string EmployeeName
        {
            set => empName = value;
            get => empName;
        }
        public string EmployeeID
        {
            set => empID = value;
            get => empID;
        }
        public int EmployeeDepartment
        {
            set => department = value;
            get => department;
        }
        public int EmployeeDesignation
        {
            set => designation = value;
            get => designation;
        }
        public string EmployeeEmail
        {
            set => email = value;
            get => email;
        }
        public string EmployeeAddress
        {
            set => address = value;
            get => address;
        }
        public string Employeephone
        {
            set => phone = value;
            get => phone;
        }
        public string EmployeeGender
        {
            set => gender = value;
            get => gender;
        }
        public string EmployeePassword
        {
            set => password = value;
            get => password;
        }
        public int EmployeeAccountType
        {
            set => accoutType = value;
            get => accoutType;
        }
        //public byte[] EmployeePicture
        //{
        //    set => picture = value;
        //    get => picture;
        //}
        public string EmployeePicture
        {
            set => picture = value;
            get => picture;
        }
        public static DataTable getDepartments()
        {
            string query = "select * from Departments";
            DataTable dt = DB.readFromSQL(query);
            return dt;
        }
        public static DataTable getDesigantion()
        {
            string query = "select * from Designation";
            DataTable dt = DB.readFromSQL(query);
            return dt;
        }
        public string CheckHOD (int DepartmentID)
        {
            string query= @"select username from Employee where deptID="+ DepartmentID +""+ 
                           "and roleid=2";
            DataTable dt = DB.readFromSQL(query);
            try
            {
                if (dt.Rows.Count > 0)
                {
                    return dt.Rows[0].Field<string>("username");
                }
                else
                {
                    return "false";
                }
            }
            catch
            {
                return "false";
            }
        }
        //Procedure to insert in table of employees
        public static string AddNewEmployee(HelperEmployees obj)
        {
            SqlConnection con = new SqlConnection(DB.Con());
            SqlCommand cmd = new SqlCommand("AddNewEmployee", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@empID", SqlDbType.VarChar).Value = obj.EmployeeID;
            cmd.Parameters.AddWithValue("@phone", SqlDbType.VarChar).Value = obj.Employeephone;
            cmd.Parameters.AddWithValue("@gender", SqlDbType.VarChar).Value = obj.EmployeeGender;
            cmd.Parameters.AddWithValue("@picture", SqlDbType.VarChar).Value = obj.EmployeePicture;
            cmd.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = obj.EmployeeEmail;
            cmd.Parameters.AddWithValue("@pwd", SqlDbType.VarChar).Value = obj.EmployeePassword;
            cmd.Parameters.AddWithValue("@username", SqlDbType.VarChar).Value = obj.EmployeeName;
            cmd.Parameters.AddWithValue("@deptID", SqlDbType.Int).Value = obj.EmployeeDepartment;
            cmd.Parameters.AddWithValue("@designID", SqlDbType.Int).Value = obj.EmployeeDesignation;
            cmd.Parameters.AddWithValue("@roleid", SqlDbType.Int).Value = obj.EmployeeAccountType;
            cmd.Parameters.AddWithValue("@address", SqlDbType.VarChar).Value = obj.EmployeeAddress;
            try
            {
                int result = cmd.ExecuteNonQuery();
                con.Close();
                if (result >0)
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
                con.Close();
                string msg = ex.Message;
                if (msg.Contains(KeyCode.email))
                {
                    return "Employee Email Aready Exist.";
                }
                if (msg.Contains(KeyCode.empID))
                {
                    return "Employee ID Aready Exist.";
                }
                if (msg.Contains(KeyCode.phone))
                {
                    return "Employee Phone Aready Exist.";
                }

                return "Some Error Occured. Try Again";
            }
        }
    }
}