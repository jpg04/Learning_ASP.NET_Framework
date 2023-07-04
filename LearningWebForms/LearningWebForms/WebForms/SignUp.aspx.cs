using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LearningWebForms.WebForms
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int result;

            if (!int.TryParse(args.Value, out result))
            {
                CustomValidator1.ErrorMessage = "Invalid Input, Not A Number!";
                args.IsValid = false;
                return;
            }

            if (int.Parse(args.Value) < 0)
            {
                CustomValidator1.ErrorMessage = "Number Cannot be less than 0";
                args.IsValid = false;
                return;
            }

            if (int.Parse(args.Value) % 2 == 1)
            {
                CustomValidator1.ErrorMessage = "Number is odd which is not acceptable";
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        
        }
    }
}