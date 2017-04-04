using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if ((Session["EMP_USERNAME"] == null) || (IsPostBack))
        {
            Response.Redirect("~/SignIn.aspx");
        }
        lblEmp_Name.Text = (Session["EMP_NAME"] ?? "").ToString();
        lblEmp_Position.Text = (Session["EMP_POSITION"] ?? "").ToString();
        lblEmp_Dept.Text = (Session["EMP_DEPT"] ?? "").ToString();
        lblEmp_DOJ.Text = (Session["EMP_DOJ"] ?? "").ToString();
    }
   /* protected void BtEmployeeLogout_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }*/
}