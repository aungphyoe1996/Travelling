using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Configuration;

namespace Travelling
{
    public partial class AddPlace : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (!FileUpload1.HasFile)
            {
                Response.Write("Select Image");
            }
            else
            {

                string imgFile = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("Image/" + imgFile));


                SqlConnection con = new SqlConnection("Data Source=AUNGPHYOE;Initial Catalog=Travelling;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[Places] ([PlaceName],[Description],[Image]) VALUES('" + txtPlaceName.Text + "','" + txtDescription.Text + "',@imgFilePath)",con);
                cmd.Parameters.AddWithValue("@imgFilePath", "Image/" + imgFile);
                Response.Write("Image/" + imgFile);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            Response.Redirect("/");

        }
    }
}