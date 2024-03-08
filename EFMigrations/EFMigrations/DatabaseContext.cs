using EFMigrations.Models;
using Microsoft.EntityFrameworkCore;

namespace EFMigrations
{
    public class DatabaseContext : DbContext
    {
        public DbSet<Product> Products { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(
                "Server=localhost,1435;Database=DatabaseSchemaMigration;User Id=sa;Password=SuperSecret7!;Trusted_Connection=False;TrustServerCertificate=True;");
        }
    }
}
