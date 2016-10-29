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
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        OdbcConnection con = conectarBD();

        if (con != null)
        {
            String texto_claveUnica = plis.Value.ToString();
            String texto_nombre = Nombre.Value.ToString();
            String texto_apellido = Apellido.Value.ToString();
            String texto_edad = Edad.Value.ToString();
            String texto_email = Email.Value.ToString();
            String texto_tel = Telefono.Value.ToString();
            String texto_pais = Pais.Value.ToString();
            String texto_estado = Estado.Value.ToString();
            String texto_delegacion = Delegacion.Value.ToString();
            String texto_celular = Celular.Value.ToString();
            String texto_universidad = Universidad.Value.ToString();
            String texto_carrera = Carrera.Value.ToString();
            String texto_preparatoria = Preparatoria.Value.ToString();
            String texto_estudiaOtra = EstudioOtro.Value.ToString();
            String texto_otraEscuela = DondeEstudia.Value.ToString();
            String texto_queEstudio = QueEstudio.Value.ToString();
            String texto_trabajo = Trabajo.Value.ToString();
            String texto_lugarTrabajo = LugarTrabajo.Value.ToString();
            String texto_puesto = Puesto.Value.ToString();
            String texto_ayudaFinanciera = AyudaFinanciera.Value.ToString();
            String texto_porcentajeBeca = PorcentajeBeca.Value.ToString();
            String texto_porcentajeAyudadFinanciera = PorcentajeAyudaFinanciera.Value.ToString();
            String op1_itam = Select1.Value.ToString();
            String op2_itam = Select2.Value.ToString();
            String op3_itam = Select3.Value.ToString();
            String op1_programa = Select4.Value.ToString();
            String op2_programa = Select5.Value.ToString();
            String op3_programa = Select6.Value.ToString();
            String op1_hablidad = Select7.Value.ToString();
            String op2_hablidad = Select8.Value.ToString();
            String op3_hablidad = Select9.Value.ToString();
            String texto_actividad = Actividad.Value.ToString();
            String texto_hobby = Hobby.Value.ToString();
            String texto_felicidad = Felicidad.Value.ToString();
            String texto_comentario = Recomendaciones.Value.ToString();
            if (texto_celular == "")
            {
                texto_celular = "0";
            }
            String query = String.Format("INSERT INTO alumnos(claveU,nombre,apellido,edad,correo,telefono,celular,carrera,estado,pais) VALUES('{0}','{1}','{2}',{3},'{4}',{5},{6},'{7}','{8}','{9}');"
                            + "INSERT INTO alumnos_datos(claveU,universidad,preparatoria,delegacion) VALUES({10},'{11}','{12}','{13}');"
                            + "INSERT INTO alumnos_institucion(claveU,estudiaOtra,otraEscuela,queEstudia,trabajo,lugarTrabajo,puesto,ayudaFinan,porcentajeBeca,porcentajeFinanciera) VALUES ({14},'{15}','{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}');"
                            + "INSERT INTO alumno_dec_itam(claveU,prioridad1,prioridad2,prioridad3) VALUES({24},'{25}','{26}','{27}');"
                            + "INSERT INTO alumno_dec_programa(claveU,prioridad1,prioridad2,prioridad3) VALUES({28},'{29}','{30}','{31}');"
                            + "INSERT INTO alumno_dec_habilidades(claveU,prioridad1,prioridad2,prioridad3) VALUES({32},'{33}','{34}','{35}');"
                            + "INSERT INTO alumno_preguntas(claveU,actividadDeseo,hobby,felicidadItam,comentarios) VALUES({36},'{37}','{38}','{39}','{40}');",texto_claveUnica,texto_nombre,texto_apellido,texto_edad,texto_email,texto_tel,texto_celular,texto_carrera,texto_estado,texto_pais,texto_claveUnica,texto_universidad,texto_preparatoria,texto_delegacion,texto_claveUnica,texto_estudiaOtra,texto_otraEscuela,texto_queEstudio,texto_trabajo,texto_lugarTrabajo,texto_puesto,texto_ayudaFinanciera,texto_porcentajeBeca,texto_porcentajeAyudadFinanciera,texto_claveUnica,op1_itam,op2_itam,op3_itam,texto_claveUnica,op1_programa,op2_programa,op3_programa,texto_claveUnica,op1_hablidad,op2_hablidad,op3_hablidad,texto_claveUnica,texto_actividad,texto_hobby,texto_felicidad,texto_comentario);

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