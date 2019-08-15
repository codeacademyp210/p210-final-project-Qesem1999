using Service.Models;
using Service.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Service.Controllers
{
    public class ServiceController : Controller
    {
        // GET: Serviceontroller
        public ActionResult Index(string name)
        {
            finalProjectEntities db = new finalProjectEntities();

            var model = new AloViewModel()
            {
                Accardion = db.Accardion.ToList(),

                choose = db.ChooseUs.FirstOrDefault(),
                choseeTag = db.ChooseUsTags.ToList(),
                Ustun = db.Ustun.ToList(),
                UstunContent = db.UstunContent.ToList(),
                XidmetContent = db.XidmetContent.ToList(),
                xidmet = db.Xidmetler.ToList(),
                WeOffer = db.WeOffer.ToList(),
                yaglama = db.yagalama.FirstOrDefault(),
                AksesuarQurasdirma = db.AksesuarQurasdirma.FirstOrDefault()



            };
            return View(model);
        }
    }
}