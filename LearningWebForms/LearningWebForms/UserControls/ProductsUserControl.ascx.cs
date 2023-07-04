using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearningWebForms.UserControls
{
    public partial class ProductsUserControl : System.Web.UI.UserControl
    {
        public string Title { get; set; }
        public string ImageLink { get; set; }
        public string Price { get; set; }
        public string Description { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}