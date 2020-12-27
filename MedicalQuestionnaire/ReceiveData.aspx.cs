//using DinkToPdf;
//using DinkToPdf.Contracts;
//using Microsoft.AspNetCore.Mvc;
//using Microsoft.Extensions.DependencyInjection;
using iTextSharp;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
//using iTextSharp.text.html.simpleparser;
//using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
//using System.Text;
//using System.Threading.Tasks;
using System.Web;
//using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Document = iTextSharp.text.Document;

namespace MedicalQuestionnaire
{
    public partial class ReceiveData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        //private static IConverter _converter;
        //public PdfCreatorController(IConverter converter)
        //{
        //    _converter = converter;
        //}
        //[WebMethod]
        //public static void CreatePDF()
        ////public static IActionResult CreatePDF()
        //{
        //    var globalSettings = new GlobalSettings
        //    {
        //        ColorMode = ColorMode.Color,
        //        Orientation = DinkToPdf.Orientation.Portrait,
        //        PaperSize = PaperKind.A4,
        //        Margins = new MarginSettings { Top = 10 },
        //        DocumentTitle = "PDF Report",
        //        Out = @"D:\Employee_Report.pdf"
        //    };
        //    var objectSettings = new ObjectSettings
        //    {
        //        PagesCount = true,
        //        HtmlContent = GetHTMLString(),
        //        WebSettings = { DefaultEncoding = "utf-8", UserStyleSheet = Path.Combine(Directory.GetCurrentDirectory(), "assets", "styles.css") },
        //        HeaderSettings = { FontName = "Arial", FontSize = 9, Right = "Page [page] of [toPage]", Line = true },
        //        FooterSettings = { FontName = "Arial", FontSize = 9, Line = true, Center = "Report Footer" }
        //    };
        //    var pdf = new HtmlToPdfDocument()
        //    {
        //        GlobalSettings = globalSettings,
        //        Objects = { objectSettings }
        //    };



        //    //var result = _converter.Convert(pdf);
        //    var path = Path.Combine(Path.GetTempPath(), String.Format("{0}.pdf", 0));

        //    //System.IO.File.WriteAllBytes(path, pdf);

        //    //return this.View();

        //    //_converter.Convert(pdf);

        //    //var file = _converter.Convert(pdf);
        //    //  return Ok("Successfully created PDF document.");
        //    //return (file, "application/pdf", "EmployeeReport.pdf");
        //    //return File(file, "application/pdf", "EmployeeReport.pdf");
        //    //return controller.File(memory, mimeType, filename);
        //    //return await _fileManager.GetFileAsync(this, "filename", mimeType);
        //    //return pdf.;

        //    //Initialize HTML to PDF converter 
        //    HtmlToPdfConverter htmlConverter = new HtmlToPdfConverter(HtmlRenderingEngine.WebKit);

        //    WebKitConverterSettings settings = new WebKitConverterSettings();

        //    //Set WebKit path
        //    settings.WebKitPath = Path.Combine(_hostingEnvironment.ContentRootPath, "QtBinariesWindows");

        //    //Assign WebKit settings to HTML converter
        //    htmlConverter.ConverterSettings = settings;

        //    //Convert URL to PDF
        //    PdfDocument document = htmlConverter.Convert("https://www.google.com");

        //    //Saving the PDF to the MemoryStream
        //    MemoryStream stream = new MemoryStream();

        //    document.Save(stream);

        //    //Download the PDF document in the browser
        //    return File(stream.ToArray(), System.Net.Mime.MediaTypeNames.Application.Pdf, "Output.pdf");
        //}
   
        //public void ConfigureServices(IServiceCollection services)
        //{
        //    services.AddSingleton(typeof(IConverter), new SynchronizedConverter(new PdfTools()));

        //    services.AddControllers();
        //}
        public static List<Employee> GetAllEmployees() =>
       new List<Employee>
       {
                new Employee { Name="Mike", LastName="Turner", Age=35, Gender="Male"},
                new Employee { Name="Sonja", LastName="Markus", Age=22, Gender="Female"},
                new Employee { Name="Luck", LastName="Martins", Age=40, Gender="Male"},
                new Employee { Name="Sofia", LastName="Packner", Age=30, Gender="Female"},
                new Employee { Name="John", LastName="Doe", Age=45, Gender="Male"}
       };

    public class Employee
    {
        public string Name { get; set; }
        public string LastName { get; set; }
        public int Age { get; set; }
        public string Gender { get; set; }
    }
    //public static string GetHTMLString()
    //{
    //    var employees = GetAllEmployees();
    //    var sb = new StringBuilder();
    //    sb.Append(@"
    //                    <html>
    //                        <head>
    //                        </head>
    //                        <body>
    //                            <div class='header'><h1>This is the generated PDF report!!!</h1></div>
    //                            <table align='center'>
    //                                <tr>
    //                                    <th>Name</th>
    //                                    <th>LastName</th>
    //                                    <th>Age</th>
    //                                    <th>Gender</th>
    //                                </tr>");
    //    foreach (var emp in employees)
    //    {
    //        sb.AppendFormat(@"<tr>
    //                                <td>{0}</td>
    //                                <td>{1}</td>
    //                                <td>{2}</td>
    //                                <td>{3}</td>
    //                              </tr>", emp.Name, emp.LastName, emp.Age, emp.Gender);
    //    }
    //    sb.Append(@"
    //                            </table>
    //                        </body>
    //                    </html>");
    //    return sb.ToString();
    //}

        protected void btnDownloadButton_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=print.pfd");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            StringWriter sw = new StringWriter();

            HtmlTextWriter hw = new HtmlTextWriter(sw);

            panelPDF.RenderControl(hw);


            string a = sw.ToString();

            StreamReader sr = new StreamReader(sw.ToString());
            DocumentFormat.OpenXml.Wordprocessing.PageSize f = new DocumentFormat.OpenXml.Wordprocessing.PageSize();
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 10f);

            HTMLWorker htmlParser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlParser.Parse(sr);

            pdfDoc.Close();

            Response.Write(pdfDoc);

            Response.End();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
            //base.VerifyRenderingInServerForm(control);
        }
        //public void FileResultCreatePdf()
        //{
        //    MemoryStreamworkStream = newMemoryStream();
        //    StringBuilder status = newStringBuilder("");
        //    DateTimedTime = DateTime.Now;
        //    //file name to be created   
        //    stringstrPDFFileName = string.Format("SamplePdf" + dTime.ToString("yyyyMMdd") + "-" + ".pdf");
        //    Document doc = newDocument();
        //    doc.SetMargins(0 f, 0 f, 0 f, 0 f);
        //    //Create PDF Table with 5 columns  
        //    PdfPTabletableLayout = newPdfPTable(5);
        //    doc.SetMargins(0 f, 0 f, 0 f, 0 f);
        //    //Create PDF Table  

        //    //file will created in this path  
        //    stringstrAttachment = Server.MapPath("~/Downloadss/" + strPDFFileName);


        //    PdfWriter.GetInstance(doc, workStream).CloseStream = false;
        //    doc.Open();

        //    //Add Content to PDF   
        //    doc.Add(Add_Content_To_PDF(tableLayout));

        //    // Closing the document  
        //    doc.Close();

        //    byte[] byteInfo = workStream.ToArray();
        //    workStream.Write(byteInfo, 0, byteInfo.Length);
        //    workStream.Position = 0;


        //    return File(workStream, "application/pdf", strPDFFileName);

        //}
    }
}