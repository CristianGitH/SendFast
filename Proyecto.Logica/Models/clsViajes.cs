using System;

namespace Proyecto.Logica.Models
{
    class clsViajes
    {
        public long loViajCodigo { get; set; }
        public string stViajNombre { get; set; }
        public DateTime dtViajFecha { get; set; }
        public double doViajPuntuacion { get; set; }
        public clsObjeto obclsObjeto { get; set; }
        public clsTransportista obclsTransportista { get; set; }
        public clsCliente obclsCliente { get; set; }
        public clsOrigen obclsOrigen { get; set; }
        public clsDestino obclsDestino { get; set; }
    }
}
