namespace Proyecto.Logica.Models
{
    class clsPersona
    {
        public long loPersCodigo { get; set; }
        public clsUsuario obclsUsuario { get; set; }
        public clsTipoIdentificacion obclsTipoIdentificacion { get; set; }
        public int inPersIdentificacion { get; set; }
        public string stPersPrimerNombre { get; set; }
        public string stPersSegundoNombre { get; set; }
        public string stPersPrimerApellido { get; set; }
        public string stPersSegundoApellido { get; set; }
        public string stPersTelefono { get; set; }
        public clsCiudad obclsCiudad { get; set; }
    }
}
