using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace OnlineMedicalStoreProject.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                bnduser();
            }
        }

        void bnduser()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\OnlineMedicalStoreProject\OnlineMedicalStoreProject\App_Data\MedicalData.mdf;Integrated Security=True");
            SqlCommand cmd;
            SqlDataAdapter da = new SqlDataAdapter();
            DataSet ds = new DataSet();

            con.Open();

            try
            {
                string str = "select * from UserRegister";
                da = new SqlDataAdapter(str, con);
                da.Fill(ds);

                GridView01User.DataSource = ds;
                GridView01User.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }


        }

        protected void GridView01User_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}