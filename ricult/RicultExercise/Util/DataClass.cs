using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net.Http.Headers;
using System.Text;
using RicultExercise.ViewModels;

namespace RicultExercise.Util
{
    public class DataClass
    {

        public static List<PageItems> GetPagedList(SearchViewModel searchViewModel = null)
        {
            List<PageItems> pageItems = new List<PageItems>();
            string connectionString =
                "Server=CRLHW-HUNAIQAS2\\SQLEXPRESS;Database=ricult_exercise;Trusted_Connection=True;";
            //ConfigurationManager.ConnectionStrings["ricultDatabase"].ConnectionString;

            // Provide the query string with a parameter placeholder.
            string queryString = string.Format("SearchFarms");
            // Create and open the connection in a using block. This
            // ensures that all resources will be closed and disposed
            // when the code exits.
            using (SqlConnection connection =
                new SqlConnection(connectionString))
            {
                // Create the Command and Parameter objects.
                SqlCommand command = new SqlCommand(queryString, connection);
                if (searchViewModel != null)
                {
                    
                    if (searchViewModel.RegionProvince != null) command.Parameters.Add(new SqlParameter("@RegionProvince", searchViewModel.RegionProvince.Trim()));
                    if (searchViewModel.NationalId != null) command.Parameters.Add(new SqlParameter("@national_id", searchViewModel.NationalId.Trim()));
                    if (searchViewModel.FirstName != null) command.Parameters.Add(new SqlParameter("@first_name", searchViewModel.FirstName.Trim()));
                    if (searchViewModel.LastName != null) command.Parameters.Add(new SqlParameter("@last_name", searchViewModel.LastName.Trim()));
                    if (searchViewModel.Country != null) command.Parameters.Add(new SqlParameter("@country", searchViewModel.Country.Trim()));
                    if (searchViewModel.CropType != null) command.Parameters.Add(new SqlParameter("@crop_type", searchViewModel.CropType.Trim()));
                    if (searchViewModel.SowingStartDate != null) command.Parameters.Add(new SqlParameter("@sowing_start_date", searchViewModel.SowingStartDate));
                    if (searchViewModel.SowingEndDate != null) command.Parameters.Add(new SqlParameter("@sowing_end_date", searchViewModel.SowingEndDate));
                    if (searchViewModel.HarvestStartDate != null) command.Parameters.Add(new SqlParameter("@harvest_start_date", searchViewModel.HarvestStartDate));
                    if (searchViewModel.HarvestEndDate != null) command.Parameters.Add(new SqlParameter("@harvest_end_date", searchViewModel.HarvestEndDate));
                    if (searchViewModel.FarmSizeStart != 0) command.Parameters.Add(new SqlParameter("@farm_size_start", searchViewModel.FarmSizeStart));
                    if (searchViewModel.FarmSizeEnd != 0) command.Parameters.Add(new SqlParameter("@farm_size_end", searchViewModel.FarmSizeEnd));
                    if (searchViewModel.FarmState != null) command.Parameters.Add(new SqlParameter("@farm_state", searchViewModel.FarmState.Trim()));
                    if (searchViewModel.Village != 0) command.Parameters.Add(new SqlParameter("@village", searchViewModel.Village));
                }
                // Open the connection in a try/catch block.
                // Create and execute the DataReader, writing the result
                // set to the console window.
                try
                {
                    connection.Open();
                    command.CommandType = CommandType.StoredProcedure;
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        pageItems.Add(new PageItems
                        {
                            Region = reader[0].ToString(),
                            NationalId = reader[1].ToString(),
                            FirstName = reader[2].ToString(),
                            LastName = reader[3].ToString(),
                            Country = reader[4].ToString(),
                            CropType = reader[5].ToString(),
                            SowingDate = !string.Equals(reader[6].ToString(), string.Empty) ? DateTime.Parse(reader[6].ToString()) : (DateTime?)null,
                            HarvestDate = !string.Equals(reader[7].ToString(), string.Empty) ? DateTime.Parse(reader[7].ToString()) : (DateTime?)null,
                            FarmSize = !string.Equals(reader[8].ToString(), string.Empty) ? int.Parse(reader[8].ToString()) : (int?)null,
                            FarmState = reader[9].ToString(),
                            FarmRanking = !string.Equals(reader[10].ToString(), string.Empty) ? int.Parse(reader[10].ToString()) : (int?)null,
                            Village = reader[11].ToString(),
                            Email = reader[12].ToString(),
                        });
                    }

                    reader.Close();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

            return pageItems;
        }
    }
}
