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
                DataTable DtTampil = new DataTable();
                SqlConnection Sqlconn = new SqlConnection(ClsModule.conn.ToString());
                SqlCommand Sqlcmd = new SqlCommand();
                SqlDataAdapter Sqlda = new SqlDataAdapter();

                Sqlconn.Open();
                Sqlcmd.Connection = Sqlconn;
                Sqlcmd.CommandType = CommandType.Text;
                Sqlcmd.CommandText = "select * from Status order by RN asc";
                Sqlda.SelectCommand = Sqlcmd;
                Sqlda.Fill(DtTampil);
                Sqlconn.Close();
                return DtTampil;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void SaveData(string SN, string Description, string Family, string BU, string BU_Line, string Status, string Owner_Engineer, string RF_ID, string CO, string EAM, string Asset_Group_Description)
        {
            try
            {
                SqlConnection sqlconn = new SqlConnection(ClsModule.conn.ToString());
                SqlCommand sqlcmd = new SqlCommand();

                sqlconn.Open();
                sqlcmd.Connection = sqlconn;
                sqlcmd.CommandType = CommandType.Text;
                sqlcmd.CommandText = "insert into Status values('"+SN+"','"+Description+ "','"+Family+ "','"+BU+"','"+BU_Line+"','"+Status+"','"+Owner_Engineer+"','"+RF_ID+"','"+CO+"','"+EAM+"','"+Asset_Group_Description+"')";
                sqlcmd.ExecuteNonQuery();
                sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void EditData(string SN, string Description, string Family, string BU, string BU_Line, string Status, string Owner_Engineer, string RF_ID, string CO, string EAM, string Asset_Group_Description)
        {
            try
            {
                SqlConnection sqlconn = new SqlConnection(ClsModule.conn.ToString());
                SqlCommand sqlcmd = new SqlCommand();

                sqlconn.Open();
                sqlcmd.Connection = sqlconn;
                sqlcmd.CommandType = CommandType.Text;
                sqlcmd.CommandText = "";
                sqlcmd.ExecuteNonQuery();
                sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}