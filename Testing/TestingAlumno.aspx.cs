using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Testing_TestingAlumno : System.Web.UI.Page
{
    protected OdbcConnection conectarBD()
    {
        String con = "Driver={SQL Server Native Client 11.0};Server=112SALAS11;Uid=sa;Pwd=sqladmin;Database=PruebaAlumno;";
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
        OdbcConnection con = conectarBD();

        if (con != null)
        {
            //OdbcCommand cmd = new OdbcCommand("SELECT alumno.claveU,alumno.nombre FROM alumno ORDER BY alumno.claveU", con);
            OdbcCommand cmd = new OdbcCommand("SELECT alumno.clave,alumno.F2 FROM alumno ORDER BY alumno.clave", con);
            OdbcDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if(!dr.IsDBNull(0))
                    cards.InnerHtml = cards.InnerHtml + createCard(dr.GetDouble(0).ToString(), dr.GetString(1));
                 //cards.InnerHtml = cards.InnerHtml + createCard(dr.GetString(0), dr.GetString(1));
            }

            dr.Close();
        }
    }

    private String createCard(String nombre,String clave)
    {
        String card ="<section class='w3-col w3-container m3 l3 w3-teal'><div class='w3-card-8 w3-dark-grey' style='width:100%'>"
          + "<div class='w3-container w3-center'><h3>" + nombre + "</h3><img src='img/avatar_png.png' alt='Avatar' style='width:50%'/>"
          + "<h5 id='claveUnica' runat='server'style='max-height:50px'>" + clave + "</h5><div class='w3-progress-container'><div id='myBar' class='w3-progressbar w3-green w3-round-xlarge' style='width:25%'>"
          + "<div class='w3-center w3-text-white'>25%</div></div></div><div class='w3-progress-container'><div id='Div1' class='w3-progressbar w3-red w3-round-xlarge' style='width:25%'>"
          + "<div class='w3-center w3-text-white'>25%</div></div></div><div class='w3-progress-container'><div id='Div2' class='w3-progressbar w3-blue w3-round-xlarge' style='width:25%'>"
          + "<div class='w3-center w3-text-white'>25%</div></div></div><div class='w3-progress-container'><div id='Div3' class='w3-progressbar w3-green w3-round-xlarge' style='width:25%'>"
          + "<div class='w3-center w3-text-white'>25%</div></div></div><div class='w3-section'><button class='w3-btn w3-green'>Accept</button>"
          + "<button class='w3-btn w3-red'>Decline</button></div></div></div></section>";

        card.Replace('"', '$');
        card.Replace('\'', '"');
        card.Replace('$', '\'');
        return card;
    }
}