using System;
using System.Collections.Generic;
using System.Text;
using RicultExercise.ViewModels;

namespace RicultExercise.Util
{
    public class PagedListParameters
    {
        public IList<Order> PageItems { get; set; } = new List<Order>();

        public Page Page { get; set; } = new Page();
    }

    public class Page
    {
        public int Index { get; set; }

        public short Size { get; set; }
    }
}
