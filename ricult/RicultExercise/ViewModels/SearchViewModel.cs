using System;
using System.Collections.Generic;
using System.Text;

namespace RicultExercise.ViewModels
{
    public class SearchViewModel
    {
        public string RegionProvince { get; set; }
        public string NationalId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Country { get; set; }
        public string CropType { get; set; }
        public DateTime? SowingStartDate { get; set; }
        public DateTime? SowingEndDate { get; set; }
        public DateTime? HarvestStartDate { get; set; }
        public DateTime? HarvestEndDate { get; set; }
        public int FarmSizeStart { get; set; }
        public int FarmSizeEnd { get; set; }
        public string FarmState { get; set; }
        public int Village { get; set; }

    }
}
