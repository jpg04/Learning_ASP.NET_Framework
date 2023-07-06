using Microsoft.EntityFrameworkCore;
using MVC_CRUD.Models.DomainModel;

namespace MVC_CRUD.Data
{
    public class MVC_CRUD_DB_Context : DbContext
    {
        public MVC_CRUD_DB_Context(DbContextOptions options) : base(options)
        {

        }

        public DbSet<Employee> Employees { get; set; }
    }
}
