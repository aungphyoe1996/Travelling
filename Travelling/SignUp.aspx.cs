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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if ((txtFullName.Text.ToString() != "") && (txtAddress.Text.ToString() != "") && (txtPhoneNo.Text.ToString() != "") && (txtEmail.Text.ToString() != "") && (txtUserName.Text.ToString() != "") && (txtPassword.Text.ToString() != ""))
            {
                SqlConnection con = new SqlConnection("Data Source=AUNGPHYOE;Initial Catalog=Travelling;Integrated Security=True");
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[User] ([Name],[Address],[Email],[Phone],[UserName],[Password]) VALUES('" + txtFullName.Text + "','" + txtAddress.Text + "','" + txtEmail.Text + "','" + txtPhoneNo.Text + "','" + txtUserName.Text + "','" + txtPassword.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Registered Successfully')</script>");
                Response.Redirect("LogIn.aspx");
            }
            else
            {

                lbl1.Text = "Please Fill Information";
                lbl1.Visible = true;


            }
        }
    }
}