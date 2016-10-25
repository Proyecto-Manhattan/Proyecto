using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Testing_AlumnoGrande : System.Web.UI.Page
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
                if (!dr.IsDBNull(0))
                    vista.InnerHtml = vista.InnerHtml + CreateAlumno(dr.GetString(0), 
                                                                     dr.GetString(1), 
                                                                     dr.GetString(2), 
                                                                     dr.GetString(3), 
                                                                     dr.GetString(4), 
                                                                     dr.GetString(5), 
                                                                     dr.GetString(6), 
                                                                     dr.GetString(7),
                                                                     dr.GetString(8),
                                                                     dr.GetString(9),
                                                                     dr.GetString(10),
                                                                     dr.GetString(11),
                                                                     dr.GetString(12),
                                                                     dr.GetString(13),
                                                                     dr.GetString(14),
                                                                     dr.GetString(15),
                                                                     dr.GetString(16),
                                                                     dr.GetString(17),
                                                                     dr.GetString(18),
                                                                     dr.GetString(19),
                                                                     dr.GetString(20),
                                                                     dr.GetString(21),
                                                                     dr.GetString(22),
                                                                     dr.GetString(23),
                                                                     dr.GetString(24));
                //cards.InnerHtml = cards.InnerHtml + createCard(dr.GetString(0), dr.GetString(1));
                
            }

            dr.Close();
        }
        else
        {
            vista.InnerHtml = vista.InnerHtml + CreateAlumno("","","","","", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
        }
    }

    private String CreateAlumno(String nombre,
                                String apellido,
                                String clave,
                                String Edad,
                                String programa,
                                String Estado,
                                String Pais,
                                String Email,
                                String Tel,
                                String Universidad,
                                String Preparatoria,
                                String delegacion,
                                String otraEscuela,
                                String queEstudia,
                                String dondeEstudia,
                                String Trabaja,
                                String dondeTrabaja,
                                String puesto,
                                String ayudaFinanciera,
                                String becaPorcetanje,
                                String ayudaPorcentaje,
                                String actividades,
                                String HobOactivExtra,
                                String felicidad,
                                String comentarios)
    {
        nombre = "nada";
        apellido = "nada";
        clave = "nada";
        Edad = "nada";
        programa = "nada";
        Estado = "nada";
        Pais = "nada";
        Email = "nada";
        Tel = "nada";
        Universidad = "nada";
        Preparatoria = "nada";
        delegacion = "nada";
        otraEscuela = "nada";
        queEstudia = "nada";
        dondeEstudia = "nada";
        Trabaja = "nada";
        dondeTrabaja = "nada";
        puesto = "nada";
        ayudaFinanciera = "nada";
        becaPorcetanje = "nada";
        ayudaPorcentaje = "nada";
        actividades = "nada";
        HobOactivExtra = "nada";
        felicidad = "nada";
        comentarios = "nada";

        String vista = "<!-- Page Container -->"
    + "<div class='w3-container w3-content w3-margin-top' id='contenedor'>"

        + "<!-- The Grid -->"
        + "<div class='w3-row-padding'>"

            + "<!-- Left Column -->"
            + "<div class='w3-third'>"

                + "<div class='w3-white w3-text-grey w3-card-4'>"
                    + "<div class='w3-display-container'>"
                        + "<img src='img/no-user.png' id='imagenNoUser' alt='Avatar'>"
                        + "<div class='w3-display-bottomleft w3-container w3-text-black'>"
                            + "<h3>"+nombre+ apellido+"</h3>"
                             + "<h5>"+clave+"</h5>"
                              + "<p>"+Edad+"</p>"
                           + "</div>"
                       + "</div>"
                       + "<div class='w3-container' id='contenedor2'>"
                           + "<p>" + "<i class='fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal'>" + "</i>"+programa + "</p>"
                                + "<p>" + "<i class='fa fa-home fa-fw w3-margin-right w3-large w3-text-teal'>" + "</i>"+Estado+", "+ Pais + "</p>"
                                     + "<p>" + "<i class='fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal'>" + "</i>"+Email + "</p>"
                                           + "<p>" + "<i class='fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal'>" + "</i>"+Tel + "</p>"
                                                + "<hr>"

                                                + "<p class='w3-large'>" + "<b>" + "<i class='fa fa-asterisk fa-fw w3-margin-right w3-text-teal'>" + "</i>"+"Skills" + "</b>" + "</p>"
                                                       + "<p>"+"Computación" + "</p>"
                                                        + "<div class='w3-progress-container w3-round-xlarge w3-small'>"
                                                            + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra'>"
                                                                + "<div class='w3-center w3-text-white'>"+"90 %" +"</div>"
                                                             + "</div>"
                                                         + "</div>"
                                                         + "<p>"+"Matemáticas" + "</p>"
                                                          + "<div class='w3-progress-container w3-round-xlarge w3-small'>"
                                                              + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra2'>"
                                                                  + "<div class='w3-center w3-text-white'>"+"80 %" +"</div>"
                                                               + "</div>"
                                                           + "</div>"
                                                           + "<p>"+"Estudios Generales"+"</p>"
                                                            + "<div class='w3-progress-container w3-round-xlarge w3-small'>"
                                                                + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra3'>"
                                                                    + "<div class='w3-center w3-text-white'>"+"75 %" +"</div>"
                                                                 + "</div>"
                                                             + "</div>"
                                                             + "<p>"+"Otros" + "</p>"
                                                              + "<div class='w3-progress-container w3-round-xlarge w3-small'>"
                                                                  + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra4'>"
                                                                      + "<div class='w3-center w3-text-white'>"+"50 %" +"</div>"
                                                                   + "</div>"
                                                               + "</div>"
                                                               + "<br>"

                                                               + "<p class='w3-large w3-text-theme'>" + "<b>" + "<i class='fa fa-globe fa-fw w3-margin-right w3-text-teal'>" + "</i>"+"Languages" + "</b>" + "</p>"
                                                                      + "<p>"+"Español" + "</p>"
                                                                       + "<div class='w3-progress-container w3-round-xlarge'>"
                                                                           + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra5'>" + "</div>"
                                                                       + "</div>"
                                                                       + "<p>"+"Ingles" + "</p>"
                                                                        + "<div class='w3-progress-container w3-round-xlarge'>"
                                                                            + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra6'>" + "</div>"
                                                                        + "</div>"
                                                                        + "<p>"+"Otros" + "</p>"
                                                                         + "<div class='w3-progress-container w3-round-xlarge'>"
                                                                             + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra7'>" + "</div>"
                                                                         + "</div>"
                                                                         + "<br>"
                                                                     + "</div>"
                                                                 + "</div>" + "<br>"

                                                                 + "<!-- End Left Column -->"
                                                             + "</div>"

                                                             + "<!-- Right Column -->"
                                                             + "<div class='w3-twothird'>"

                                                                 + "<div class='w3-container w3-card-2 w3-white w3-margin-bottom'>"
                                                                     + "<h2 class='w3-text-grey w3-padding-16'>" + "<i class='fa fa-inbox fa-fw w3-margin-right w3-xxlarge w3-text-teal'>" + "</i>"+"Datos Personales"+"</h2>"
                                                                          + "<div class='w3-container'>"
                                                                              + "<h5 class='w3-opacity'>" + "<b>"+"Universidad" + "</b>" + "</h5>"+
                                                                                    Universidad

                        +"<hr>"
                    + "</div>"
                    + "<div class='w3-container'>"
                        + "<h5 class='w3-opacity'>" + "<b>"+"Preparatoria" + "</b>" + "</h5>"+

                        Preparatoria

                        +"<hr>"
                    + "</div>"
                    + "<div class='w3-container'>"
                        + "<h5 class='w3-opacity'>" + "<b>"+"Delegacion donde vive actualmente"+"</b>" + "</h5>"
                           + "<h6 class='w3-text-teal'>" + "<i class='fa fa-calendar fa-fw w3-margin-right'>" + "</i>"+"Jun 2010 - Mar 2012" + "</h6>"
                                + "<p>"+delegacion+"</p>"+"<br>"
					+ "</div>"
                         + "</div>"

                         + "<div class='w3-container w3-card-2 w3-white w3-margin-bottom'>"
                             + "<h2 class='w3-text-grey w3-padding-16'>" + "<i class='fa fa-institution fa-fw w3-margin-right w3-xxlarge w3-text-teal'>" + "</i>"+"Institucion" + "</h2>"
                                  + "<div class='w3-container'>"
                                      + "<h5 class='w3-opacity'>" + "<b>"+"Estudia en otra escuela"+"</b>" + "</h5>"
                                         + "<p>"+queEstudia+"</p>"
                                         + "<p>"+dondeEstudia+"</p>"
                                         + "<hr>"
                                     + "</div>"
                                     + "<div class='w3-container'>"
                                         + "<h5 class='w3-opacity'>" + "<b>"+"Trabaja" + "</b>" + "</h5>"
                                            + "<p>"+dondeTrabaja+"</p>"
                                            + "<p>"+puesto+"</p>"
                                            + "<hr>"
                                        + "</div>"
                                        + "<div class='w3-container'>"
                                            + "<h5 class='w3-opacity'>" + "<b>"+"Ayuda financiera: "+ayudaFinanciera +"</b>" + "</h5>"
                                               + "<p>"+ayudaPorcentaje+"</p>"
                                               + "<br>"
                                           + "</div>"
                                       + "</div>"

                                       + "<div class='w3-container w3-card-2 w3-white'>"
                                           + "<h2 class='w3-text-grey w3-padding-16'>" + "<i class='fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal'>" + "</i>"+"Intereses" + "</h2>"
                                                + "<div class='w3-container'>"
                                                    + "<h5 class='w3-opacity'>" + "<b>"+"Actividad deportiva, cultural, académica que le gustaría participar"+"</b>" + "</h5>"
                                                       + "<p>"+actividades+"</p>"
                                                       + "<hr>"
                                                   + "</div>"
                                                   + "<div class='w3-container'>"
                                                       + "<h5 class='w3-opacity'>" + "<b>"+"Hobby, pasatiempo o realiza alguna actividad extracurriculaeres"+"</b>" + "</h5>"
                                                          + "<p>"+HobOactivExtra+"</p>"
                                                           + "<hr>"
                                                       + "</div>"
                                                       + "<div class='w3-container'>"
                                                           + "<h5 class='w3-opacity'>" + "<b>"+"Serías más feliz en el ITAM si: "+"</b>" + "</h5>"
                                                               + "<p>"+felicidad+"</p>"
                                                                + "<hr>"
                                                            + "</div>"
                                                            + "<div class='w3-container'>"
                                                                + "<h5 class='w3-opacity'>" + "<b>"+"Recomendaciones o comentarios en general que quisiera hacernos"+"</b>" + "</h5>"
                                                                   + "<p>"+comentarios+"</p>" + "<br>"
                                                                + "</div>"
                                                            + "</div>"

                                                            + "<!-- End Right Column -->"
                                                        + "</div>"

                                                        + "<!-- End Grid -->"
                                                    + "</div>"

                                                    + "<!-- End Page Container -->"
                                                + "</div>";
               
        vista.Replace('"', '$');
        vista.Replace('\'', '"');
        vista.Replace('$', '\'');
        return vista;
    }
}