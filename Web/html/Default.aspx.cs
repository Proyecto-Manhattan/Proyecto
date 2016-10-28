using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_html_Default : System.Web.UI.Page
{
    private String user;
    private String pswd;
    protected void Page_Load(object sender, EventArgs e)
    {


        user = Request.Form.Get("username");
        pswd = Request.Form.Get("password");

        Response.Write("<p>" + user + "</p>");
        Response.Write("<p>" + pswd + "</p>");

        if (true)//usuario no encontrado
        {
            Response.Redirect("index.html?res=User o Password no Validos");
        }
        else 
        {
            //MANDA A LA PAGINA DE INICIO
        }
        
    }
}