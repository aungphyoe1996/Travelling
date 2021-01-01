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
    public partial class AddCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=AUNGPHYOE;Initial Catalog=Travelling;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("INSERT INTO[dbo].[Car] ([CarName],[Seat],[IsAvailable],[PricePerDay]) VALUES ('"+txtCarName.Text+"','"+txtNoOfSeats.Text+"','"+cbAvailable.Checked+"','"+txtPricePerDay.Text+"')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("/");
        }
    }
}