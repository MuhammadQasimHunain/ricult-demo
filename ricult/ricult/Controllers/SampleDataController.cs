using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using RicultApplication;
using RicultExercise.ViewModels;

namespace ricult.Controllers
{
    [Route("api/[controller]")]
    public class DataController : Controller
    {
        private IConfiguration _config;

        public DataController(IConfiguration iConfiguration)
        {
            _config = iConfiguration;
        }

        [HttpGet("[action]")]
        public IEnumerable<PageItems> GetItems()
        {
            return new SearchResultApplication(_config).GetPageItems();
        }

        [HttpPost("[action]")]
        public IEnumerable<PageItems> GetItemPost([FromBody]SearchViewModel model)
        {
            return new SearchResultApplication(_config).GetPageItems(model);
        }
        
    }
}
