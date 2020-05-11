using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using RicultApplication;
using RicultExercise.ViewModels;

namespace ricult.Controllers
{
    [Route("api/[controller]")]
    public class DataController : Controller
    {
        [HttpGet("[action]")]
        public IEnumerable<PageItems> GetItems()
        {
            return SearchResultApplication.GetPageItems();
        }

        [HttpPost("[action]")]
        public IEnumerable<PageItems> GetItemPost([FromBody]SearchViewModel model)
        {
            return SearchResultApplication.GetPageItems(model);
        }
        
    }
}
