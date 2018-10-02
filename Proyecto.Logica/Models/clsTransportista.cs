using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto.Logica.Models
{
    class clsTransportista
    {
        public long loTranCodigo { get; set; }
        public clsPersona obclsPersona { get; set; }
        public int inTranCantidadViajes { get; set; }
        public double doTranPuntuacion { get; set; }
    }
}
