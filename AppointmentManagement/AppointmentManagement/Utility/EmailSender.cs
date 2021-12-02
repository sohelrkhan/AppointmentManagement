using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Mailjet.Client;
using Mailjet.Client.Resources;
using Microsoft.AspNetCore.Identity.UI.Services;
using Newtonsoft.Json.Linq;

namespace AppointmentManagement.Utility
{
    public class EmailSender : IEmailSender
    {
        public async Task SendEmailAsync(string email, string subject, string htmlMessage)
        {
            MailjetClient client = new MailjetClient("2ba22f0266e5e1716ff3d790e8a74ac8", "f7bd2c604f4fcefb9288aaf5088d46f2")
            {
               
            };

            MailjetRequest request = new MailjetRequest
                {
                    Resource = Send.Resource,
                }
                .Property(Send.FromEmail, "aponsohel@gmail.com")
                .Property(Send.FromName, "Appointment Management System")
                .Property(Send.Subject, subject)
                .Property(Send.HtmlPart, htmlMessage)
                .Property(Send.Recipients, new JArray {
                    new JObject {
                        {"Email", email}
                    }
                });
            MailjetResponse response = await client.PostAsync(request);
        }
    }
}
