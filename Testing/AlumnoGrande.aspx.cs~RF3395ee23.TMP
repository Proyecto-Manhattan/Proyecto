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
                {
                    columnaIzq.InnerHtml = columnaIzq.InnerHtml + CreateAlumno(
                                                                     dr.GetString(0),
                                                                     dr.GetString(1),
                                                                     dr.GetString(2),
                                                                     dr.GetString(3),
                                                                     dr.GetString(4),
                                                                     dr.GetString(5),
                                                                     dr.GetString(6),
                                                                     dr.GetString(7),
                                                                     dr.GetString(8));
                    columnaDer.InnerHtml = columnaDer.InnerHtml + CreateAlumno2(
                                                                      dr.GetString(0),
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
                                                                      dr.GetString(15));
                                                                     
                    //cards.InnerHtml = cards.InnerHtml + createCard(dr.GetString(0), dr.GetString(1));
                }                
            }
            dr.Close();
        }
        else
        {
            columnaIzq.InnerHtml = columnaIzq.InnerHtml + CreateAlumno("","","","","", "", "", "", "");
            columnaDer.InnerHtml = columnaDer.InnerHtml + CreateAlumno2("", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "");
        }
    }

    private String CreateAlumno(
        String nombre,
        String apellido,
        String clave,
        String Edad,
        String programa,
        String Estado,
        String Pais,
        String Email,
        String Tel
        )
    {
        nombre = "nombre";
        apellido = "apellido";
        clave = "clave";
        Edad = "Edad";
        programa = "programa";
        Estado = "Estado";
        Pais = "Pais";
        Email = "Email";
        Tel = "Tel";

        String columnaIzq =
             "< !--Left Column-- > "
           + "<div class='w3-third'>"                                            //1
             + "<div class='w3-white w3-text-grey w3-card-4'>"                   //2

                 + "<div class='w3-display-container'>"                          //3
                     + "<img src='img/no-user.png' id='imagenNoUser' alt='Avatar'>"
                     + "<div class='w3-display-bottomleft w3-container w3-text-black'>"  //4
                         + "<h3>" + nombre + "<br>" + apellido + "</h3>"
                         + "<h5>" + clave + "</h5>"
                         + "<p>" + Edad + "</p>"
                     + "</div>"                                                          //-4
                 + "</div>"                                                      //-3

                 + "<div class='w3-container' id='contenedor2'>"                 //5
                     + "<p>" + "<i class='fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal'>" + "</i>" + programa + "</p>"
                     + "<p>" + "<i class='fa fa-home fa-fw w3-margin-right w3-large w3-text-teal'>" + "</i>" + Estado + ", " + Pais + "</p>"
                     + "<p>" + "<i class='fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal'>" + "</i>" + Email + "</p>"
                     + "<p>" + "<i class='fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal'>" + "</i>" + Tel + "</p>"
                     + "<hr>"
                     + "<p class='w3-large'>" + "<b>" + "<i class='fa fa-asterisk fa-fw w3-margin-right w3-text-teal'>" + "</i>" + "Skills" + "</b>" + "</p>"

                     + "<p>" + "Computación" + "</p>"
                     + "<div class='w3-progress-container w3-round-xlarge w3-small'>"    //6
                         + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra'>" //7
                             + "<div class='w3-center w3-text-white'>" + "90 %" + "</div>"          //8 -8
                         + "</div>"                                                          //-7
                     + "</div>"                                                          //-6

                     + "<p>" + "Matemáticas" + "</p>"
                     + "<div class='w3-progress-container w3-round-xlarge w3-small'>"    //9
                         + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra2'>"    //10
                             + "<div class='w3-center w3-text-white'>" + "80 %" + "</div>"                  //11 -11
                         + "</div>"                                                              //-10
                     + "</div>"                                                          //-9

                     + "<p>" + "Estudios Generales" + "</p>"
                     + "<div class='w3-progress-container w3-round-xlarge w3-small'>"    //12
                         + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra3'>"    //13
                             + "<div class='w3-center w3-text-white'>" + "75 %" + "</div>"                  //14 -14
                         + "</div>"                                                              //-13
                     + "</div>"                                                          //-12

                     + "<p>" + "Otros" + "</p>"
                     + "<div class='w3-progress-container w3-round-xlarge w3-small'>"    //15
                         + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra4'>"    //16
                             + "<div class='w3-center w3-text-white'>" + "50 %" + "</div>"                  //17 -17
                         + "</div>"                                                              //-16
                     + "</div>"                                                          //-15
                     + "<br>"

                     + "<p class='w3-large w3-text-theme'>" + "<b>" + "<i class='fa fa-globe fa-fw w3-margin-right w3-text-teal'>" + "</i>" + "Languages" + "</b>" + "</p>"

                     + "<p>" + "Español" + "</p>"
                     + "<div class='w3-progress-container w3-round-xlarge'>"             //18
                         + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra5'>" + "</div>" //19 -19
                     + "</div>"                                                          //-19

                     + "<p>" + "Ingles" + "</p>"
                    + "<div class='w3-progress-container w3-round-xlarge'>"              //20
                         + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra6'>" + "</div>" //21 -21
                     + "</div>"                                                          //-20

                     + "<p>" + "Otros" + "</p>"
                     + "<div class='w3-progress-container w3-round-xlarge'>"             //22
                         + "<div class='w3-progressbar w3-round-xlarge w3-teal' id='barra7'>" + "</div>"     //23 -23
                     + "</div>"                                                          //-22
                     + "<br>"
                  + "</div>"         //-5
               + "</div>" + "<br>"   //-2
               + "<!-- End Left Column -->"
             + "</div>";              //-1"

        columnaIzq.Replace('"', '$');
        columnaIzq.Replace('\'', '"');
        columnaIzq.Replace('$', '\'');
        return columnaIzq;
    }
        private String CreateAlumno2(            
        String Universidad,
        String Preparatoria,
        String delegacion,
        String otraEscuela, //se tiene que eliminar
        String queEstudia, //Carrera
        String dondeEstudia, //se tiene que elminar se sobre entiende con la universidad
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
        Universidad = "Universidad";
        Preparatoria = "Preparatoria";
        delegacion = "delegacion";
        otraEscuela = "otraEscuela";
        queEstudia = "queEstudia";
        dondeEstudia = "dondeEstudia";
        Trabaja = "Trabaja";
        dondeTrabaja = "dondeTrabaja";
        puesto = "puesto";
        ayudaFinanciera = "ayudaFinanciera";
        becaPorcetanje = "becaPorcetanje";
        ayudaPorcentaje = "ayudaPorcentaje";
        actividades = "actividades";
        HobOactivExtra = "HobOactivExtra";
        felicidad = "felicidad";
        comentarios = "comentarios";

        String columnaDer =
              "<!-- Right Column -->"
            + "<div class='w3-twothird'>"   //1
                + "<div class='w3-container w3-card-2 w3-white w3-margin-bottom'>" //2
                    + "<h2 class='w3-text-grey w3-padding-16'>" + "<i class='fa fa-inbox fa-fw w3-margin-right w3-xxlarge w3-text-teal'>" + "</i>" + "Datos Personales" + "</h2>"
                    + "<div class='w3-container'>"  //3
                        + "<h5 class='w3-opacity'>" + "<b>" + "Universidad" + "</b>" + "</h5>" +
                        Universidad
                        + "<hr>"
                    + "</div>"                      //-3

                    + "<div class='w3-container'>"  //4
                        + "<h5 class='w3-opacity'>" + "<b>" + "Preparatoria" + "</b>" + "</h5>" +
                        Preparatoria
                        + "<hr>"
                    + "</div>"                      //-4

                    + "<div class='w3-container'>"  //5
                        + "<h5 class='w3-opacity'>" + "<b>" + "Delegacion donde vive actualmente" + "</b>" + "</h5>"
                        + "<h6 class='w3-text-teal'>" + "<i class='fa fa-calendar fa-fw w3-margin-right'>" + "</i>" + "Jun 2010 - Mar 2012" + "</h6>"
                        + "<p>" + delegacion + "</p>" + "<br>"
                    + "</div>"                      //-5
                + "</div>"                                                          //-2

                + "<div class='w3-container w3-card-2 w3-white w3-margin-bottom'>"  //2
                    + "<h2 class='w3-text-grey w3-padding-16'>" + "<i class='fa fa-institution fa-fw w3-margin-right w3-xxlarge w3-text-teal'>" + "</i>" + "Institucion" + "</h2>"
                    + "<div class='w3-container'>"          //3
                        + "<h5 class='w3-opacity'>" + "<b>" + "Estudia en otra escuela" + "</b>" + "</h5>"
                        + "<p>" + queEstudia + "</p>"
                        + "<p>" + dondeEstudia + "</p>"
                        + "<hr>"
                    + "</div>"                              //-3
                    + "<div class='w3-container'>"          //4
                      + "<h5 class='w3-opacity'>" + "<b>" + "Trabaja" + "</b>" + "</h5>"
                      + "<p>" + dondeTrabaja + "</p>"
                      + "<p>" + puesto + "</p>"
                      + "<hr>"
                    + "</div>"                              //-4
                    + "<div class='w3-container'>"          //-5
                        + "<h5 class='w3-opacity'>" + "<b>" + "Ayuda financiera: " + ayudaFinanciera + "</b>" + "</h5>"
                        + "<p>" + ayudaPorcentaje + "</p>"
                        + "<br>"
                    + "</div>"                              //-5
                + "</div>"                                                      //-2

                + "<div class='w3-container w3-card-2 w3-white'>"               //2
                    + "<h2 class='w3-text-grey w3-padding-16'>" + "<i class='fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal'>" + "</i>" + "Intereses" + "</h2>"
                    + "<div class='w3-container'>"              //3
                        + "<h5 class='w3-opacity'>" + "<b>" + "Actividad deportiva, cultural, académica que le gustaría participar" + "</b>" + "</h5>"
                        + "<p>" + actividades + "</p>"
                        + "<hr>"
                    + "</div>"                                  //-3
                    + "<div class='w3-container'>"              //4
                        + "<h5 class='w3-opacity'>" + "<b>" + "Hobby, pasatiempo o realiza alguna actividad extracurricular" + "</b>" + "</h5>"
                        + "<p>" + HobOactivExtra + "</p>"
                        + "<hr>"
                    + "</div>"                                  //-4
                    + "<div class='w3-container'>"              //5
                        + "<h5 class='w3-opacity'>" + "<b>" + "Serías más feliz en el ITAM si: " + "</b>" + "</h5>"
                        + "<p>" + felicidad + "</p>"
                        + "<hr>"
                    + "</div>"                                  //-5
                    + "<div class='w3-container'>"              //6
                        + "<h5 class='w3-opacity'>" + "<b>" + "Recomendaciones o comentarios en general que quisiera hacernos" + "</b>" + "</h5>"
                        + "<p>" + comentarios + "</p>" + "<br>"
                    + "</div>"                                  //-6
                  + "</div>"                                                    //-2
            + "<!-- End Right Column -->"
            + "</div>";      //-1      

        columnaDer.Replace('"', '$');
        columnaDer.Replace('\'', '"');
        columnaDer.Replace('$', '\'');
        return columnaDer;
    }
}