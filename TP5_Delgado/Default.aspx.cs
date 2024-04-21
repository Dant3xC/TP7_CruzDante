using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace TP5_Delgado
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            LbConfirmado.Text = string.Empty;
            Page.Validate();

            if (Page.IsValid)
            {
                try
                {
                    MailMessage mensaje = new MailMessage();
                    mensaje.From = new MailAddress(TxtEmisor.Text);
                    mensaje.To.Add(TxtDestinatario.Text);
                    mensaje.Subject = TxtAsunto.Text;
                    mensaje.Body = TxtMensaje.Text;
                    mensaje.IsBodyHtml = false;

                    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                    {
                        smtp.EnableSsl = true;
                        smtp.UseDefaultCredentials = false;
                        System.Net.NetworkCredential credenciales = new System.Net.NetworkCredential();
                        credenciales.UserName = TxtEmisor.Text;
                        credenciales.Password= TxtContra.Text; 
                        smtp.Credentials = credenciales;
                        smtp.Send(mensaje);
                    }

                    LbConfirmado.Text = "El correo se envió correctamente";
                }
                catch (Exception ex)
                {
                
                    LbConfirmado.Text = "Error al enviar el correo: " + ex.Message;
                }
            }
        }

    }
}