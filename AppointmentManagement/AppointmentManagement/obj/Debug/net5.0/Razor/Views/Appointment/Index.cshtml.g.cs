#pragma checksum "D:\ASP.NET Core Project\GitHub Project\AppointmentManagement\AppointmentManagement\AppointmentManagement\Views\Appointment\Index.cshtml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "cbad190ab49eb997541d636185a6f2b1a056010d0a8278d869f08a3efc0511f0"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Appointment_Index), @"mvc.1.0.view", @"/Views/Appointment/Index.cshtml")]
namespace AspNetCore
{
    #line default
    using global::System;
    using global::System.Collections.Generic;
    using global::System.Linq;
    using global::System.Threading.Tasks;
    using global::Microsoft.AspNetCore.Mvc;
    using global::Microsoft.AspNetCore.Mvc.Rendering;
    using global::Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\ASP.NET Core Project\GitHub Project\AppointmentManagement\AppointmentManagement\AppointmentManagement\Views\_ViewImports.cshtml"
using AppointmentManagement

#nullable disable
    ;
#nullable restore
#line 2 "D:\ASP.NET Core Project\GitHub Project\AppointmentManagement\AppointmentManagement\AppointmentManagement\Views\_ViewImports.cshtml"
using AppointmentManagement.Models

#nullable disable
    ;
#nullable restore
#line 1 "D:\ASP.NET Core Project\GitHub Project\AppointmentManagement\AppointmentManagement\AppointmentManagement\Views\Appointment\Index.cshtml"
 using Microsoft.AspNetCore.Http

#line default
#line hidden
#nullable disable
    ;
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"Sha256", @"cbad190ab49eb997541d636185a6f2b1a056010d0a8278d869f08a3efc0511f0", @"/Views/Appointment/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"Sha256", @"51d68a52ccb8a2b8a38c577233581861268d9ad79c780f3d98e0bc861db672d2", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Appointment_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn-secondary form-control"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Account", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Register", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("name", "_AddEditAppointment", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.PartialTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n<div class=\"row\">\r\n");
#nullable restore
#line 5 "D:\ASP.NET Core Project\GitHub Project\AppointmentManagement\AppointmentManagement\AppointmentManagement\Views\Appointment\Index.cshtml"
     if (TempData.ContainsKey("newAdminSignUp")) 
    { 

#line default
#line hidden
#nullable disable

            WriteLiteral("        <div class=\"container\">\r\n        <div class=\"alert alert-success alert-dismissible\">\r\n            <a hfer=\"#\" class=\"close\" data-dismiss=\"alert\" aria-level=\"close\">x</a>\r\n            <strong> Account created for ");
            Write(
#nullable restore
#line 10 "D:\ASP.NET Core Project\GitHub Project\AppointmentManagement\AppointmentManagement\AppointmentManagement\Views\Appointment\Index.cshtml"
                                          TempData["newAdminSignUp"].ToString()

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("</strong>\r\n        </div>\r\n        </div>\r\n");
#nullable restore
#line 13 "D:\ASP.NET Core Project\GitHub Project\AppointmentManagement\AppointmentManagement\AppointmentManagement\Views\Appointment\Index.cshtml"
    }

#line default
#line hidden
#nullable disable

            WriteLiteral("\r\n    <div class=\"container\">\r\n");
#nullable restore
#line 16 "D:\ASP.NET Core Project\GitHub Project\AppointmentManagement\AppointmentManagement\AppointmentManagement\Views\Appointment\Index.cshtml"
         if (User.IsInRole(AppointmentManagement.Utility.Helper.Admin))
        {

#line default
#line hidden
#nullable disable

            WriteLiteral("            <div class=\"row\">\r\n                <div class=\"form-group col-4\" id=\"divDoctorList\">\r\n                    <label>Select Doctor</label>\r\n                    ");
            Write(
#nullable restore
#line 21 "D:\ASP.NET Core Project\GitHub Project\AppointmentManagement\AppointmentManagement\AppointmentManagement\Views\Appointment\Index.cshtml"
                     Html.DropDownList("doctorId", new SelectList(ViewBag.DoctorList, "Id", "Name"), new {@class = "form-control select2", @onchange = "onDoctorChange();"})

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n                </div>\r\n\r\n                <div class=\"col-3 offset-5\">\r\n                    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cbad190ab49eb997541d636185a6f2b1a056010d0a8278d869f08a3efc0511f07431", async() => {
                WriteLiteral("Admin Registration");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                </div>\r\n            </div>\r\n");
#nullable restore
#line 28 "D:\ASP.NET Core Project\GitHub Project\AppointmentManagement\AppointmentManagement\AppointmentManagement\Views\Appointment\Index.cshtml"
        }

#line default
#line hidden
#nullable disable

            WriteLiteral("\r\n        <div id=\"calendar\"></div>\r\n    </div>\r\n</div>\r\n\r\n");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("partial", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "cbad190ab49eb997541d636185a6f2b1a056010d0a8278d869f08a3efc0511f09291", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.PartialTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Name = (string)__tagHelperAttribute_3.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n\r\n<div class=\"text-right pt-2\">\r\n    <p>");
            Write(
#nullable restore
#line 37 "D:\ASP.NET Core Project\GitHub Project\AppointmentManagement\AppointmentManagement\AppointmentManagement\Views\Appointment\Index.cshtml"
        HttpContextAccessor.HttpContext.Session.GetString("ssuserName")

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\'s account is logged in.</p>\r\n</div>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public 
#nullable restore
#line 2 "D:\ASP.NET Core Project\GitHub Project\AppointmentManagement\AppointmentManagement\AppointmentManagement\Views\Appointment\Index.cshtml"
        IHttpContextAccessor

#line default
#line hidden
#nullable disable
         
#nullable restore
#line 2 "D:\ASP.NET Core Project\GitHub Project\AppointmentManagement\AppointmentManagement\AppointmentManagement\Views\Appointment\Index.cshtml"
                             HttpContextAccessor

#line default
#line hidden
#nullable disable
         { get; private set; }
         = default!;
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591
