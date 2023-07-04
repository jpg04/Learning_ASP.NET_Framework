using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearningWebForms
{
    public partial class WithMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                fname.Text = " ";
                lname.Text = " ";
                Response.Write("<script> console.log('post back event "+ ViewState["Count"]+"') </script>");
                ViewState["Count"] = (int)ViewState["Count"]+1;
            }
            else
            {
                Response.Write("<script> console.log('Page First Started') </script>");
                ViewState["Count"] = 0;
            }
        }

        protected void SubBtn_Click(object sender, EventArgs e)
        {
            Response.Write("<script> console.log('Data Submitted') </script>");
        }
    }
}