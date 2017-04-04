using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class Employee_Form : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(CS);
        SqlCommand cmd = new SqlCommand();
        String Dept = (Session["EMP_DEPT"]).ToString();
        String Common = "COMMON";
        String Position = (Session["EMP_POSITION"]).ToString();
        cmd.CommandText = "Select APP_SL_NO, APP_ATTRIBUTES,APP_MAX_MARKS, APP_CATEGORY FROM APPRAISAL_MASTER_DB"+" WHERE APP_DEPT_NAME=@Dept OR APP_DEPT_NAME=@Common";
        cmd.Parameters.Add("@Dept", SqlDbType.VarChar).Value = Dept;
        cmd.Parameters.Add("@Common", SqlDbType.VarChar).Value = Common;
        cmd.Connection = con;
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        gvData.DataSource = ds;
        gvData.DataBind();
        lblques.Text = (dt.Rows.Count.ToString());
    }
    protected void Btn_Save_Click(object sender, EventArgs e)
    {
        int i = 0;
        foreach(GridViewRow items in gvData.Rows)
        {
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "PROC_FEEDBACK_INSERT";
            cmd.Parameters.AddWithValue("@EMP_ID", Convert.ToInt32(Session["EMP_ID"].ToString()));
            cmd.Parameters.AddWithValue("@EMP_NAME",Convert.ToString(Session["EMP_NAME"].ToString()));
            cmd.Parameters.AddWithValue("@EMP_DEPT", Convert.ToString(Session["EMP_DEPT"].ToString()));
            
            cmd.Parameters.AddWithValue("@EMP_DOJ", Convert.ToDateTime(Session["EMP_DOJ"].ToString()));
            cmd.Parameters.AddWithValue("@EMP_POSITION", Convert.ToString(Session["EMP_POSITION"].ToString()));
            cmd.Parameters.AddWithValue("@APP_SL_NO",(items.FindControl("lblAppSlNo")));
            cmd.Parameters.AddWithValue("@APP_ATTRIBUTES", (items.FindControl("lblAppAttributes")));
            cmd.Parameters.AddWithValue("@APP_MAX_MARKS", (items.FindControl("lblAppMaxMarks")));
            cmd.Parameters.AddWithValue("@APP_MARKS", (items.FindControl("txtMarks")));
            cmd.Parameters.AddWithValue("@APP_EMP_REMARKS", (items.FindControl("txtScore")));
            
            cmd.Parameters.AddWithValue("@APP_OFFICE_REMARKS", "");
            cmd.Parameters.AddWithValue("@APP_YEAR", Convert.ToString(DateTime.Now.Year.ToString()));
            i++;
            cmd.ExecuteNonQuery();

            con.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "xyz",
       "alert('Thank You!! Answers Saved Succesfully');", true);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ExportGridToword();
    }
    private void ExportGridToword()
    {
        String Name = (Session["EMP_NAME"]).ToString();
        String Dept = (Session["EMP_DEPT"]).ToString();
        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = "";
        string FileName = Name +" "+ Dept + ".doc";
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/msword";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvData.GridLines = GridLines.Both;
        gvData.HeaderStyle.Font.Bold = true;
        gvData.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();

    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }
}