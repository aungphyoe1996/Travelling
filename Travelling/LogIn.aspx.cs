using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Travelling
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

        }

        protected void btnLogIn_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=AUNGPHYOE;Initial Catalog=Travelling;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT [Password],[ID]  FROM[dbo].[User]  where [Username] = '" + txtUserName.Text + "'", con);


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                string data = dt.Rows[0][0].ToString();
                if (data == txtPassword.Text)
                {
                    Session["ID"] = dt.Rows[0][1];
                    Session["uname"] = txtUserName.Text;
                    Response.Redirect("/");
                }
                else
                {

                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Wrong Password')</script>");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
            con.Close();
        }
    }
}