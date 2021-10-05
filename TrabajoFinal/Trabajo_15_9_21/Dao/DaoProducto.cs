﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;


namespace Dao
{
    public class DaoProducto
    {
        AccesoDatos ds = new AccesoDatos();
        public Productos getProducto(Productos pro)
        {
            DataTable tabla = ds.ObtenerTabla("Producto", "Select * from producto where IdProducto=" + pro.get_codigo_producto());
            //pro.set_codigo_producto(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            pro.set_codigo_producto(tabla.Rows[0][1].ToString());
            pro.set_nombre_producto(tabla.Rows[0][2].ToString());
            return pro;
        }

        public Boolean existeProducto(Productos pro)
        {
            String consulta = "Select * from producto where NombreProducto='" + pro.get_codigo_producto() + "'";
            return ds.existe(consulta);
        }

        public DataTable getTablaCategorias()
        {
            // List<Producto> lista = new List<Producto>();
            DataTable tabla = ds.ObtenerTabla("Producto", "Select * from producto");
            return tabla;
        }

        public int eliminarProducto(Productos pro)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosProductoEliminar(ref comando, pro);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarProducto");
        }


        /*public int agregarProducto(Productos pro)
        {

            //pro.set_codigo_producto(ds.ObtenerMaximo("SELECT max(idProducto) FROM Producto") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosProductoAgregar(ref comando, pro);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarProducto");
        }
        */
        private void ArmarParametrosProductoEliminar(ref SqlCommand Comando, Productos pro)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDPRODUCTO", SqlDbType.Int);
            SqlParametros.Value = pro.get_codigo_producto();
        }

        private void ArmarParametrosProductoAgregar(ref SqlCommand Comando, Productos pro)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDPRODUCTO", SqlDbType.Int);
            SqlParametros.Value = pro.get_codigo_producto();
            SqlParametros = Comando.Parameters.Add("@NOMBREPRO", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_nombre_producto();
        }

        //me va a permitir actualizar los parametros de los productos
        private void ArmarParametrosProductos(ref SqlCommand Comando , Productos prod)
        {
            SqlParameter SqlParametrosProducto = new SqlParameter();
           
            //actualiza el codigo de prodcuto

            SqlParametrosProducto = Comando.Parameters.Add("@Cod_Art_Pro", SqlDbType.Char, 8);
            SqlParametrosProducto.Value = prod.get_codigo_producto();
            
            //actualiza el precio de producto

            SqlParametrosProducto = Comando.Parameters.Add("@PU_Pro", SqlDbType.Decimal, 8);
            SqlParametrosProducto.Value = prod.get_precio_producto();

            //actualiza el stock
            SqlParametrosProducto = Comando.Parameters.Add("@Stock", SqlDbType.Int);
            SqlParametrosProducto.Value = prod.get_stock();

            //actualiza la categoria

            SqlParametrosProducto = Comando.Parameters.Add("@Categoria", SqlDbType.Char, 8);
            SqlParametrosProducto.Value = prod.get_categoria();

            //actualiza la descripcion

            SqlParametrosProducto = Comando.Parameters.Add("@Descripcion",SqlDbType.NVarChar, 30);
            SqlParametrosProducto.Value = prod.get_descripcion();

            //actualiza la url
            SqlParametrosProducto = Comando.Parameters.Add("@Url", SqlDbType.NVarChar, 50);
            SqlParametrosProducto.Value = prod.get_url_imagen();

        }
        
    }
}
