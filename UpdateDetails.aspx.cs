/*
 * Author : Anju George
 * Date : 26 Oct 2017
 * Fetches the record of the player to be updated and lets the user update all the fields 
 * and on clicking update button updates it in the database. On clicking delete the record is deleted.
 * */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateDetails : System.Web.UI.Page
{
    public static string PlayerUpdateId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            PlayerUpdateId = Request.QueryString["Id"].ToString();
            
        }
        string myQuery = "Select * from Players where PlayerId = " + PlayerUpdateId;
      
        MyFunctions.ConnectAndExecute(myQuery);
        if (MyFunctions.myReader.HasRows)
        {
            while (MyFunctions.myReader.Read())
            {
                if (!Page.IsPostBack)
                {

                    FirstNameTxt.Text = MyFunctions.myReader.GetString(1);
                    MiddleNameTxt.Text = MyFunctions.myReader.GetString(2);
                    LastNameTxt.Text = MyFunctions.myReader.GetString(3);
                    EmailIdTxt.Text = MyFunctions.myReader.GetString(4);
                    PhoneTxt.Text = MyFunctions.myReader.GetString(5);
                    AddressTxt.Text = MyFunctions.myReader.GetString(6);
                    Rolecmb.Text = MyFunctions.myReader.GetString(7);
                    Teamcmb.Text = MyFunctions.myReader.GetString(8);
                    PasswordTxt.Text = MyFunctions.myReader.GetString(11);
                    PlayerIdHide.Value = MyFunctions.myReader.GetString(0);

                }
            }
        }
        else
        {
           }

    }

    protected void Updatesubmit_Click(object sender, EventArgs e)
    {
            string FirstNameUpdate = FirstNameTxt.Text.ToString();
            string MiddleNameUpdate = MiddleNameTxt.Text.ToString();
            System.Diagnostics.Debug.WriteLine(MiddleNameUpdate + " My New middleName");
            string LastNameUpdate = LastNameTxt.Text.ToString();
            string EmailIdUpdate = EmailIdTxt.Text.ToString();
            string PhoneUpdate = PhoneTxt.Text.ToString();
            string AddressUpdate = AddressTxt.Text.ToString();
            string RoleUpdate = Rolecmb.Text.ToString();
            string TeamUpdate = Teamcmb.Text.ToString();
            string PasswordUpdate = PasswordTxt.Text.ToString();
            string myUpdateQuery = "";
            string CurrentUser = (string)(Session["UserId"]);
            DateTime currDateTime = DateTime.Now;
            currDateTime.ToString("yyyy-MM-dd H:mm:ss");
            PlayerUpdateId = PlayerIdHide.Value;
            int myPlayerUpdateId = Convert.ToInt32(PlayerUpdateId);
            myUpdateQuery = "update  Players set FirstName = '" + FirstNameUpdate + "', MiddleName = '" + MiddleNameUpdate + "', LastName = '" + LastNameUpdate + "', EmailId = '" + EmailIdUpdate + "', Phone = '" + PhoneUpdate + "', Address = '" + AddressUpdate + "', Role = '" + RoleUpdate + "', Team = '" + TeamUpdate + "', CurrDateTime = '" + currDateTime.ToString("yyyy-MM-dd H:mm:ss") + "', User = '" + CurrentUser + "', Password = '" + PasswordUpdate + "' where PlayerId = " + myPlayerUpdateId;
            MyFunctions.ConnectAndExecute(myUpdateQuery);
           
            if (MyFunctions.Exec == 1)
            {
                SuccessMessage.Text = "Updated successfully";

              

            }

        
    }

    protected void DeleteButton_Click(object sender, EventArgs e)
    {
        string PlayerDeleteId = PlayerIdHide.Value;
        int myPlayerDeleteId = Convert.ToInt32(PlayerDeleteId);
        string myDeleteQuery = "Delete from Players where PlayerId = " + myPlayerDeleteId;
        MyFunctions.ConnectAndExecute(myDeleteQuery);
       
        if (MyFunctions.Exec == 1)
        {

            SuccessMessage.Text = "Deleted successfully";
            Updatesubmit.Enabled =false;
            DeleteButton.Enabled = false;


        }

    }

    protected void BackButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx");

    }
}
