using Blogger.Models.Domain;
using Microsoft.EntityFrameworkCore;

namespace Blogger.Data
{
    public class BloggerDbContext : DbContext
    {
        public BloggerDbContext(DbContextOptions options) : base(options)
        {
        }

        public DbSet<BlogPost> BlogPosts { get; set; }
        public DbSet<Tag> Tags { get; set; }  
    }
}
