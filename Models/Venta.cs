namespace ProyectDSP.Models
{
    public class Venta
    {
        public int Id { get; set; }
        public string Cliente { get; set; } = null!;
        public int MedicamentoId { get; set; }
        public int Cantidad { get; set; }
        public decimal Total { get; set; }

    }
}
