using DataAccess.Models;

namespace DataAccess.Data
{
    public interface IUserData
    {
        Task<ProducerModel?> GetProducer(int Id);
        Task<ProducerProductionCategoryAreaModel?> GetProducerProductionCategoryArea(int Id);
        Task<IEnumerable<ProducerModel>> GetProducers();
        Task<IEnumerable<QuestionsModel?>> GetChecklist(int Id);
        Task<IEnumerable<QuestionsModel>> GetQuestions();
        Task<IEnumerable<ExtraInformationModel?>> GetExtraInfo(int Id);
        Task InsertCheck(CheckDoneModel check);
        Task<IEnumerable<CheckDoneModel>> GetChecks();
    }
}