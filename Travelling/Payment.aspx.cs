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
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton_Command();
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton_Command();
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton_Command();
        }
        void ImageButton_Command()
        {
            string UID = Session["ID"].ToString();
            SqlConnection con = new SqlConnection("Data Source=AUNGPHYOE;Initial Catalog=Travelling;Integrated Security=True");
            SqlCommand s = new SqlCommand("DELETE FROM [dbo].[Order]   WHERE UID = @uid", con);
            s.Parameters.AddWithValue("@uid", UID);
            con.Open();
            s.ExecuteNonQuery();

           

            con.Close();
            pnlPayment.Controls.Add(new Label()
            {
                Text = "Thank for joining us. <br /> I hope you are satisfy. See you again! "
            });
        }
    }
}