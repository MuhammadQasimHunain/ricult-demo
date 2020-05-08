using System;
using System.Collections.Generic;
using System.Text;

namespace RicultExercise.Models
{
    public class User
    {
        public int Id { get; set; }
        public string Region { get; set; }
        public string Country { get; set; }
        public string Village { get; set; }
        public string FullName { get; set; }

        public string Username { get; set; }
        public string PasswordHash { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string HomeAddress { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string FatherName { get; set; }
        public string UserType { get; set; }

        public int Hidden { get; set; }
        public string Organization { get; set; }
        public string District { get; set; }
        public string Town { get; set; }
        public string NationalId { get; set; }
        public string FarmerUserId { get; set; }
        public int Securrency { get; set; }
        public string PhotoUrl { get; set; }

        public string PhoneId { get; set; }
        public string Eula { get; set; }
        public string Bank { get; set; }
        public string Account { get; set; }
        public string Car { get; set; }
        public int Authenticated { get; set; }
        public DateTime SignupTime { get; set; }

        public int Cellphone { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string DtacSubscriptionType { get; set; }
        public int SendSms { get; set; }
        public int PastLoan { get; set; }
        public int LoanInterest { get; set; }

        public string PastLoanBank { get; set; }
        public double LoanAmount { get; set; }
        public string Associate { get; set; }
        public int PermissionCode { get; set; }
        public string FacebookId { get; set; }
        public int SendOtp { get; set; }
        public string Segment { get; set; }
        public string OrganizationUserType { get; set; }
    }
}
