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
        Task<int> AddUpdate(AppointmentVM model);
        List<AppointmentVM> DoctorsEventsById(string doctorId);
        List<AppointmentVM> PatientsEventsById(string patientId);
        AppointmentVM GetAppointmentById(int id);
        Task<int> Delete(int id);
        Task<int> ConfirmEvent(int id);
    }
}
