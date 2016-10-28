using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Testing_sudo : System.Web.UI.Page
{

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
        Button1.Attributes.Add("class", "w3-btn w3-itam w3-round-large w3-card-8");
        lb_warn.Attributes.Add("class", "w3-pale-red w3-text-red w3-center");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        OdbcConnection con = conectarBD();

        if (con != null)
        {
            String users = user.Value.ToString();
            String pwds = pwd.Value.ToString();
            String query = "SELECT usuarios.usuario,usuarios.passwd FROM usuarios WHERE usuarios.usuario ='" + users + "' AND usuarios.passwd = '" + pwds + "';" ;
            OdbcCommand cmd = new OdbcCommand(query, con);
            OdbcDataReader dr = cmd.ExecuteReader();
            
            if (dr.HasRows)
            {
                dr.Read();
                Response.Redirect("TestingAlumno.aspx");
            }
            else
            {
                lb_warn.Text = "Usuario o Contraseña Incorrectos (¿Si sabes escribir?)   (╯°□°）╯︵ ┻━┻ ||||||||||||||";
            }

            dr.Close();
        }
    }
}