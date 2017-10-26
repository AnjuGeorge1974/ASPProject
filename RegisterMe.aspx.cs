/*
 * Author : Anju George
 * Date : 26 Oct 2017
 * Registers a new player by inserting the details into the player table in the database. 
 * */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisterMe : System.Web.UI.Page
{
    public static string userIdcurrent = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       System.Diagnostics.Debug.WriteLine(userIdcurrent + " on Pageload");
    }

    protected void Loginsubmit_Click(object sender, EventArgs e)
    {
        string firstName = "";
        string middleName = "";
        string lastName = "";
        string emailId = "";
        string phone = "";
        string password = "";
        string role = "";
        string team = "";
        string address = "";
        string myQuery = "";
        string CurrentUser = (string)(Session["UserId"]);
        System.Diagnostics.Debug.WriteLine(CurrentUser + "Current user");
        firstName = FirstNameTxt.Text.ToString();
        middleName = MiddleNameTxt.Text.ToString();
        lastName = LastNameTxt.Text.ToString();
        emailId = EmailIdTxt.Text.ToString();
        phone = PhoneTxt.Text.ToString();
        password = PasswordTxt.Text.ToString();
        role = Rolecmb.Text.ToString();
        team = Teamcmb.Text.ToString();
        address = AddressTxt.Text.ToString();
        DateTime currDateTime = DateTime.Now;
        currDateTime.ToString("yyyy-MM-dd H:mm:ss");
        myQuery = "Insert into Players (FirstName, MiddleName, LastName, EmailId, Phone, Address, Role, Team, CurrDateTime, User, Password) values('" + firstName + "','" + middleName + "','" + lastName + "','" + emailId + "','" + phone + "','" + address +"','"+ role +"','" + team +"','"+ currDateTime.ToString("yyyy-MM-dd H:mm:ss") + "','" + CurrentUser + "','" + password +"')";
        MyFunctions.ConnectAndExecute(myQuery);
        if (MyFunctions.Exec == 1)
        {
            FirstNameTxt.Text = "";
            MiddleNameTxt.Text = "";
            LastNameTxt.Text = "";
            EmailIdTxt.Text = "";
            PhoneTxt.Text = "";
            PasswordTxt.Text = "";
            AddressTxt.Text = "";
            SuccessMessage.Text = "Player registered successfully";

            Response.Redirect("Search.aspx");

           
        }
       

    }

    

    protected void SearchButton_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx");
    }

    
    
}