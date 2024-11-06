using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class ControllerModel
    {
        public int ControllerId { get; set; }
        public string ControllerFName { get; set; }
        public string ControllerLName { get; set; }
        public int AreaId_fk { get; set; }

    }
}
