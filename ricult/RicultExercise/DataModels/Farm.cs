using System;
using System.Collections.Generic;
using System.Text;

namespace RicultExercise.Models
{
    public class Farm
    {
        public int Id { get; set; }
        public string Region { get; set; }
        public string Country { get; set; }
        public string Village { get; set; }
        public string FullName { get; set; }
        public string Organization { get; set; }
        public string District { get; set; }
        public string Town { get; set; }
        public int FarmerId { get; set; }
        public string FarmName { get; set; }
        public string AwhereId { get; set; }
        public int Area { get; set; }
        public string Coordinates { get; set; }
        public string NationalId { get; set; }
        public string CurrentAwhereId { get; set; }
        public string PhoneNumber { get; set; }
        public string SoilType { get; set; }
        public DateTime DateCreated { get; set; }
        public int Activated { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public int Valid { get; set; }

    }
}
