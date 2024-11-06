using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class ProductionModel
    {
        public int ProductionId { get; set; }
        public string TypeOfProduction { get; set; }
        public int CategoryId_fk { get; set; }
    }
}
