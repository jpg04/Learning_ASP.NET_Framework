using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace LearningWebForms
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("defaultRoute", "", "~/WebForms/Default.aspx");

            routes.MapPageRoute("homeRoute", "home/page", "~/WebForms/Default.aspx");
            routes.MapPageRoute("aboutRoute", "about", "~/WebForms/About.aspx");
            routes.MapPageRoute("contactRoute", "contact", "~/WebForms/Contact.aspx");
            routes.MapPageRoute("editRoute", "edit/{id}", "~/WebForms/Edit.aspx");
            routes.MapPageRoute("productsPageRoute", "products", "~/WebForms/ProductsPage.aspx");
            routes.MapPageRoute("signUpRoute", "register", "~/WebForms/SignUp.aspx");
            routes.MapPageRoute("withMasterRoute", "withMaster", "~/WebForms/WithMaster.aspx");
            routes.MapPageRoute("withOutMasterRoute", "withOutMaster", "~/WebForms/WithOutMaster.aspx");

            routes.MapPageRoute("errorRoute", "{*.a spx}", "~/WebForms/Error.aspx");
            routes.RouteExistingFiles=true;
        }
    }
}
