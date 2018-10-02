﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto.Logica.BL
{
    public class clsGeneral
    {
        public void setEmail(Models.clsCorreo obclsCorreo)
        {
            try
            {
                //objeto de correo
                MailMessage Mail = new MailMessage();

                Mail.From = new System.Net.Mail.MailAddress(obclsCorreo.stFrom);
                Mail.To.Add(obclsCorreo.stTo);
                Mail.Subject = obclsCorreo.stAsunto;
                Mail.Body = obclsCorreo.stMensaje;

                if (obclsCorreo.inTipo == 0) Mail.IsBodyHtml = false;
                else if (obclsCorreo.inTipo == 1) Mail.IsBodyHtml = true;

                if (obclsCorreo.inPrioridad == 2) Mail.Priority = MailPriority.High;
                else if (obclsCorreo.inPrioridad == 1) Mail.Priority = MailPriority.Low;
                else if (obclsCorreo.inPrioridad == 0) Mail.Priority = MailPriority.Normal;

                AlternateView htmlView = AlternateView.CreateAlternateViewFromString(obclsCorreo.stMensaje,Encoding.UTF8, MediaTypeNames.Text.Html);

                //Incrustando una imagen
                LinkedResource img = new LinkedResource(obclsCorreo.stImagen, MediaTypeNames.Image.Gif);
                img.ContentId = obclsCorreo.stIdImagen;
                htmlView.LinkedResources.Add(img);

                //Cliente de servidor de correo
                SmtpClient smtp = new SmtpClient();
                smtp.Host = obclsCorreo.stServidor;

                if (obclsCorreo.blAutenticacion) smtp.Credentials = new System.Net.NetworkCredential(obclsCorreo.stUsuario,obclsCorreo.stPassword);
                if (obclsCorreo.stPuerto.Length > 0) smtp.Port = Convert.ToInt32(obclsCorreo.stPuerto);

                smtp.EnableSsl = obclsCorreo.blConexionSegura;
                smtp.Send(Mail);

            }
            catch (Exception ex) { throw ex; }
        }
    }
}
