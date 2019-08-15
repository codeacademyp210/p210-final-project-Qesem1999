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
    public class BattariesController : Controller
    {
        private finalProjectEntities db = new finalProjectEntities();

        // GET: Admin/Battaries
        public ActionResult Index()
        {
            return View(db.Battaries.ToList());
        }

        // GET: Admin/Battaries/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Battaries battaries = db.Battaries.Find(id);
            if (battaries == null)
            {
                return HttpNotFound();
            }
            return View(battaries);
        }

        // GET: Admin/Battaries/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Battaries/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Image,Text,Price")] Battaries battaries)
        {
            if (ModelState.IsValid)
            {
                db.Battaries.Add(battaries);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(battaries);
        }

        // GET: Admin/Battaries/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Battaries battaries = db.Battaries.Find(id);
            if (battaries == null)
            {
                return HttpNotFound();
            }
            return View(battaries);
        }

        // POST: Admin/Battaries/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Image,Text,Price")] Battaries battaries)
        {
            if (ModelState.IsValid)
            {
                db.Entry(battaries).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(battaries);
        }

        // GET: Admin/Battaries/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Battaries battaries = db.Battaries.Find(id);
            if (battaries == null)
            {
                return HttpNotFound();
            }
            return View(battaries);
        }

        // POST: Admin/Battaries/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Battaries battaries = db.Battaries.Find(id);
            db.Battaries.Remove(battaries);
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
