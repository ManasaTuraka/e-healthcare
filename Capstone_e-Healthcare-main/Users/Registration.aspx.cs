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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\OnlineMedicalStoreProject\OnlineMedicalStoreProject\App_Data\MedicalData.mdf;Integrated Security=True");
            SqlCommand cmd;
            con.Open();

            try
            {
                string str = "insert into UserRegister values('"+txtFirstNAme.Text+"','"+txtMiddleName.Text+"','"+txtLAstNAme.Text+"','"+RadioButtoneList_Gender.SelectedValue.ToString()+"',"+txtMobile.Text+",'"+txt_Address.Text+"','"+txtEmail.Text+"','"+txt_signup_pass.Text+"')";
                cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Registration Succesfull')</script>");
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
    }
}