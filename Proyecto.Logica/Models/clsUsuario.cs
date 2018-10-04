namespace Proyecto.Logica.Models
{
    public class clsUsuario
    {
        public long loCodigo {get; set;}
        public string stCorreo {get;set;}
        public string stNombre {get; set;}
        public string stPassword {get;set;}
        public clsTipoUsuario obclsTipoUsuario {get;set;}
    }
}