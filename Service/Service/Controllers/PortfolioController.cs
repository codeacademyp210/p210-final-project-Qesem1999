﻿using Service.Models;
using Service.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Service.Controllers
{
    public class PortfolioController : Controller
    {
        // GET: Portfolio
        public ActionResult Index()
        {
            finalProjectEntities db = new finalProjectEntities();


            var model = new AloViewModel()
                {
                    XidmetContent = db.XidmetContent.ToList(),


                    Accessories = db.Accessories.ToList(),
                    login = db.AdminUsers.ToList(),
                    AutoPlanet = db.AutoPlanet.ToList(),
                    battary = db.Battaries.ToList(),
                    AksesuarQurasdirma = db.AksesuarQurasdirma.FirstOrDefault(),

                    contact = db.Contacts.FirstOrDefault(),

                    detail = db.Details.ToList(),
                    FooterBottom = db.FooterBottom.ToList(),
                    FooterMiddle = db.FooterMiddle.ToList(),
                    FooterTop = db.FooterTop.ToList(),
                    HeaderBottom = db.HeaderBottom.ToList(),
                    HeaderMiddle = db.HeaderMiddle.ToList(),
                    HeaderTop = db.HeaderTop.ToList(),
                    HomeSlider = db.HomeSlider.ToList(),
                    HomeSliderSlick = db.HomeSliderSlick.ToList(),
                    Portfolio = db.Portfolios.ToList(),

                    Shop = db.Shop.ToList(),
                    Ustun = db.Ustun.ToList(),
                    UstunContent = db.UstunContent.ToList(),
                    WeOffer = db.WeOffer.ToList(),

                    yag = db.Yaglar.ToList()
                };
            return View(model);
        }
        
        }
    
}