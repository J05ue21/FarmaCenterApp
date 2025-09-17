using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using ProyectDSP.Models;

namespace ProyectDSP.Data
{
    public class ProyectDSPContext : DbContext
    {
        public ProyectDSPContext (DbContextOptions<ProyectDSPContext> options)
            : base(options)
        {
        }

        public DbSet<ProyectDSP.Models.Productos> Productos { get; set; } = default!;
    }
}
