using System;
using System.Collections.Generic;
using System.Text;

namespace RicultExercise.ViewModels
{
    public class PageItems
    {
        public string Region { get; set; }
        public string NationalId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Country { get; set; }
        public string CropType { get; set; }
        public DateTime SowingDate { get; set; }
        public DateTime HarvestDate { get; set; }
        public int FarmSize { get; set; }
        public string FarmState { get; set; }
        public int FarmRanking { get; set; }
        public string Village { get; set; }
        public string Email { get; set; }
    }
}
