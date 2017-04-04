using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeLogout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Session["USERNAME"] = null;
        Session["EMP_ID"] = null;
        Session["EMP_NAME"] = null;
        Session["EMP_DEPT"] = null;
        Session["EMP_DOJ"] = null;
        Session["EMP_POSITION"] = null;
        Response.Redirect("~/Default.aspx");
    }
}