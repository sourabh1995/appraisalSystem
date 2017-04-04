using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class EmployeeChangePassword : System.Web.UI.Page
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
                EmpPassword.Text = "";
                ConfirmPassword.Text = "";
            }
            catch
            {

                throw;
            }
        }
    }
    protected void btn_Change_Password(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(CS);
        if (EmpPassword.Text == "" || ConfirmPassword.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "xyz",
        "alert('Enter both the fields');", true);
        }
        else if (EmpPassword.Text.Trim() != ConfirmPassword.Text.Trim())
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "xyz",
        "alert('Username and Confirm Password mismatched');", true);
        }
        else
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PROC_EMPLOYEE_ChangePassword";

                cmd.Parameters.AddWithValue("@EMP_ID", int.Parse(Session["EMP_ID"].ToString()));
                cmd.Parameters.AddWithValue("@EMP_PASSWORD", Convert.ToString(EmpPassword.Text));

                cmd.ExecuteNonQuery();
                con.Close();
                ClearControls();
                ScriptManager.RegisterStartupScript(this, GetType(), "xyz1",
        "alert('Password Successfully Updated');", true);
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