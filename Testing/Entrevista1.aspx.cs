using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Testing_Entrevista1 : System.Web.UI.Page
{
    int claveU;

    protected OdbcConnection conectarBD()
    {
        String con = "Driver={SQL Server Native Client 11.0};Server=112SALAS14;Uid=sa;Pwd=sqladmin;Database=pruebaAlumno;";
        try
        {
            OdbcConnection conexion = new OdbcConnection(con);
            conexion.Open();
            return conexion;
        }
        catch (Exception e)
        {
            //Label1.Text = "(╯°□°）╯︵ ┻━┻ |||||||||||||| (╯°□°）╯︵ ┻━┻  |||||||||||||| (╯°□°）╯︵ ┻━┻ |||||||||||||| (╯°□°）╯︵ ┻━┻ |||||||||||||| (╯°□°）╯︵ ┻━┻ |||||||||||||| (╯°□°）╯︵ ┻━┻ |||||||||||||| (╯°□°）╯︵ ┻━┻ |||||||||||||| (╯°□°）╯︵ ┻━┻ |||||||||||||| (╯°□°）╯︵ ┻━┻ |||||||||||||| (╯°□°）╯︵ ┻━┻ |||||||||||||| (╯°□°）╯︵ ┻━┻ |||||||||||||| (╯°□°）╯︵ ┻━┻ |||||||||||||| (╯°□°）╯︵ ┻━┻ |||||||||||||| (╯°□°）╯︵ ┻━┻ |||||||||||||| (╯°□°）╯︵ ┻━┻";
            return null;
            //throw;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        String clave = Request.Form.Get("claveUnica");
        if (clave != null)
        {
            claveU = int.Parse(clave);
        }
        else 
        {
            claveU = -1;
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        OdbcConnection con = conectarBD();

        if (con != null)
        {
            String texto_claveUnica = plis.Value.ToString();
            ////OdbcCommand cmd = new OdbcCommand("SELECT alumno.claveU,alumno.nombre FROM alumno ORDER BY alumno.claveU", con);
            //OdbcCommand cmd = new OdbcCommand("SELECT alumnos.claveU,alumnos.nombre,alumnos.apellido,alumnos.semestre,alumnos.carrera FROM alumnos ORDER BY alumnos.claveU", con);
            //OdbcDataReader dr = cmd.ExecuteReader();
            //while (dr.Read())
            //{
            //    if (!dr.IsDBNull(0))
            //        cards.InnerHtml = cards.InnerHtml + createCard(dr.GetInt32(0).ToString(), dr.GetString(1), dr.GetString(2), dr.GetInt32(3).ToString(), dr.GetString(4));
            //    //cards.InnerHtml = cards.InnerHtml + createCard(dr.GetString(0), dr.GetString(1));
            //}

            //dr.Close();
        }
    }
}