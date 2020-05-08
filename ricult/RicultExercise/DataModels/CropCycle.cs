using System;
using System.Collections.Generic;
using System.Text;

namespace RicultExercise.Models
{
    public class CropCycle
    {
        public int Id { get; set; }
        public string Region { get; set; }
        public string Country { get; set; }
        public string Village { get; set; }
        public string FullName { get; set; }
        public string Organization { get; set; }
        public string District { get; set; }
        public string Town { get; set; }
        public string FarmId { get; set; }
        public int FarmerId { get; set; }

        public DateTime SowingDate { get; set; }
        public DateTime HarvestDate { get; set; }
        public DateTime CreditStart { get; set; }
        public DateTime CreditFinish { get; set; }
        public double SoilNitrogen { get; set; }
        public string SoilNitrogenRate { get; set; }
        public double SoilOrganicMatter { get; set; }
        public string SoilOrganicMatterRate { get; set; }
        public double SoilPh { get; set; }

        public string SoilPhRate { get; set; }
        public double SoilPhosphorus { get; set; }
        public string SoilPhosphorusRate { get; set; }
        public double SoilPotash { get; set; }
        public string SoilPotashRate { get; set; }
        public double WaterEct { get; set; }
        public string WaterEctRate { get; set; }
        public string SoilType { get; set; }
        public string SeedType { get; set; }

        public string CropType { get; set; }
        public int Area { get; set; }
        public string Coordinates { get; set; }
        public string NationalId { get; set; }
        public int Loan { get; set; }
        public int LoanStatus { get; set; }
        public string DeliverySchedule { get; set; }
        public string HistoricalInputs { get; set; }
        public string CreditPerformance { get; set; }

        public string IncomeSources { get; set; }
        public string Assets { get; set; }
        public string AgentFeedback { get; set; }
        public string CreditRequirements { get; set; }
        public string Status { get; set; }
        public int Ost { get; set; }
        public string Oht { get; set; }
        public string Frost { get; set; }
        public DateTime FrostDate { get; set; }

        public string Heat { get; set; }
        public DateTime HeatDate { get; set; }
        public string Fog { get; set; }
        public DateTime FogDate { get; set; }
        public string Rain { get; set; }
        public DateTime RainDate { get; set; }
        public string Wind { get; set; }
        public DateTime WindDate { get; set; }
        public string Irrigation { get; set; }
        public DateTime IrrigationDate { get; set; }

        public string Ndvi { get; set; }
        public DateTime NdviDate { get; set; }
        public string Fertilizer { get; set; }
        public DateTime FertilizerDate { get; set; }
        public string Pest { get; set; }
        public DateTime PestDate { get; set; }
        public string PhoneNumber { get; set; }
        public string AwhereId { get; set; }
        public DateTime DateCreated { get; set; }

        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string OtherSownCoordinates { get; set; }
        public DateTime OtherSownDate { get; set; }
        public int Activated { get; set; }
        public int GrowNum { get; set; }
        public int Score { get; set; }
        public int State { get; set; }
        public string Stage { get; set; }
        public DateTime EstHarvestDate { get; set; }
        public double EstimatedYield { get; set; }
        public int Performance { get; set; }
        public double YieldQty { get; set; }


    }
}
