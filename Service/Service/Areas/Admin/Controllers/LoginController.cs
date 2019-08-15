using Service.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace Service.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        private readonly finalProjectEntities db;
        public LoginController()
        {
            db = new finalProjectEntities();
        }    
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(AdminUsers Log)
        {
            bool isMatch = false;
            if (string.IsNullOrEmpty(Log.Username) || string.IsNullOrEmpty(Log.Pasword))
            {
                Session["loginError"] = "Email or Password is wrong!";
                return RedirectToAction("Index", "Login");
            }
                AdminUsers log = db.AdminUsers.FirstOrDefault(l=>l.Username == Log.Username);
                if (log != null)
                {
                    isMatch = Crypto.VerifyHashedPassword(log.Pasword, Log.Pasword);
                    if (isMatch == true)
                    {
                        Session["isLogin"] = true;
                        return RedirectToAction("Index", "Home", new { area ="Admin"});
                    }
                }
                Session["loginError"] = "Email or Password is wrong!";
                return RedirectToAction("Index", "Login");
        }
        public ActionResult Logout()
        {
            Session["isLogin"] = null;
            return RedirectToAction("Index", "Login");
        }
        public ActionResult HashPass()
        {
            string p = "Admin1234";
            string hashedPass = Crypto.HashPassword(p);
            return Content(hashedPass);
        }
    }
}