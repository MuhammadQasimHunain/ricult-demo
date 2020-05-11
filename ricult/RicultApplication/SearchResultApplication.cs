using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Extensions.Configuration;
using RicultExercise.Util;
using RicultExercise.ViewModels;

namespace RicultApplication
{
    public class SearchResultApplication
    {
        private IConfiguration _config;

        public SearchResultApplication(IConfiguration iConfiguration)
        {
            _config = iConfiguration;
        }

        public List<PageItems> GetPageItems()
        {
            return new DataClass(_config).GetPagedList();
        }

        public List<PageItems> GetPageItems(SearchViewModel model)
        {
            return new DataClass(_config).GetPagedList(model);
        }
    }
}
