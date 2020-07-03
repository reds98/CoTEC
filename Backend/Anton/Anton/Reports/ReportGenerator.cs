using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Anton.Reports
{
    public static class ReportGenerator
    {
        public static void ExportPdf(string filename, ReportClass crReport)
        {
            var dest = new DiskFileDestinationOptions { DiskFileName = GetPath(filename) };

            var formatOpt = new PdfFormatOptions
            {
                FirstPageNumber = 0,
                LastPageNumber = 0,
                UsePageRange = false,
                CreateBookmarksFromGroupTree = false
            };

            var ex = new ExportOptions
            {
                ExportDestinationType = ExportDestinationType.DiskFile,
                ExportDestinationOptions = dest,
                ExportFormatType = ExportFormatType.PortableDocFormat,
                ExportFormatOptions = formatOpt
            };

            crReport.SetDatabaseLogon("sa", "sabroso123");

            crReport.Export(ex);
        }

        private static string GetPath(string filename)
        {
            return Path.Combine(AppDomain.CurrentDomain.BaseDirectory, filename);
        }
    }
}