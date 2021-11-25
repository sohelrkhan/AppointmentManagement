using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AppointmentManagement.Models.ViewModels;

namespace AppointmentManagement.Services
{
    public interface IAppointmentService
    {
        List<DoctorVM> GetDoctorList();
        List<PatientVM> GetPatientList();
    }
}
