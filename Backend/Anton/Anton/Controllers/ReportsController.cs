using Anton.Reports;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web.Http;

namespace Anton.Controllers
{
    public class ReportsController : ApiController
    {
        // GET: api/Reports

        [HttpGet]
        [Route("api/Reports/{type}")]
        public HttpResponseMessage Get(string type)
        {
            var response = Request.CreateResponse(HttpStatusCode.OK);
            switch (type)
            {
                case "patientStatus":
                    GetPatientStatus(response);
                    break;
                case "newCasesWeek":
                    GetWeekCasesAndDeaths(response);
                    break;
                default:
                    response = Request.CreateResponse(HttpStatusCode.BadRequest);
                    break;
            }

            response.Content.Headers.ContentType = new MediaTypeHeaderValue("application/pdf");
            return response;
        }

        private static void GetPatientStatus(HttpResponseMessage response)
        {
            const string filename = "PatientStatusReport.pdf";
            ReportGenerator.ExportPdf(filename, new PatientStatusReport());
            FindPdf(response, filename);
        }

        private static void GetWeekCasesAndDeaths(HttpResponseMessage response)
        {
            const string filename = "NewCasesWeek.pdf";
            ReportGenerator.ExportPdf(filename, new WeekCasesAndDeaths());
            FindPdf(response, filename);
        }


        private static void FindPdf(HttpResponseMessage response, string filename)
        {
            var path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, filename);
            var pdf = File.OpenRead(path);
            response.Content = new StreamContent(pdf);
        }
    }
}
