using DataAccess.DbAccess;
using DataAccess.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Data
{
    public class UserData : IUserData
    {
        private readonly ISQLDataAccess _db;


        public UserData(ISQLDataAccess db)
        {
            _db = db;
        }

        public Task<IEnumerable<ProducerModel>> GetProducers() =>
            _db.LoadData<ProducerModel, dynamic>(storedProcedure: "dbo.GetAllProducers", new { });

        public async Task<ProducerModel?> GetProducer(int Id)
        {
            var results = await _db.LoadData<ProducerModel, dynamic>(
                storedProcedure: "dbo.GetProducer",
                new { ProducerId = Id });
            return results.FirstOrDefault();
        }

        public async Task<ProducerProductionCategoryAreaModel?>
            GetProducerProductionCategoryArea(int Id)
        {
            var results = await _db.LoadData<ProducerProductionCategoryAreaModel, dynamic>(
                storedProcedure: "dbo.GetProducerProductionCategoryArea",
                new { ProducerId = Id });
            return results.FirstOrDefault();
        }

        public async Task<IEnumerable<QuestionsModel?>>
            GetChecklist(int Id)
        {
            
            var results = await _db.LoadData<QuestionsModel, dynamic>(
                storedProcedure: "dbo.GetQuestions",
                new { ProducerId = Id });
            return results;
        }
        public Task<IEnumerable<QuestionsModel>> GetQuestions () =>
             _db.LoadData<QuestionsModel, dynamic>(storedProcedure: "dbo.GetQuestions_1", new { });

        public async Task<IEnumerable<ExtraInformationModel?>>
            GetExtraInfo(int Id)
        {
            
            var results = await _db.LoadData<ExtraInformationModel, dynamic>(
                storedProcedure: "dbo.GetExtraInformation",
                new { ProductionId = Id });
            return results;
        }

        public Task InsertCheck(CheckDoneModel check)
        {
            
            var results = _db.SaveData(
                storedProcedure: "dbo.InsertCheck", parameters: new { check.CheckProducerId_fk, check.DateOfCheck });
            return results;
        }
        public Task<IEnumerable<CheckDoneModel>> GetChecks() =>
           _db.LoadData<CheckDoneModel, dynamic>(storedProcedure: "dbo.GetChecks", new { });
    }

}
