using System.Web.Mvc;

namespace Service.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Admin";
            }
        }
        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Admin_default",
                "Admin/{controller}/{action}/{id}",
                new {controller = "HomeSliders", action = "Index", id = UrlParameter.Optional },
                new string [] { "Service.Areas.Admin.Controllers" }
            );
        }
    }
}