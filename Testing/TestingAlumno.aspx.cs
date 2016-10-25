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
        String con = "Driver={SQL Server Native Client 11.0};Server=CC201-22;Uid=sa;Pwd=sqladmin;Database=pruebaAlumno;";
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
            OdbcCommand cmd = new OdbcCommand("SELECT alumnos.claveU,alumnos.nombre,alumnos.apellido,alumnos.semestre,alumnos.carrera FROM alumnos ORDER BY alumnos.claveU", con);
            OdbcDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if(!dr.IsDBNull(0))
                    cards.InnerHtml = cards.InnerHtml + createCard(dr.GetInt32(0).ToString(), dr.GetString(1), dr.GetString(2), dr.GetInt32(3).ToString(), dr.GetString(4));
                 //cards.InnerHtml = cards.InnerHtml + createCard(dr.GetString(0), dr.GetString(1));
            }

            dr.Close();
        }
    }

    private String createCard(String clave,String nombre,String apellido,String semestre,String carrera)
    {
        String card ="<section class='w3-col w3-container m3 l3 w3-teal'><div class='w3-card-8 w3-dark-grey' style='width:100%'>"
          + "<div class='w3-container w3-center'><h3>" + clave + "</h3><img src='img/avatar_png.png' alt='Avatar' style='width:50%'/>"
          + "<h5 id='claveUnica' runat='server'style='max-height:50px'>" + nombre + "</h5><div class='w3-progress-container'><div id='myBar' class='w3-progressbar w3-green w3-round-xlarge' style='width:25%'>"
          + "<div class='w3-center w3-text-white'>25%</div></div></div><div class='w3-progress-container'><div id='Div1' class='w3-progressbar w3-red w3-round-xlarge' style='width:25%'>"
          + "<div class='w3-center w3-text-white'>25%</div></div></div><div class='w3-progress-container'><div id='Div2' class='w3-progressbar w3-blue w3-round-xlarge' style='width:25%'>"
          + "<div class='w3-center w3-text-white'>25%</div></div></div><div class='w3-progress-container'><div id='Div3' class='w3-progressbar w3-green w3-round-xlarge' style='width:25%'>"
          + "<div class='w3-center w3-text-white'>25%</div></div></div><div class='w3-section'><button class='w3-btn w3-green'>Accept</button>"
          + "<button class='w3-btn w3-red'>Decline</button></div></div></div></section>";




        String card2 = ""
        +"<section class='w3-col w3-container m3 l3 w3-itam'>"
        +   "<div class='w3-card-8 w3-dark-grey' style='width:100%'>"
        +       "<div class='w3-container w3-center'>"
        +           "<h3 class='w3-text-lime'>"
                        + clave 
        +           "</h3>"
        +           "<img src='img/avatar_png.png' alt='Avatar' style='width:50%'/>"
        +           "<h5 id='nombre' runat='server' class='w3-text-white'>"
                        + nombre 
        +           "</h5>"
        +           "<h5 id='apellido' runat='server' class='w3-text-white'>"
                        + apellido 
        +           "</h5>"
        +           "<div id='semestre' class='w3-text-green'>"
                        +   "Semestre :" + semestre 
        +           "</div>"
        +           "<div id='carrera' runat='server' class='w3-text-amber'>"
                        + carrera 
        +           "</div>"
        +           "<div class='w3-section' style='overflow:hidden;'>"
        +               "<button class='w3-btn-block w3-green'>Accept</button>"
        +               "<button class='w3-btn-block w3-red '>Decline</button>"
        +               "<button class='w3-btn-block w3-blue '>2° Entrevista</button>"
        +           "</div>"
        +       "</div>"
        +   "</div>"
        +"</section>";

        card.Replace('"', '$');
        card.Replace('\'', '"');
        card.Replace('$', '\'');
        return card2;
    }
}