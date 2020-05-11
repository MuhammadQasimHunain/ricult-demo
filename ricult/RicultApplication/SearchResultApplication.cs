using System;
using System.Collections.Generic;
using System.Text;
using RicultExercise.Util;
using RicultExercise.ViewModels;

namespace RicultApplication
{
    public class SearchResultApplication
    {
        public static List<PageItems> GetPageItems()
        {
            return DataClass.GetPagedList();
        }

        public static List<PageItems> GetPageItems(SearchViewModel model)
        {
            return DataClass.GetPagedList(model);
        }
    }
}
