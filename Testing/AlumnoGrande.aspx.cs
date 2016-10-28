using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Testing_AlumnoGrande : System.Web.UI.Page
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
        OdbcConnection con = conectarBD();

        if (con != null)
        {
            //OdbcCommand cmd = new OdbcCommand("SELECT alumno.claveU,alumno.nombre FROM alumno ORDER BY alumno.claveU", con);
            OdbcCommand cmd = new OdbcCommand("SELECT * FROM alumnos WHERE alumnos.claveU ='"+claveU+"';", con);
            OdbcDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (!dr.IsDBNull(0))
                {
                    columnaIzq.InnerHtml = columnaIzq.InnerHtml + CreateAlumno(
                                                                     dr.GetString(1),
                                                                     dr.GetString(2),
                                                                     dr.GetInt32(0).ToString(),
                                                                     dr.GetInt32(3).ToString(),
                                                                     dr.GetString(7),
                                                                     dr.GetString(8),
                                                                     dr.GetString(9),
                                                                     dr.GetString(4),
                                                                     dr.GetInt64(5).ToString());
                    
                    //tarjetaDos.InnerHtml = tarjetaDos.InnerHtml + Tarjeta2(
                    //                                                  dr.GetString(0),
                    //                                                  dr.GetString(1),
                    //                                                  dr.GetString(2),
                    //                                                  dr.GetString(3),
                    //                                                  dr.GetString(4),
                    //                                                  dr.GetString(5),
                    //                                                  dr.GetString(6),
                    //                                                  dr.GetString(7),
                    //                                                  dr.GetString(8));
                    //tarjetaTres.InnerHtml = tarjetaTres.InnerHtml + Tarjeta3(
                    //                                                  dr.GetString(0),
                    //                                                  dr.GetString(1),
                    //                                                  dr.GetString(2),
                    //                                                  dr.GetString(3));
                    //tarjetaCuatro.InnerHtml = tarjetaCuatro.InnerHtml + Tarjeta4(
                    //                                                 dr.GetString(0),
                    //                                                 dr.GetString(1),
                    //                                                 dr.GetString(2),
                    //                                                 dr.GetString(3),
                    //                                                 dr.GetString(4),
                    //                                                 dr.GetString(5),
                    //                                                 dr.GetString(6),
                    //                                                 dr.GetString(7),
                    //                                                 dr.GetString(8),
                    //                                                 dr.GetString(9));

                    //cards.InnerHtml = cards.InnerHtml + createCard(dr.GetString(0), dr.GetString(1));
                }                
            }
            dr.Close();
        }
        else
        {
            columnaIzq.InnerHtml = columnaIzq.InnerHtml + CreateAlumno("","","","","", "", "", "", "");
            tarjetaDos.InnerHtml = tarjetaDos.InnerHtml + Tarjeta2("", "", "", "", "", "", "", "", "");
            tarjetaTres.InnerHtml = tarjetaTres.InnerHtml + Tarjeta3("", "", "", "");
            tarjetaTresCinco.InnerHtml = tarjetaTresCinco.InnerHtml + Tarjeta35("", "", "", "", "", "", "", "", "");
            tarjetaCuatro.InnerHtml = tarjetaCuatro.InnerHtml + Tarjeta4("", "", "", "", "", "", "", "", "", "");
        }
        if (con != null)
        {
            OdbcCommand cmd = new OdbcCommand("SELECT * FROM alumnos_datos WHERE alumnos_datos.claveU ='" + claveU + "';", con);
            OdbcDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (!dr.IsDBNull(0))
                {

                    tarjetaUno.InnerHtml = tarjetaUno.InnerHtml + Tarjeta1(
                                                                      dr.GetString(1),
                                                                      dr.GetString(2),
                                                                      dr.GetString(3));
                    //tarjetaDos.InnerHtml = tarjetaDos.InnerHtml + Tarjeta2(
                    //                                                  dr.GetString(0),
                    //                                                  dr.GetString(1),
                    //                                                  dr.GetString(2),
                    //                                                  dr.GetString(3),
                    //                                                  dr.GetString(4),
                    //                                                  dr.GetString(5),
                    //                                                  dr.GetString(6),
                    //                                                  dr.GetString(7),
                    //                                                  dr.GetString(8));
                    //tarjetaTres.InnerHtml = tarjetaTres.InnerHtml + Tarjeta3(
                    //                                                  dr.GetString(0),
                    //                                                  dr.GetString(1),
                    //                                                  dr.GetString(2),
                    //                                                  dr.GetString(3));
                    //tarjetaCuatro.InnerHtml = tarjetaCuatro.InnerHtml + Tarjeta4(
                    //                                                 dr.GetString(0),
                    //                                                 dr.GetString(1),
                    //                                                 dr.GetString(2),
                    //                                                 dr.GetString(3),
                    //                                                 dr.GetString(4),
                    //                                                 dr.GetString(5),
                    //                                                 dr.GetString(6),
                    //                                                 dr.GetString(7),
                    //                                                 dr.GetString(8),
                    //                                                 dr.GetString(9));

                    //cards.InnerHtml = cards.InnerHtml + createCard(dr.GetString(0), dr.GetString(1));
                }
            }
            dr.Close();
        }
        else
        {
            columnaIzq.InnerHtml = columnaIzq.InnerHtml + CreateAlumno("", "", "", "", "", "", "", "", "");
            tarjetaUno.InnerHtml = tarjetaUno.InnerHtml + Tarjeta1("", "", "");
            tarjetaDos.InnerHtml = tarjetaDos.InnerHtml + Tarjeta2("", "", "", "", "", "", "", "", "");
            tarjetaTres.InnerHtml = tarjetaTres.InnerHtml + Tarjeta3("", "", "", "");
            tarjetaTresCinco.InnerHtml = tarjetaTresCinco.InnerHtml + Tarjeta35("", "", "", "", "", "", "", "", "");
            tarjetaCuatro.InnerHtml = tarjetaCuatro.InnerHtml + Tarjeta4("", "", "", "", "", "", "", "", "", "");
        }
        if (con != null)
        {
            OdbcCommand cmd = new OdbcCommand("SELECT * FROM alumnos_institucion WHERE alumnos_institucion.claveU ='" + claveU + "';", con);
            OdbcDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (!dr.IsDBNull(0))
                {
                    tarjetaDos.InnerHtml = tarjetaDos.InnerHtml + Tarjeta2(
                                                                      dr.GetString(1),
                                                                      dr.GetString(2),
                                                                      dr.GetString(3),
                                                                      dr.GetString(4),
                                                                      dr.GetString(5),
                                                                      dr.GetString(6),
                                                                      dr.GetString(7),
                                                                      dr.GetString(9),
                                                                      dr.GetString(8));
                    //tarjetaTres.InnerHtml = tarjetaTres.InnerHtml + Tarjeta3(
                    //                                                  dr.GetString(0),
                    //                                                  dr.GetString(1),
                    //                                                  dr.GetString(2),
                    //                                                  dr.GetString(3));
                    //tarjetaCuatro.InnerHtml = tarjetaCuatro.InnerHtml + Tarjeta4(
                    //                                                 dr.GetString(0),
                    //                                                 dr.GetString(1),
                    //                                                 dr.GetString(2),
                    //                                                 dr.GetString(3),
                    //                                                 dr.GetString(4),
                    //                                                 dr.GetString(5),
                    //                                                 dr.GetString(6),
                    //                                                 dr.GetString(7),
                    //                                                 dr.GetString(8),
                    //                                                 dr.GetString(9));

                    //cards.InnerHtml = cards.InnerHtml + createCard(dr.GetString(0), dr.GetString(1));
                }
            }
            dr.Close();
        }
        else
        {
            columnaIzq.InnerHtml = columnaIzq.InnerHtml + CreateAlumno("", "", "", "", "", "", "", "", "");
            tarjetaUno.InnerHtml = tarjetaUno.InnerHtml + Tarjeta1("", "", "");
            tarjetaDos.InnerHtml = tarjetaDos.InnerHtml + Tarjeta2("", "", "", "", "", "", "", "", "");
            tarjetaTres.InnerHtml = tarjetaTres.InnerHtml + Tarjeta3("", "", "", "");
            tarjetaTresCinco.InnerHtml = tarjetaTresCinco.InnerHtml + Tarjeta35("", "", "", "", "", "", "", "", "");
            tarjetaCuatro.InnerHtml = tarjetaCuatro.InnerHtml + Tarjeta4("", "", "", "", "", "", "", "", "", "");
        }
        if (con != null)
        {
            OdbcCommand cmd = new OdbcCommand("SELECT * FROM alumno_preguntas WHERE alumno_preguntas.claveU ='" + claveU + "';", con);
            OdbcDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (!dr.IsDBNull(0))
                {

                    tarjetaTres.InnerHtml = tarjetaTres.InnerHtml + Tarjeta3(
                                                                      dr.GetString(1),
                                                                      dr.GetString(2),
                                                                      dr.GetString(3),
                                                                      dr.GetString(4));
                    //tarjetaCuatro.InnerHtml = tarjetaCuatro.InnerHtml + Tarjeta4(
                    //                                                 dr.GetString(0),
                    //                                                 dr.GetString(1),
                    //                                                 dr.GetString(2),
                    //                                                 dr.GetString(3),
                    //                                                 dr.GetString(4),
                    //                                                 dr.GetString(5),
                    //                                                 dr.GetString(6),
                    //                                                 dr.GetString(7),
                    //                                                 dr.GetString(8),
                    //                                                 dr.GetString(9));

                    //cards.InnerHtml = cards.InnerHtml + createCard(dr.GetString(0), dr.GetString(1));
                }
            }
            dr.Close();
        }
        else
        {
            columnaIzq.InnerHtml = columnaIzq.InnerHtml + CreateAlumno("", "", "", "", "", "", "", "", "");
            tarjetaUno.InnerHtml = tarjetaUno.InnerHtml + Tarjeta1("", "", "");
            tarjetaDos.InnerHtml = tarjetaDos.InnerHtml + Tarjeta2("", "", "", "", "", "", "", "", "");
            tarjetaTres.InnerHtml = tarjetaTres.InnerHtml + Tarjeta3("", "", "", "");
            tarjetaTresCinco.InnerHtml = tarjetaTresCinco.InnerHtml + Tarjeta35("", "", "", "", "", "", "", "", "");
            tarjetaCuatro.InnerHtml = tarjetaCuatro.InnerHtml + Tarjeta4("", "", "", "", "", "", "", "", "", "");
        }
        if (con != null)
        {
            String query = "SELECT alumno_dec_itam.prioridad1,alumno_dec_itam.prioridad2,alumno_dec_itam.prioridad3,alumno_dec_programa.prioridad1,alumno_dec_programa.prioridad2,alumno_dec_programa.prioridad3,alumno_dec_habilidades.prioridad1,alumno_dec_habilidades.prioridad2,alumno_dec_habilidades.prioridad3 FROM alumno_dec_itam INNER JOIN alumno_dec_programa ON alumno_dec_programa.claveU = alumno_dec_itam.claveU INNER JOIN alumno_dec_habilidades ON alumno_dec_programa.claveU = alumno_dec_habilidades.claveU   WHERE alumno_dec_itam.claveU =" + claveU + ";";
            OdbcCommand cmd = new OdbcCommand(query, con);
            OdbcDataReader dr = cmd.ExecuteReader();
            
            while (dr.Read())
            {
                if (!dr.IsDBNull(0))
                {

                    tarjetaTresCinco.InnerHtml = tarjetaTresCinco.InnerHtml + Tarjeta35(
                                                                                 dr.GetString(0),
                                                                                 dr.GetString(1),
                                                                                 dr.GetString(2),
                                                                                 dr.GetString(3),
                                                                                 dr.GetString(4),
                                                                                 dr.GetString(5),
                                                                                 dr.GetString(6),
                                                                                 dr.GetString(7),
                                                                                 dr.GetString(8));


                }
                else
                {
                    tarjetaTresCinco.InnerHtml = tarjetaTresCinco.InnerHtml + Tarjeta35("", "", "", "", "", "", "", "", "");
                }
            }
            dr.Close();
        }
        else
        {
            tarjetaCuatro.InnerHtml = tarjetaCuatro.InnerHtml + Tarjeta4("", "", "", "", "", "", "", "", "", "");
        }
        if (con != null)
        {
            OdbcCommand cmd = new OdbcCommand("SELECT * FROM alumno_preguntas WHERE alumno_preguntas.claveU ='" + claveU + "';", con);
            OdbcDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (dr.IsDBNull(0))
                {

                    tarjetaCuatro.InnerHtml = tarjetaCuatro.InnerHtml + Tarjeta4(
                                                                     dr.GetString(0),
                                                                     dr.GetString(1),
                                                                     dr.GetString(2),
                                                                     dr.GetString(3),
                                                                     dr.GetString(4),
                                                                     dr.GetString(5),
                                                                     dr.GetString(6),
                                                                     dr.GetString(7),
                                                                     dr.GetString(8),
                                                                     dr.GetString(9));


                }
                else 
                {
                    tarjetaCuatro.InnerHtml = tarjetaCuatro.InnerHtml + Tarjeta4("", " ", "", "", "", "", "", "", "", "");
                }
            }
            dr.Close();
        }
        else
        {
            //tarjetaCuatro.InnerHtml = tarjetaCuatro.InnerHtml + Tarjeta4("", "", "", "", "", "", "", "", "", "");
        }
    }

    private String CreateAlumno( String nombre, String apellido, String clave, String Edad, String programa, String Estado, String Pais, String Email,String Tel)
    {
        //nombre = "nombre";
        //apellido = "apellido";
        //clave = "clave";
        //Edad = "Edad";
        //programa = "programa";
        //Estado = "Estado";
        //Pais = "Pais";
        //Email = "Email";
        //Tel = "Tel";

        String columnaIzq =
             "<!--Left Column--> "
           + "<div class='w3-third'>"                                            //1
             + "<div class='w3-white w3-text-grey w3-card-4'>"                   //2

                 + "<div class='w3-display-container'>"                          //3
                     + "<img src='img/avatar_png.png' class='w3-opacity' id='imagenNoUser' alt='Avatar'>"
                     + "<div class='w3-display-bottomleft w3-container w3-text-black'>"  //4
                         + "<h3>" + nombre + "<br>" + apellido + "</h3>"
                         + "<h5> CU: " + clave + "</h5>"
                         + "<p> Edad: " + Edad + "</p>"
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
        private String Tarjeta1(String Universidad, String Preparatoria, String delegacion)
    { 
        //Universidad = "Universidad";
        //Preparatoria = "Preparatoria";
        //delegacion = "delegacion";     

        String tarjetaUno =              
                "<div class='w3-container w3-card-2 w3-white w3-margin-bottom'>" //2
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
                + "</div>";      //-1      

        tarjetaUno.Replace('"', '$');
        tarjetaUno.Replace('\'', '"');
        tarjetaUno.Replace('$', '\'');
        return tarjetaUno;
    }
        private String Tarjeta2(String otraEscuela, String queEstudia, String dondeEstudia,
                            String Trabaja, String dondeTrabaja, String puesto, String ayudaFinanciera, String becaPorcetanje, String ayudaPorcentaje)
    {
        //Trabaja = "Trabaja";
        //dondeTrabaja = "dondeTrabaja";
        //puesto = "puesto";

        //otraEscuela = "otraEscuela";
        //queEstudia = "queEstudia";
        //dondeEstudia = "dondeEstudia";
        
        //ayudaFinanciera = "ayudaFinanciera";
        //becaPorcetanje = "becaPorcetanje";
        //ayudaPorcentaje = "ayudaPorcentaje";

        String tarjetaDos =
                   "<div class='w3-container w3-card-2 w3-white w3-margin-bottom'>"  //2
                       + "<h2 class='w3-text-grey w3-padding-16'>" + "<i class='fa fa-institution fa-fw w3-margin-right w3-xxlarge w3-text-teal'>" + "</i>" + "Institucion" + "</h2>"
                       + "<div class='w3-container'>"          //3
                           + "<h5 class='w3-opacity'>" + "<b>" + "Estudia en otra escuela: " + otraEscuela  + "</b>" + "</h5>"
                           + "<p>" + queEstudia + "</p>"
                           + "<p>" + dondeEstudia + "</p>"
                           + "<hr>"
                       + "</div>"                              //-3
                       + "<div class='w3-container'>"          //4
                         + "<h5 class='w3-opacity'>" + "<b>" + "Trabaja: " + Trabaja + "</b>" + "</h5>"
                         + "<p>" + dondeTrabaja + "</p>"
                         + "<p>" + puesto + "</p>"
                         + "<hr>"
                       + "</div>"                              //-4
                       + "<div class='w3-container'>"          //-5
                           + "<h5 class='w3-opacity'>" + "<b>" + "Ayuda financiera: " + ayudaFinanciera + "</b>" + "</h5>"
                           + "<p> Beca: " + ayudaPorcentaje +"%, Ayuda Financiera: "+becaPorcetanje+ "%</p>"
                           + "<br>"
                       + "</div>"                              //-5
                   + "</div>";                //-2                  

        tarjetaDos.Replace('"', '$');
        tarjetaDos.Replace('\'', '"');
        tarjetaDos.Replace('$', '\'');
        return tarjetaDos;
    }

    private String Tarjeta3(String actividades, String HobOactivExtra, String felicidad, String comentarios)
    {
        //actividades = "actividades";
        //HobOactivExtra = "HobOactivExtra";
        //felicidad = "felicidad";
        //comentarios = "comentarios";
        String tarjetaTres =
                   "<div class='w3-container w3-card-2 w3-white w3-margin-bottom'>"               //2
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
                  + "</div>";                //-2                  

        tarjetaTres.Replace('"', '$');
        tarjetaTres.Replace('\'', '"');
        tarjetaTres.Replace('$', '\'');
        return tarjetaTres;
    }

    private String Tarjeta35(String decisionEstudio, String decisionEstudio2, String decisionEstudio3,
                             String decisionPrograma, String decisionPrograma2, String decisionPrograma3,
                             String Habilidades, String Habilidades2, String Habilidades3)
    {
        //switch(decisionEstudio){ case "1":decisionEstudio= break;} ;
        //decisionEstudio2 = "decisionEstudio2";
        //decisionEstudio3 = "decisionEstudio3";
        //decisionPrograma = "decisionPrograma";
        //decisionPrograma2 = "decisionPrograma2";
        //decisionPrograma3 = "decisionPrograma3";
        //Habilidades = "Habilidades";
        //Habilidades2 = "Habilidades2";
        //Habilidades3 = "Habilidades3";
        String tarjetaTresCinco =
                   "<div class='w3-container w3-card-2 w3-white w3-margin-bottom'>"               //2
                    + "<h2 class='w3-text-grey w3-padding-16'>" + "<i class='fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal'>" + "</i>" + "Intereses" + "</h2>"
                    + "<div class='w3-container'>"              //3
                        + "<h5 class='w3-opacity'>" + "<b>" + "Decisiones para estudiar en el ITAM?" + "</b>" + "</h5>"
                        + "<p>" + decisionEstudio + "</p>"
                        + "<p>" + decisionEstudio2 + "</p>"
                        + "<p>" + decisionEstudio3 + "</p>"
                        + "<hr>"
                    + "</div>"                                  //-3
                    + "<div class='w3-container'>"              //4
                        + "<h5 class='w3-opacity'>" + "<b>" + "Decisiones para el programa de computación" + "</b>" + "</h5>"
                        + "<p>" + decisionPrograma + "</p>"
                        + "<p>" + decisionPrograma2 + "</p>"
                        + "<p>" + decisionPrograma3 + "</p>"
                        + "<hr>"
                    + "</div>"                                  //-4
                    + "<div class='w3-container'>"              //5
                        + "<h5 class='w3-opacity'>" + "<b>" + "Habilidades" + "</b>" + "</h5>"
                        + "<p>" + Habilidades + "</p>"
                        + "<p>" + Habilidades2 + "</p>"
                        + "<p>" + Habilidades3 + "</p>"
                        + "<hr>"
                    + "</div>"                                  //-5                                                   
                  + "</div>";                //-2                  

        tarjetaTresCinco.Replace('"', '$');
        tarjetaTresCinco.Replace('\'', '"');
        tarjetaTresCinco.Replace('$', '\'');
        return tarjetaTresCinco;
    }

    private String Tarjeta4(String Estado, String MateriaBaja, String ExamenesMetodo, String actividadExtra, String expectativas, 
                            String expectativasPrograma, String comentario, String ConAlgoritmosProgramas, String sugAlgoProg, String comentarioGen)
    {
        //Estado = "actividades";
        //MateriaBaja = "MateriaBaja";
        //ExamenesMetodo = "ExamenesMetodo";
        //actividadExtra = "actividadExtra";
        //expectativas = "expectativas";
        //expectativasPrograma = "expectativasPrograma";
        //ConAlgoritmosProgramas = "ConAlgoritmosProgramas";
        //sugAlgoProg = "sugAlgoProg";
        //comentarioGen = "comentarioGen";
        
        String tarjetaCuatro =
                   "<div class='w3-container w3-card-2 w3-white'>"               //2
                    + "<h2 class='w3-text-grey w3-padding-16'>" + "<i class='fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal'>" + "</i>" + "Entrevista 2" + "</h2>"
                    + "<div class='w3-container'>"              //3
                        + "<h5 class='w3-opacity'>" + "<b>" + "Estado en términos generales, en el ITAM" + "</b>" + "</h5>"
                        + "<p>" + Estado + "</p>"
                        + "<hr>"
                    + "</div>"                                  //-3
                    + "<div class='w3-container'>"              //4
                        + "<h5 class='w3-opacity'>" + "<b>" + "Materias dadas de baja" + "</b>" + "</h5>"
                        + "<p>" + MateriaBaja + "</p>"
                        + "<hr>"
                    + "</div>"                                  //-4
                    + "<div class='w3-container'>"              //5
                        + "<h5 class='w3-opacity'>" + "<b>" + "Satisfaccion exámenes y metodología " + "</b>" + "</h5>"
                        + "<p>" + ExamenesMetodo + "</p>"
                        + "<hr>"
                    + "</div>"                                  //-5
                    + "<div class='w3-container'>"              //6
                        + "<h5 class='w3-opacity'>" + "<b>" + "Participación actividad extra-curricular" + "</b>" + "</h5>"
                        + "<p>" + actividadExtra + "</p>" + "<br>"
                    + "</div>"                                  //-6
                    + "<div class='w3-container'>"              //6
                        + "<h5 class='w3-opacity'>" + "<b>" + "Cambio de  expectativas con respecto al ITAM" + "</b>" + "</h5>"
                        + "<p>" + expectativas + "</p>" + "<br>"
                    + "</div>"                                  //-6
                    + "<div class='w3-container'>"              //6
                        + "<h5 class='w3-opacity'>" + "<b>" + "Cambio de expectativas con respecto al programa de Ingeniería en Computacion" + "</b>" + "</h5>"
                        + "<p>" + expectativasPrograma + "</p>" + "<br>"
                    + "</div>"                                  //-6
                    + "<div class='w3-container'>"              //6
                        + "<h5 class='w3-opacity'>" + "<b>" + "consideracion de la metodología utilizada y el contenido de Algoritmos y Programas de Ingeniería en Computación" + "</b>" + "</h5>"
                        + "<p>" + ConAlgoritmosProgramas + "</p>" + "<br>"
                    + "</div>"                                  //-6
                    + "<div class='w3-container'>"              //6
                        + "<h5 class='w3-opacity'>" + "<b>" + "Comentarios Generales" + "</b>" + "</h5>"
                        + "<p>" + comentarioGen + "</p>" + "<br>"
                    + "</div>"
                  + "</div>";                //-2                  

        tarjetaCuatro.Replace('"', '$');
        tarjetaCuatro.Replace('\'', '"');
        tarjetaCuatro.Replace('$', '\'');
        return tarjetaCuatro;
    }
}
