using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class EmployeeSignIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
            {
                UserName.Text = Request.Cookies["UNAME"].Value;
                Password.Attributes["value"] = Request.Cookies["PWD"].Value;
                CheckBox1.Checked = true;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from EMPLOYEE_DB where EMP_USERNAME='" + UserName.Text + "' and EMP_PASSWORD='" + Password.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            

            if (dt.Rows.Count != 0)
            {
                String EMP_ID= (dt.Rows[0][0].ToString());
                String EMP_DEPT = (dt.Rows[0][1].ToString());
                String EMP_NAME = dt.Rows[0][2].ToString();
                String EMP_DATEOF_JOINING = (dt.Rows[0][3].ToString());
                String EMP_POSITION = (dt.Rows[0][4].ToString());
                if (CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = UserName.Text;
                    Response.Cookies["PWD"].Value = Password.Text;
                    Response.Cookies["EMP_ID"].Value = EMP_ID;
                    Response.Cookies["EMP_DEPT"].Value = EMP_DEPT;
                    Response.Cookies["EMP_NAME"].Value = EMP_NAME;
                    Response.Cookies["EMP_DOJ"].Value = EMP_DATEOF_JOINING;
                    Response.Cookies["EMP_POSITION"].Value = EMP_POSITION;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["EMP_ID"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["EMP_DEPT"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["EMP_NAME"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["EMP_DOJ"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["EMP_POSITION"].Expires = DateTime.Now.AddDays(15);
                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["EMP_ID"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["EMP_DEPT"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["EMP_NAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["EMP_DOJ"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["EMP_POSITION"].Expires = DateTime.Now.AddDays(-1);
                }

                Session["EMP_USERNAME"] = UserName.Text;
                Session["EMP_ID"] = EMP_ID;
                Session["EMP_NAME"] = EMP_NAME;
                Session["EMP_DEPT"] = EMP_DEPT;
                Session["EMP_DOJ"] = EMP_DATEOF_JOINING;
                Session["EMP_POSITION"] = EMP_POSITION;
               
                Response.Redirect("~/EmployeeHome.aspx");



            }
            else
            {
                lblError.Text = "Invalid Username or Password !";
            }
        }
    }
}
