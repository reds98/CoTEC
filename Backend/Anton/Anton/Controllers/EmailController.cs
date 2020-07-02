using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Anton.Models;
using System.Net.Mail;
namespace Anton.Controllers
{
    public class EmailController : ApiController
    {
        public IHttpActionResult PostEmail(EmailClass email)
        {
            if (!ModelState.IsValid)
                return BadRequest("Invalid data.");
            EmailClass Email = new EmailClass();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            Email.to = email.to;
            Email.subject = email.subject;
            Email.body = email.body;
            MailMessage mm = new MailMessage();
            mm.From=  new MailAddress("sabrosos.dev@gmail.com");
            mm.To.Add(email.to);
            mm.Subject = email.subject;
            mm.Body = email.body;
            mm.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.UseDefaultCredentials = true;
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Credentials = new System.Net.NetworkCredential("sabrosos.dev@gmail.com", "sabroso123");
            smtp.Send(mm); 
            return Ok();
        }
    }
}
