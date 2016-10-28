using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Testing_img_Entrevista2 : System.Web.UI.Page
{
    int claveU;
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
        String clave = Request.Form.Get("claveUnica");
        if (clave != null)
        {
            claveU = int.Parse(clave);

        }
        else
        {
            claveU = -1;
            Response.Redirect("TestingAlumno.aspx");
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        OdbcConnection con = conectarBD();

        if (con != null)
        {
           



            String query = "";

            OdbcCommand cmd = new OdbcCommand(query, con);
            int res = cmd.ExecuteNonQuery();

            if (res > 0)
            {
                Response.Redirect("TestingAlumno.aspx");
            }
            else
            {
                Response.Redirect("Entrevista1.aspx");
            }
        }
    }
}