using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class ProducerProductionCategoryAreaModel
    {
        public int AreaId { get; set; }
        public string AreaName { get; set; }
        public int AreaCode { get; set; }
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public int ProducerId { get; set; }
        public string FName { get; set; }
        public string LName { get; set; }
        public int ProductionId_fk { get; set; }
        public int AreaId_fk { get; set; }
        public int ProductionId { get; set; }
        public string TypeOfProduction { get; set; }
        public int CategoryId_fk { get; set; }

    }
}
