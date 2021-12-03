using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AppointmentManagement.Models;
using AppointmentManagement.Models.ViewModels;
using AppointmentManagement.Utility;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;

namespace AppointmentManagement.Controllers
{
    public class AccountController : Controller
    {
        private readonly ApplicationDbContext _db;
        private UserManager<ApplicationUser> _userManager;
        private SignInManager<ApplicationUser> _signInManager;
        private RoleManager<IdentityRole> _roleManager;


        public AccountController(ApplicationDbContext db, UserManager<ApplicationUser> userManager, 
            SignInManager<ApplicationUser> signInManager, RoleManager<IdentityRole> roleManager)
        {
            _db = db;
            _userManager = userManager;
            _signInManager = signInManager;
            _roleManager = roleManager;
        }

        //Get-Login
        public IActionResult Login()
        {
            return View();
        }

        //Post-Login
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Login(LoginViewModel model)
        {
            if (ModelState.IsValid)
            {
                var result = await _signInManager.PasswordSignInAsync(model.Email, model.Password, model.RememberMe, false);
                if (result.Succeeded)
                {
                    //Session
                    var user = await _userManager.FindByNameAsync(model.Email);
                    HttpContext.Session.SetString("ssuserName",user.Name);
                    //var userName = HttpContext.Session.GetString("ssuserName");

                    return RedirectToAction("Index", "Appointment");
                }

                ModelState.AddModelError("", "Invalid Login attempt");
            }
            return View(model);
        }

        //GET-Register
        public async Task<IActionResult> Register()
        {
            return View();
        }

        //Post-Register
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Register(RegisterViewModel model)
        {
            if (ModelState.IsValid)
            {
                var user = new ApplicationUser
                {
                    UserName = model.Email,
                    Email = model.Email,
                    Name = model.Name
                };

                var result = await _userManager.CreateAsync(user, model.Password);
                if (result.Succeeded)
                {
                    await _userManager.AddToRoleAsync(user, model.RoleName);

                    if (!User.IsInRole(Helper.Admin))
                    {
                        await _signInManager.SignInAsync(user, isPersistent: false);
                    }
                    else
                    {
                        TempData["newAdminSignUp"] = user.Name;
                    }
                    
                    return RedirectToAction("Index", "Appointment");
                }

                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError("", error.Description);
                }
            }
            return View(model);
        }

        [HttpPost]
        public async Task<IActionResult> LogOff()
        {
            await _signInManager.SignOutAsync();
            return RedirectToAction("Login", "Account");
        }
    }
}
