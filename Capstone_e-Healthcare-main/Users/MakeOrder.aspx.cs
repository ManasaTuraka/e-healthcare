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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnMakeOrder_Click(object sender,EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\OnlineMedicalStoreProject\OnlineMedicalStoreProject\App_Data\MedicalData.mdf;Integrated Security=True");
            SqlCommand cmd;
            con.Open();

            try
            {
                string str = "insert into OrderTbl values('"+txtFirstName.Text+"','"+txtLastName.Text+"','"+txtEmails.Text+"',"+txtMobiles.Text+",'"+DropDownListMediicineType.SelectedValue.ToString()+"','"+txtMedicineName.Text+"',"+txtQuantity.Text+",'"+txtDate.Text+"')";
                cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Order Is Confirm Succesfull')</script>");
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
        protected void btnLogout_Click(object sender,EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }


    }
}