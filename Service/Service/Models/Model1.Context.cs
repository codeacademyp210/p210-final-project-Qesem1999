﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Service.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class finalProjectEntities : DbContext
    {
        public finalProjectEntities()
            : base("name=finalProjectEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Abouts> Abouts { get; set; }
        public virtual DbSet<Accardion> Accardion { get; set; }
        public virtual DbSet<Accessories> Accessories { get; set; }
        public virtual DbSet<AdminUsers> AdminUsers { get; set; }
        public virtual DbSet<AksesuarQurasdirma> AksesuarQurasdirma { get; set; }
        public virtual DbSet<AutoPlanet> AutoPlanet { get; set; }
        public virtual DbSet<Battaries> Battaries { get; set; }
        public virtual DbSet<ChooseUs> ChooseUs { get; set; }
        public virtual DbSet<ChooseUsTags> ChooseUsTags { get; set; }
        public virtual DbSet<Contacts> Contacts { get; set; }
        public virtual DbSet<Details> Details { get; set; }
        public virtual DbSet<FooterBottom> FooterBottom { get; set; }
        public virtual DbSet<FooterMiddle> FooterMiddle { get; set; }
        public virtual DbSet<FooterTop> FooterTop { get; set; }
        public virtual DbSet<HeaderBottom> HeaderBottom { get; set; }
        public virtual DbSet<HeaderMiddle> HeaderMiddle { get; set; }
        public virtual DbSet<HeaderTop> HeaderTop { get; set; }
        public virtual DbSet<HomeSlider> HomeSlider { get; set; }
        public virtual DbSet<HomeSliderSlick> HomeSliderSlick { get; set; }
        public virtual DbSet<Portfolios> Portfolios { get; set; }
        public virtual DbSet<Shop> Shop { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Ustun> Ustun { get; set; }
        public virtual DbSet<UstunContent> UstunContent { get; set; }
        public virtual DbSet<WeOffer> WeOffer { get; set; }
        public virtual DbSet<XidmetContent> XidmetContent { get; set; }
        public virtual DbSet<Xidmetler> Xidmetler { get; set; }
        public virtual DbSet<yagalama> yagalama { get; set; }
        public virtual DbSet<Yaglar> Yaglar { get; set; }
    }
}
