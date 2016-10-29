using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Testing_img_Entrevista2 : System.Web.UI.Page
{
    private int claveU;
    protected OdbcConnection conectarBD()
    {
        String con = "Driver={SQL Server Native Client 11.0};Server=112SALAS13;Uid=sa;Pwd=sqladmin;Database=pruebaAlumno;";
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
        String clave = Request.Form.Get("claveUnica2");
        if (clave != null)
        {
            claveU = int.Parse(clave);
            clavesota.Value = claveU.ToString();
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
            String claveunica = clavesota.Value.ToString();
            String texto_sentimiento = Sentimientos.Value.ToString();
            String texto_bajas = Baja.Value.ToString();
            String texto_examenes = Examenes.Value.ToString();
            String texto_actividad = Actividad.Value.ToString();
            String texto_expectativas = Expectativas.Value.ToString();
            String texto_expectativas_programa = ExpectativasPrograma.Value.ToString();
            String texto_algoritmos = AlgoritmosProgramas.Value.ToString();
            String texto_mejora = MejoraAlgoritmosProgramas.Value.ToString();
            String texto_comentarios = Comentarios.Value.ToString();

            
            String query = String.Format("INSERT INTO respSegundaEntrevista VALUES({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}')",claveunica,texto_sentimiento,texto_bajas,texto_examenes,texto_actividad,texto_expectativas,texto_expectativas_programa,texto_algoritmos,texto_mejora,texto_comentarios);
            Sentimientos.InnerHtml = query;
            OdbcCommand cmd = new OdbcCommand(query, con);
            int res = cmd.ExecuteNonQuery();

            if (res > 0)
            {
                Response.Redirect("TestingAlumno.aspx");
            }
            else
            {
                Response.Redirect("Entrevista2.aspx");
            }
        }
    }
}