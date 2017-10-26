/*
 * Author : Anju George
 * Date : 26 Oct 2017
 * Contains a function that makes connection to the database and executes the query.
 * */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;


/// <summary>
/// Summary description for MyFunctions
/// </summary>
public class MyFunctions
{
    public static MySqlDataReader myReader;
    public static int Exec = 0;

    public MyFunctions()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static void ConnectAndExecute(string query)
    {
        Exec = 0;
        string connectionString = "datasource=127.0.0.1;port=3306;username=root;password=;database=cricketasp;";
        MySqlConnection databaseConnection = new MySqlConnection(connectionString);
        MySqlCommand commandDatabase = new MySqlCommand(query, databaseConnection);
        commandDatabase.CommandTimeout = 60;
        System.Diagnostics.Debug.WriteLine(query + "My query");
        try
        {
            databaseConnection.Open();
            myReader = commandDatabase.ExecuteReader();
            if (!myReader.HasRows)
            {
                Exec = 1;
            }
          }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(ex + "Error message");
        }

    }

}