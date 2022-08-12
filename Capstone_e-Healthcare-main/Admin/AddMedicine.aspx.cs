using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineMedicalStoreProject.Admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddMedicine_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\OnlineMedicalStoreProject\OnlineMedicalStoreProject\App_Data\MedicalData.mdf;Integrated Security=True");
            SqlCommand cmd;
            con.Open();

            try
            {
                string str2 = "insert into Medicine values("+txtTablateCode.Text+",'"+txtMedicineName.Text+"','"+DropDownListMediicineTypes.SelectedValue.ToString()+"',"+txtPrice.Text+","+txtQuantity.Text+",'"+txtMDate.Text+"','"+txtEDate.Text+"','"+txtdescription.Text+"')";
                cmd = new SqlCommand(str2, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Product Add Succesfull')</script>");
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