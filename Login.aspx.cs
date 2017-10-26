
/*
 * Author : Anju George
 * Date : 26 Oct 2017
 * This CS file is called when the user click Login. 
 * It checks whether the username and the password matches and 
 * then sends the user to the search page if it matches 
 * else will take the user back to login page with the error message.
  */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Login : System.Web.UI.Page
{
    
   
    protected void Lsubmit_Click(object sender, EventArgs e)
    {
        string ErrorMessage1 = "";
        string userId = myEmailId.Text.ToString();
        userId = userId.Trim();
        string password = myPassword.Text.ToString();
        password = password.Trim();
        string myQuery = "Select * from Players where emailid = '" + userId + "' and Password = '" + password + "'";
        MyFunctions.ConnectAndExecute(myQuery);
        if (MyFunctions.myReader.HasRows)
        {
            while (MyFunctions.myReader.Read())
            {
                Session.Add("UserId", userId);
                Response.Redirect("Search.aspx?UserId=" + userId);
            }
        }
        else
        {
            myEmailId.Text = "";
            myPassword.Text = "";
            ErrorMessage1 = "The emailId and the password doesn't match";
            ErrorMessage.Text = ErrorMessage1;

          
        }

    }
}