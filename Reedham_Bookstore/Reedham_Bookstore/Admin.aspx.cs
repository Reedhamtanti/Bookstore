using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reedham_Bookstore
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAddGenre_Click(object sender, EventArgs e)
        {
            string newGenre = txtGenretype.Text;

            string connectionstrig =  ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionstrig);
            conn.Open();

            string query = "INSERT INTO dbo.Genre (Genre_Id,Genre_Type) VALUES (@newGenre,@newGenre)";

            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.Add("@newGenre", newGenre);
            command.ExecuteNonQuery();

             Response.Redirect("~/Admin.aspx");

        }
    }
}