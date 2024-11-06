using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class QuestionsModel
    {
        public string FName { get; set; }
        public string LName { get; set; }
        public int QuestionsId { get; set; }
        public string Question { get; set; }
        public int ProductionPrimary { get; set; }
        public int ProductionSecondary { get; set; }
        public int ProductionTertiary { get; set; }
        public int ProductionId { get; set; }
        public string TypeOfProduction { get; set; }
        public int CategoryId_fk { get; set; }
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }

    }
}
