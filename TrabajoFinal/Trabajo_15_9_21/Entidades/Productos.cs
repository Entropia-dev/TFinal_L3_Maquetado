using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    //escribo todos los campos que va a tener la entidad.
    public class Productos
    {
        string codigo_producto; //completado
        string nombre_producto; //completado
        decimal precio_producto; //complteado
        bool estado;    //completado
        string url_imagen;  //completado
        int stock; 

        public Productos()
        {

        }

        public void set_stock_producto(int stock)
        {
            this.stock = stock; 
        }
        public int get_stock_producto()
        {
            return this.stock; 
        }

        public void set_codigo_producto(string codigo_producto)
        {
            this.codigo_producto = codigo_producto;
        }

        public string get_codigo_producto()
        {
            return this.codigo_producto;
        }

        public void set_nombre_producto(string nombre_producto)
        {
            this.nombre_producto = nombre_producto;
        }

        public string get_nombre_producto()
        {
            return this.nombre_producto;
        }

        public void set_precio_producto(decimal precio)
        {
            this.precio_producto = precio;
        }

        public Decimal get_precio_producto()
        {
            return this.precio_producto;
        }

        public void set_estado(bool estado)
        {
            this.estado = estado;
        }

        public bool get_estado()
        {
            return this.estado;
        }

        public void  set_url_imagen(string url)
        {
            this.url_imagen = url;
        }

        public string get_codigo_imagen()
        {
            return this.url_imagen;
        }
    }
}
