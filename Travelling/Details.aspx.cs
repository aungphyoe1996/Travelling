using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Travelling
{
    public partial class Details : System.Web.UI.Page
    {
        public int Calculate()
        {
            DateTime d1 = Convert.ToDateTime(Calendar1.SelectedDate);
            DateTime d2 = Convert.ToDateTime(Calendar2.SelectedDate);
            TimeSpan timeDifference = d2 - d1;
            int period = timeDifference.Days + 1;
            return period;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] ==null)
            {
                btnConfirm.Visible = false;
            }
            if (!Page.IsPostBack)
            {              
                DropDownList1.Items.Insert(0, new ListItem(String.Empty, String.Empty));
                DropDownList1.SelectedIndex = 0;             
            }

        }    

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {         
            SqlConnection con = new SqlConnection("Data Source=AUNGPHYOE;Initial Catalog=Travelling;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT [Seat],[PricePerDay] FROM[Travelling].[dbo].[Car] where ID=@ID", con);
            cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(DropDownList1.Text));
            DataTable dataTable = new DataTable();
            DataTable dt = dataTable;
            SqlDataAdapter adt = new SqlDataAdapter(cmd);
            adt.Fill(dt);

            cmd.ExecuteNonQuery();

            txtNoOfSeat.Text = dt.Rows[0][0].ToString();
            txtPricePerDay.Text = dt.Rows[0][1].ToString();
            
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int period=Calculate();
            SqlConnection con = new SqlConnection("Data Source=AUNGPHYOE;Initial Catalog=Travelling;Integrated Security=True");
            string ID = Request.QueryString["id"];
            con.Open();
            SqlCommand testsearch = new SqlCommand("SELECT [PlaceID],[CarID],[UID],[Period] FROM[Travelling].[dbo].[Order]where PlaceID=@PID and UID=@UID and CarID=@CID", con);
            testsearch.Parameters.AddWithValue("@PID", ID);
            testsearch.Parameters.AddWithValue("@UID", Session["ID"]);
            testsearch.Parameters.AddWithValue("@CID", Convert.ToInt32(DropDownList1.SelectedValue));
            SqlDataAdapter sda = new SqlDataAdapter(testsearch);
            DataTable a = new DataTable();
            sda.Fill(a);   //is there row in order table with this user

            if (a.Rows.Count > 0)       //if already ordered (there is row in datatable)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Already Ordered')</script>");
            }
            else
            {
                SqlCommand sq = new SqlCommand("INSERT INTO [dbo].[Order] ([PlaceID],[CarID],[UID],[Period],[EndDate]) VALUES('" + ID + "','" + Convert.ToInt32(DropDownList1.SelectedValue) + "','" + Session["ID"] + "','" + period + "','"+Calendar2.SelectedDate+"')", con);
                SqlCommand sq1 = new SqlCommand("UPDATE [dbo].[Car] SET [ArrivalDate] = '" + Calendar2.SelectedDate + "' WHERE ID = '" + Convert.ToInt32(DropDownList1.SelectedValue) + "'", con);
                sq.Parameters.AddWithValue("@PID", ID);
                sq.Parameters.AddWithValue("@UID", Session["ID"]);
                sq.Parameters.AddWithValue("@CID", Convert.ToInt32(DropDownList1.SelectedValue));
                sq.ExecuteNonQuery();
                sq1.ExecuteNonQuery();

                

                con.Close();
                Response.Redirect("/");
            }


        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {


        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

            
            protected void Button1_Click1(object sender, EventArgs e)
        {
            DateTime d1 = Convert.ToDateTime(Calendar1.SelectedDate);
            DateTime d2 = Convert.ToDateTime(Calendar2.SelectedDate);
            if (txtPricePerDay.Text=="")
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Please Select Car')</script>");
            }
            else if (d1 >= d2)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Please Check Date')</script>");
            }
            else
            {
                int period = Calculate();
                int total = (period) * Convert.ToInt32(txtPricePerDay.Text);
                txtTotalAmt.Text = total.ToString();
            }
        }
    }
}