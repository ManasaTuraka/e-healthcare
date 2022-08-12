using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace OnlineMedicalStoreProject.Users
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bndmedicine();
            }
        }
        void bndmedicine()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\OnlineMedicalStoreProject\OnlineMedicalStoreProject\App_Data\MedicalData.mdf;Integrated Security=True");
            SqlCommand cmd;
            SqlDataAdapter da = new SqlDataAdapter();
            DataSet ds = new DataSet();

            con.Open();

            try
            {
                string str = "select * from Medicine";
                da = new SqlDataAdapter(str, con);
                da.Fill(ds);

                GridView1Feedback.DataSource = ds;
                GridView1Feedback.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }

        }

        protected void SearchByTagButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\OnlineMedicalStoreProject\OnlineMedicalStoreProject\App_Data\MedicalData.mdf;Integrated Security=True");
            SqlCommand cmd=new SqlCommand("Select * FROM Medicine WHERE tableName=@SearchByTagTB", con);
            con.Open();
            try
            {

                SqlParameter search = new SqlParameter();
                search.ParameterName = "@SearchByTagTB";
                search.Value = SearchByTagTB.Text.Trim();

                cmd.Parameters.Add(search);
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);

                gvPatients.DataSource = dt;
                gvPatients.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                //Connection Object Closed
                con.Close();
            }
        }
    }
}