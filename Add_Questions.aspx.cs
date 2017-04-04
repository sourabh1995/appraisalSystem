using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Add_Questions : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        txtQuestion.Visible = true;
        btnNew.Visible = true;
        txtMaxMarks.Visible = true;
        lblMaxMarks.Visible = true;
        lblQuestion.Visible = true;
        btnAdd.Visible = false;
        btnView.Visible = false;
        btnView1.Visible = true;
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        

        if (DDdepartment.SelectedValue == "0" || ((rbExecutive.Checked == false) && (rbLeader.Checked == false)) || txtQuestion.Text == "" || txtMaxMarks.Text == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "xyz",
       "alert('Please Fill All The Data');", true);
        }
        else
        {
            int dept_id = Convert.ToInt32(DDdepartment.SelectedValue.ToString());
            string category = "";
            if (rbExecutive.Checked)
            {
                category = rbExecutive.Text.ToString();
            }
            else if (rbLeader.Checked)
            {
                category = rbLeader.Text.ToString();
            }
            string dept_name = Convert.ToString(DDdepartment.SelectedItem.ToString());
            string question = Convert.ToString(txtQuestion.Text.Trim().ToString());
            int max_marks = Convert.ToInt32(txtMaxMarks.Text);
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "PROC_APPRAISAL_INSERT";
            cmd.Parameters.AddWithValue("@APP_SL_NO",0);
            cmd.Parameters.AddWithValue("@APP_DEPT_ID", Convert.ToInt32(DDdepartment.SelectedValue.ToString()));
            cmd.Parameters.AddWithValue("@APP_DEPT_NAME", Convert.ToString(DDdepartment.SelectedItem.ToString()));
            cmd.Parameters.AddWithValue("@APP_ATTRIBUTES", Convert.ToString(txtQuestion.Text.Trim().ToString()));
            cmd.Parameters.AddWithValue("@APP_MAX_MARKS", Convert.ToInt32(txtMaxMarks.Text));
            cmd.Parameters.AddWithValue("@APP_CATEGORY",category);
            cmd.ExecuteNonQuery();
            
            con.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "xyz",
       "alert('Question Added Succesfully');", true);
        }

        }
    protected void btnView_Click(object sender, EventArgs e)
    {
        if (DDdepartment.SelectedValue == "0" || (rbExecutive.Checked == false)&& (rbLeader.Checked == false))
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "xyz",
       "alert('Plese Select Department And Category');", true);
        }
        else { 
        int dept_id = Convert.ToInt32(DDdepartment.SelectedValue.ToString());
        string category = "";
            if (rbExecutive.Checked)
            {
                category = rbExecutive.Text.ToString();
            }
            else if (rbLeader.Checked)
            {
                category = rbLeader.Text.ToString();
            }

            SqlConnection con = new SqlConnection(CS);
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select APP_SL_NO,APP_DEPT_NAME,APP_ATTRIBUTES,APP_MAX_MARKS,APP_CATEGORY from APPRAISAL_MASTER_DB where APP_DEPT_ID = @dept_id AND APP_CATEGORY = @category ";
                cmd.Parameters.Add("@dept_id", SqlDbType.Int).Value = dept_id;
                cmd.Parameters.Add("@category", SqlDbType.VarChar).Value = category;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                gvData.DataSource = ds;
                gvData.DataBind();
            }
            catch (Exception EX)
            {
                throw EX;
            }
        }
    }
}
