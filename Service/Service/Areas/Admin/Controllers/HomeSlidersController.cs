using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Service.Models;

namespace Service.Areas.Admin.Controllers
{
    public class HomeSlidersController : Controller
    {
        private finalProjectEntities db = new finalProjectEntities();

        // GET: Admin/HomeSliders
        public ActionResult Index()
        {
            return View(db.HomeSlider.ToList());
        }

        // GET: Admin/HomeSliders/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HomeSlider homeSlider = db.HomeSlider.Find(id);
            if (homeSlider == null)
            {
                return HttpNotFound();
            }
            return View(homeSlider);
        }

        // GET: Admin/HomeSliders/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/HomeSliders/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Image,Header,Context")] HomeSlider homeSlider)
        {
            if (ModelState.IsValid)
            {
                db.HomeSlider.Add(homeSlider);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(homeSlider);
        }

        // GET: Admin/HomeSliders/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HomeSlider homeSlider = db.HomeSlider.Find(id);
            if (homeSlider == null)
            {
                return HttpNotFound();
            }
            return View(homeSlider);
        }

        // POST: Admin/HomeSliders/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Image,Header,Context")] HomeSlider homeSlider)
        {
            if (ModelState.IsValid)
            {
                db.Entry(homeSlider).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(homeSlider);
        }

        // GET: Admin/HomeSliders/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HomeSlider homeSlider = db.HomeSlider.Find(id);
            if (homeSlider == null)
            {
                return HttpNotFound();
            }
            return View(homeSlider);
        }

        // POST: Admin/HomeSliders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            HomeSlider homeSlider = db.HomeSlider.Find(id);
            db.HomeSlider.Remove(homeSlider);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
