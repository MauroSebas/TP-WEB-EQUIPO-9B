using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPWebForms_equipo9B
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btnSubscribe_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtEmail.Text))
            {
                lblSubscribeMsg.Text = "Campo vacío";
            }
            else
            {
                
                string pattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
                if (Regex.IsMatch(txtEmail.Text, pattern))
                {
                    lblSubscribeMsg.Text = "Gracias por suscribirte!";                   
                }
                else
                {
                    lblSubscribeMsg.Text = "Email inválido!";
                }
            }





        }
    }
}
