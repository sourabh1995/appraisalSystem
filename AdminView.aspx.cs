using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminView : System.Web.UI.Page
{
    protected override void OnPreInit(EventArgs e)
    {
        if(Session["USERNAME"]== null)
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }
    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            try
            {
                txtEmployeeDept.Focus();
                if (!IsPostBack)
                {
                    FillGrid();
                }
            }
            catch
            {

            }
        }
    }
    
    public void FillGrid()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select EMP_ID,EMP_DEPT,EMP_NAME,EMP_DATEOF_JOINING,EMP_POSITION,EMP_USERNAME,EMP_PASSWORD from EMPLOYEE_DB";
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                gvData.DataSource = ds;
                gvData.DataBind();
            }
            catch
            {

            }
        }
    }
    public void ClearControls()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            try
            {
                txtEmployeeDept.Text = "";
                txtEmployeeName.Text = "";
                txtDOJ.Text = "";
                txtPosition.Text = "";
                txtUsername.Text = "";
                txtPassword.Text = "";
                hidEMP_ID.Value = "";
                btnSave.Visible = true;
                btnUpdate.Visible = false;
            }
            catch
            {

                throw;
            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PROC_EMPLOYEE_DB";
                cmd.Parameters.AddWithValue("@EMP_ID", 0);
                cmd.Parameters.AddWithValue("@EMP_DEPT", txtEmployeeDept.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@EMP_NAME", txtEmployeeName.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@EMP_DATEOF_JOINING", txtDOJ.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@EMP_POSITION", txtPosition.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@EMP_USERNAME", txtUsername.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@EMP_PASSWORD", txtPassword.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@TYPE", "I");
                cmd.ExecuteNonQuery();

                con.Close();
                FillGrid();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "abc", " alert('Data Successfully Submitted'),", true);
                ClearControls();

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            try
            {
                ClearControls();
            }
            catch
            {

            }
        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            try
            {
                ClearControls();
                ImageButton btn = sender as ImageButton;
                GridViewRow grow = btn.NamingContainer as GridViewRow;
                hidEMP_ID.Value = (grow.FindControl("lblempid") as Label).Text;
                txtEmployeeDept.Text = (grow.FindControl("lblEmployeeDept") as Label).Text;
                txtEmployeeName.Text = (grow.FindControl("lblEmployeeName") as Label).Text;
                txtDOJ.Text = (grow.FindControl("lblDOJ") as Label).Text;
                txtPosition.Text = (grow.FindControl("lblPosition") as Label).Text;
                txtUsername.Text = (grow.FindControl("lblUsername") as Label).Text;
                txtPassword.Text = (grow.FindControl("lblPassword") as Label).Text;
                btnSave.Visible = false;
                btnUpdate.Visible = true;
            }
            catch (Exception EX)
            {
                throw EX;
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PROC_EMPLOYEE_update";
                cmd.Parameters.AddWithValue("@EMP_ID", Convert.ToInt32(hidEMP_ID.Value));
                cmd.Parameters.AddWithValue("@EMP_DEPT", Convert.ToString(txtEmployeeDept.Text));
                cmd.Parameters.AddWithValue("@EMP_NAME", Convert.ToString(txtEmployeeName.Text));
                cmd.Parameters.AddWithValue("@EMP_DATEOF_JOINING", Convert.ToString(txtDOJ.Text));
                cmd.Parameters.AddWithValue("@EMP_POSITION", Convert.ToString(txtPosition.Text));
                cmd.Parameters.AddWithValue("@EMP_USERNAME", Convert.ToString(txtUsername.Text));
                cmd.Parameters.AddWithValue("@EMP_PASSWORD", Convert.ToString(txtPassword.Text));
                cmd.Parameters.AddWithValue("@TYPE", "U");
                cmd.ExecuteNonQuery();
                con.Close();
                ClearControls();
                FillGrid();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "abc", " alert('Data Updated Submitted'),", true);
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
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            try
            {
                ClearControls();
                ImageButton btn = sender as ImageButton;
                GridViewRow grow = btn.NamingContainer as GridViewRow;
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PROC_EMPLOYEE_Delete";
                cmd.Parameters.AddWithValue("@EMP_DEPT", "");
                cmd.Parameters.AddWithValue("@EMP_NAME", "");
                cmd.Parameters.AddWithValue("@EMP_DATEOF_JOINING", "");
                cmd.Parameters.AddWithValue("@EMP_POSITION", "");
                cmd.Parameters.AddWithValue("@EMP_USERNAME", "");
                cmd.Parameters.AddWithValue("@EMP_PASSWORD", "");
                cmd.Parameters.AddWithValue("@TYPE", "D");
                cmd.Parameters.AddWithValue("@EMP_ID", Convert.ToInt32((grow.FindControl("lblempid") as Label).Text));


                cmd.ExecuteNonQuery();
                con.Close();
                FillGrid();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "abc", " alert('Data deleted'),", true);
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