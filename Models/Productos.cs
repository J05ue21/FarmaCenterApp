using System.ComponentModel.DataAnnotations;

namespace ProyectDSP.Models
{
    public class Productos
    {
        
        public int Id { get; set; }

        [Required]
        [Display(Name = "Nombre del Producto")]
        public string Nombre { get; set; }

        [Required]
        [Range(0.01, 10000)]
        public decimal Precio { get; set; }

        [Display(Name = "Descripción")]
        public string Descripcion { get; set; }

        [Required]
        [Range(0, 1000)]
        public int Stock { get; set; }

       

        
    }
}

