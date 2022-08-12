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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender,EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\OnlineMedicalStoreProject\OnlineMedicalStoreProject\App_Data\MedicalData.mdf;Integrated Security=True");
            SqlCommand cmd;
            SqlDataAdapter da = new SqlDataAdapter();
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();

            try
            {
                if (DroupDownListLogin.SelectedValue.ToString() == "USER")
                {
                  string  str = "select * from UserRegister where email='"+txtusername.Text+"' and pass='"+txtpassword.Text+"'";

                    da = new SqlDataAdapter(str, con);
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {

                        
                        Response.Redirect("MakeOrder.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Please try registration')</script>");
                    }
                }
                else if (DroupDownListLogin.SelectedValue.ToString() == "ADMIN")
                {
                   string str1 = "select * from Admin where userName='" + txtusername.Text + "' and pass='" + txtpassword.Text + "'";
                    da = new SqlDataAdapter(str1, con);
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {

                        Response.Redirect("../Admin/AdminHome.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('User name or password rong')</script>");
                    }

                }
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