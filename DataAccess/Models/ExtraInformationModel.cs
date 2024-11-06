using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class ExtraInformationModel
    {
        public int ExtraInformationId { get; set; }
        public string ExtraInfo { get; set; }
        public string Tips { get; set; }
        public int ProductionId_fk2 { get; set; }
        public int QuestionId_fk { get; set; }
    }
}
