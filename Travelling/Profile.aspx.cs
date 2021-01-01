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
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=AUNGPHYOE;Initial Catalog=Travelling;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM[dbo].[Order] where UID = @uid",con);
            cmd.Parameters.AddWithValue("@uid", Session["ID"]);
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adt.Fill(dt);
            if (dt.Rows.Count==0)
            {
                btnOrder.Visible = false;
                Label1.Visible = false;
                LinkButton1.Visible = false;
            }
            con.Open();
            con.Close();
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=AUNGPHYOE;Initial Catalog=Travelling;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT [CarID],[Period]  FROM[dbo].[Order] where UID = @uid",con);
            cmd.Parameters.AddWithValue("@uid", Session["ID"]);
            SqlDataAdapter dt = new SqlDataAdapter(cmd);
            DataTable dtable = new DataTable();
            dt.Fill(dtable);           
            SqlCommand cmd1 = new SqlCommand("UPDATE [dbo].[Car] SET [IsAvailable] = 'false' WHERE ID = @CarID", con);   
            cmd1.Parameters.AddWithValue("@CarID", dtable.Rows[0][0]);   // make isAva to false for that car
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Redirect("/Payment");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/");
        }
    }
}