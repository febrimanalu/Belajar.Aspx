using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Belajar.Aspx.classes;

namespace Belajar.Aspx.classes
{
    public class ClsStatus
    {
        public static DataTable DtStatus()
        {
            try
            {
                DataTable dtstatus = new DataTable();
                SqlConnection con = new SqlConnection(ClsModule.conn.ToString());
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter Da = new SqlDataAdapter();

                con.Open();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Status order by S/N asc";
                Da.SelectCommand = cmd;
                Da.Fill(dtstatus);
                con.Close();
                return dtstatus;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}