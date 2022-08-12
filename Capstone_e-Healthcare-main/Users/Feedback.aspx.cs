using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineMedicalStoreProject.Users
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
           // Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = D:\OnlineMedicalStoreProject\OnlineMedicalStoreProject\App_Data\MedicalData.mdf; Integrated Security = True
            SqlConnection con = new SqlConnection(@"");
            SqlCommand cmd;
            con.Open();

            try
            {
                string str1 = "insert into Feedback values('"+txtFirstName.Text+"','"+txtLastName.Text+"','"+txtEmail.Text+"',"+txtMobile.Text+",'"+txtMessage.Text+"')";
                cmd = new SqlCommand(str1, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Feedback Send  Succesfull')</script>");
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
    }
}