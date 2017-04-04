using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class EmployeeChange : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    protected void BtEmployeeLogout_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Session["EMP_ID"] = null;
        Response.Redirect("~/Default.aspx");
    }
    public void ClearControls()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            try
            {
                EmpUsername.Text = "";
                ConfirmUsername.Text = "";
            }
            catch
            {

                throw;
            }
        }
    }
    protected void btn_Change_Username(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(CS);
        if (EmpUsername.Text == "" || ConfirmUsername.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "xyz",
        "alert('Enter both the fields');", true);
        }
        else if(EmpUsername.Text.Trim() != ConfirmUsername.Text.Trim())
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "xyz",
        "alert('Username and Confirm Username Mismatched');", true);
        }
        else
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PROC_EMPLOYEE_ChangeUsername";

                cmd.Parameters.AddWithValue("@EMP_ID", int.Parse(Session["EMP_ID"].ToString()));
                cmd.Parameters.AddWithValue("@EMP_USERNAME", Convert.ToString(EmpUsername.Text));

                cmd.ExecuteNonQuery();
                con.Close();
                ClearControls();
                ScriptManager.RegisterStartupScript(this, GetType(), "xyz1",
        "alert('Username Successfully Updated');", true);
            }
            catch (Exception EX)
            {
                throw EX;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
        }
    }

}