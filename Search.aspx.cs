/*
 * Author : Anju George
 * Date : 26 Oct 2017
 * This searches for the players on selecting a team from the dropdown list and displays it.
 * On clicking the update/Delete link against each record it takes you to the Uodate page where 
 * you can update or delete the player.
 * */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data;
public partial class Search : System.Web.UI.Page
{
    
    protected void Teamcmb_SelectedIndexChanged(object sender, EventArgs e)
    {
        string team = "";
        string query = "";
        System.Diagnostics.Debug.WriteLine(Teamcmb.SelectedIndex + "Teamcmb.SelectedIndexE");
        if (Teamcmb.SelectedIndex != -1)
        {
            team = Teamcmb.Text.ToString();
            team = team.Trim();
            query = "Select * from players where team = '" + team + "'";
            Console.WriteLine(query);
            MyFunctions.ConnectAndExecute(query);
            
            DataTable dataTable = new DataTable();
            dataTable.Columns.Add("PlayerId");
            dataTable.Columns.Add("FirstName");
            dataTable.Columns.Add("MiddleName");
            dataTable.Columns.Add("LastName");
            dataTable.Columns.Add("EmailId");
            dataTable.Columns.Add("Phone");
            dataTable.Columns.Add("Address");
            dataTable.Columns.Add("Role");
            dataTable.Columns.Add("Team");
            while (MyFunctions.myReader.Read())
            {
                DataRow row = dataTable.NewRow();
                row["PlayerId"] = MyFunctions.myReader["PlayerId"];
                row["FirstName"] = MyFunctions.myReader["FirstName"];
                row["MiddleName"] = MyFunctions.myReader["MiddleName"];
                row["LastName"] = MyFunctions.myReader["LastName"];
                row["EmailId"] = MyFunctions.myReader["EmailId"];
                row["Phone"] = MyFunctions.myReader["Phone"];
                row["Address"] = MyFunctions.myReader["Address"];
                row["Role"] = MyFunctions.myReader["Role"];
                row["Team"] = MyFunctions.myReader["Team"];
                dataTable.Rows.Add(row);
            }
            GridView1.DataSource = dataTable;
            GridView1.DataBind();

        }

    }



    protected void Searchsubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegisterMe.aspx");

    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ExitButton_Click(object sender, EventArgs e)
    {
       System.Environment.Exit(1);
}
}