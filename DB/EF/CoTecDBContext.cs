using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace EFGetStarted
{
    public partial class CoTecDBContext : DbContext
    {
        public CoTecDBContext()
        {
        }

        public CoTecDBContext(DbContextOptions<CoTecDBContext> options)
            : base(options)
        {
        }

        public virtual DbSet<ContactedPerson> ContactedPerson { get; set; }
        public virtual DbSet<Continents> Continents { get; set; }
        public virtual DbSet<Countries> Countries { get; set; }
        public virtual DbSet<CountryLocations> CountryLocations { get; set; }
        public virtual DbSet<EnforcedMeasurements> EnforcedMeasurements { get; set; }
        public virtual DbSet<Events> Events { get; set; }
        public virtual DbSet<HospitalIcus> HospitalIcus { get; set; }
        public virtual DbSet<HospitalMedications> HospitalMedications { get; set; }
        public virtual DbSet<Hospitals> Hospitals { get; set; }
        public virtual DbSet<Medications> Medications { get; set; }
        public virtual DbSet<Pathologies> Pathologies { get; set; }
        public virtual DbSet<PatientMedications> PatientMedications { get; set; }
        public virtual DbSet<PatientPathologies> PatientPathologies { get; set; }
        public virtual DbSet<PatientStatus> PatientStatus { get; set; }
        public virtual DbSet<Patients> Patients { get; set; }
        public virtual DbSet<SanityMeasurements> SanityMeasurements { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=.;Initial Catalog=CoTecDB;User id=sa;Password=Juancho123!;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ContactedPerson>(entity =>
            {
                entity.HasKey(e => new { e.Ssn, e.PatientSsn })
                    .HasName("PK__Contacte__CCC1630D40288D78");

                entity.ToTable("Contacted_Person");

                entity.Property(e => e.Ssn)
                    .HasColumnName("SSN")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.PatientSsn)
                    .HasColumnName("Patient_SSN")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Adress)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Email)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.FirstName)
                    .HasColumnName("First_Name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.LastName)
                    .HasColumnName("Last_Name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.PatientSsnNavigation)
                    .WithMany(p => p.ContactedPerson)
                    .HasForeignKey(d => d.PatientSsn)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Contacted__Patie__4BAC3F29");
            });

            modelBuilder.Entity<Continents>(entity =>
            {
                entity.HasKey(e => e.Name)
                    .HasName("PK__Continen__737584F79D040581");

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Countries>(entity =>
            {
                entity.HasKey(e => e.Name)
                    .HasName("PK__Countrie__737584F70D0188BF");

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.ContinentName)
                    .HasColumnName("Continent_Name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.ContinentNameNavigation)
                    .WithMany(p => p.Countries)
                    .HasForeignKey(d => d.ContinentName)
                    .HasConstraintName("FK__Countries__Conti__267ABA7A");
            });

            modelBuilder.Entity<CountryLocations>(entity =>
            {
                entity.HasKey(e => new { e.Name, e.CountryName })
                    .HasName("PK__CountryL__49759B1E5A946564");

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.CountryName)
                    .HasColumnName("Country_Name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.CountryNameNavigation)
                    .WithMany(p => p.CountryLocations)
                    .HasForeignKey(d => d.CountryName)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__CountryLo__Count__29572725");
            });

            modelBuilder.Entity<EnforcedMeasurements>(entity =>
            {
                entity.HasKey(e => new { e.CountryName, e.MeasurementId })
                    .HasName("PK__Enforced__9265359B384C2A77");

                entity.Property(e => e.CountryName)
                    .HasColumnName("Country_Name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.MeasurementId).HasColumnName("Measurement_Id");

                entity.Property(e => e.EndDate)
                    .HasColumnName("End_Date")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.StartDate)
                    .HasColumnName("Start_Date")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.CountryNameNavigation)
                    .WithMany(p => p.EnforcedMeasurements)
                    .HasForeignKey(d => d.CountryName)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__EnforcedM__Count__2E1BDC42");

                entity.HasOne(d => d.Measurement)
                    .WithMany(p => p.EnforcedMeasurements)
                    .HasForeignKey(d => d.MeasurementId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__EnforcedM__Measu__2F10007B");
            });

            modelBuilder.Entity<Events>(entity =>
            {
                entity.HasKey(e => e.EventId)
                    .HasName("PK__Events__FD6BEF84984BC6FF");

                entity.Property(e => e.EventId)
                    .HasColumnName("Event_Id")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Date)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.PatientSsn)
                    .HasColumnName("Patient_SSN")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.PatientSsnNavigation)
                    .WithMany(p => p.Events)
                    .HasForeignKey(d => d.PatientSsn)
                    .HasConstraintName("FK__Events__Patient___5165187F");
            });

            modelBuilder.Entity<HospitalIcus>(entity =>
            {
                entity.HasKey(e => new { e.IcuPatient, e.HospitalId })
                    .HasName("PK__Hospital__A4E41A008581DEED");

                entity.ToTable("Hospital_ICUs");

                entity.Property(e => e.IcuPatient)
                    .HasColumnName("ICU_Patient")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.HospitalId).HasColumnName("Hospital_Id");

                entity.HasOne(d => d.Hospital)
                    .WithMany(p => p.HospitalIcus)
                    .HasForeignKey(d => d.HospitalId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Hospital___Hospi__34C8D9D1");
            });

            modelBuilder.Entity<HospitalMedications>(entity =>
            {
                entity.HasKey(e => new { e.HospitalId, e.MedicationId })
                    .HasName("PK__Hospital__810B6E7B06A887E4");

                entity.ToTable("Hospital_Medications");

                entity.Property(e => e.HospitalId).HasColumnName("Hospital_Id");

                entity.Property(e => e.MedicationId).HasColumnName("Medication_Id");

                entity.HasOne(d => d.Hospital)
                    .WithMany(p => p.HospitalMedications)
                    .HasForeignKey(d => d.HospitalId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Hospital___Hospi__398D8EEE");

                entity.HasOne(d => d.Medication)
                    .WithMany(p => p.HospitalMedications)
                    .HasForeignKey(d => d.MedicationId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Hospital___Medic__3A81B327");
            });

            modelBuilder.Entity<Hospitals>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.CountryName)
                    .HasColumnName("Country_Name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.IcuCapacity).HasColumnName("ICU_Capacity");

                entity.Property(e => e.ManagerName)
                    .HasColumnName("Manager_Name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Phone)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.CountryNameNavigation)
                    .WithMany(p => p.Hospitals)
                    .HasForeignKey(d => d.CountryName)
                    .HasConstraintName("FK__Hospitals__Count__31EC6D26");
            });

            modelBuilder.Entity<Medications>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Provider)
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Pathologies>(entity =>
            {
                entity.HasKey(e => e.Name)
                    .HasName("PK__Patholog__737584F751CEB80F");

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Description)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Symptoms)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Treatment)
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<PatientMedications>(entity =>
            {
                entity.HasKey(e => new { e.PatientSsn, e.MedicationId })
                    .HasName("PK__Patient___E53500DF3D77E11E");

                entity.ToTable("Patient_Medications");

                entity.Property(e => e.PatientSsn)
                    .HasColumnName("Patient_SSN")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.MedicationId).HasColumnName("Medication_Id");

                entity.HasOne(d => d.Medication)
                    .WithMany(p => p.PatientMedications)
                    .HasForeignKey(d => d.MedicationId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Patient_M__Medic__48CFD27E");

                entity.HasOne(d => d.PatientSsnNavigation)
                    .WithMany(p => p.PatientMedications)
                    .HasForeignKey(d => d.PatientSsn)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Patient_M__Patie__47DBAE45");
            });

            modelBuilder.Entity<PatientPathologies>(entity =>
            {
                entity.HasKey(e => new { e.PatientSsn, e.PathologyName })
                    .HasName("PK__Patient___945D63637CFFC52E");

                entity.ToTable("Patient_Pathologies");

                entity.Property(e => e.PatientSsn)
                    .HasColumnName("Patient_SSN")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.PathologyName)
                    .HasColumnName("Pathology_Name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.PathologyNameNavigation)
                    .WithMany(p => p.PatientPathologies)
                    .HasForeignKey(d => d.PathologyName)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Patient_P__Patho__44FF419A");

                entity.HasOne(d => d.PatientSsnNavigation)
                    .WithMany(p => p.PatientPathologies)
                    .HasForeignKey(d => d.PatientSsn)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Patient_P__Patie__440B1D61");
            });

            modelBuilder.Entity<PatientStatus>(entity =>
            {
                entity.HasKey(e => e.Name)
                    .HasName("PK__Patient___737584F7843E15C0");

                entity.ToTable("Patient_Status");

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.PatientSsn)
                    .HasColumnName("Patient_SSN")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.PatientSsnNavigation)
                    .WithMany(p => p.PatientStatus)
                    .HasForeignKey(d => d.PatientSsn)
                    .HasConstraintName("FK__Patient_S__Patie__4E88ABD4");
            });

            modelBuilder.Entity<Patients>(entity =>
            {
                entity.HasKey(e => e.Ssn)
                    .HasName("PK__Patients__CA1E8E3D3A47FEC2");

                entity.Property(e => e.Ssn)
                    .HasColumnName("SSN")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.CountryBirth)
                    .HasColumnName("Country_Birth")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.FirstName)
                    .HasColumnName("First_Name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.HospitalId).HasColumnName("Hospital_Id");

                entity.Property(e => e.Hospitalized)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Icu)
                    .HasColumnName("ICU")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.LastName)
                    .HasColumnName("Last_Name")
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Residence)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.CountryBirthNavigation)
                    .WithMany(p => p.PatientsCountryBirthNavigation)
                    .HasForeignKey(d => d.CountryBirth)
                    .HasConstraintName("FK__Patients__Countr__403A8C7D");

                entity.HasOne(d => d.Hospital)
                    .WithMany(p => p.Patients)
                    .HasForeignKey(d => d.HospitalId)
                    .HasConstraintName("FK__Patients__Hospit__412EB0B6");

                entity.HasOne(d => d.ResidenceNavigation)
                    .WithMany(p => p.PatientsResidenceNavigation)
                    .HasForeignKey(d => d.Residence)
                    .HasConstraintName("FK__Patients__Reside__3F466844");
            });

            modelBuilder.Entity<SanityMeasurements>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Description)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
