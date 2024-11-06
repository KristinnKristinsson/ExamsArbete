using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class ProducerModel
    {
        public int ProducerId { get; set; }
        public string FName { get; set; }
        public string LName { get; set; }
        public int ProductionId_fk { get; set; }
        public int AreaId_fk { get; set; }

    }
}
