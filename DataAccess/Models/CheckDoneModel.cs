using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class CheckDoneModel
    {
        public int CheckId { get; set; }
        public string DateOfCheck { get; set; }
        public int CheckProducerId_fk { get; set; }

    }
}
