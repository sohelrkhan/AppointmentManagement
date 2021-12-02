using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AppointmentManagement.Models;
using Microsoft.AspNetCore.Identity;

namespace AppointmentManagement.DbInitializer
{
    public class DbInitializer : IDbInitializer
    {
        private readonly ApplicationDbContext _db;
        private UserManager<ApplicationUser> _userManager;
        private RoleManager<IdentityRole> _roleManager;
         
        public DbInitializer(ApplicationDbContext db, UserManager<ApplicationUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            _db = db;
            _userManager = userManager;
            _roleManager = roleManager;
        }
        public void Initialize()
        {
            try
            {

            }
            catch (Exception e)
            {
                
            }
            
        }
    }
}
