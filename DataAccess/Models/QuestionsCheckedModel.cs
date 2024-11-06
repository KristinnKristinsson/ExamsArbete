using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class QuestionsCheckedModel
    {
        public int QuestionsCheckedId { get; set; }
        public int CheckDone_fk { get; set; }
        public bool IsDone { get; set; }
    }
}
