namespace MockAPIs
{
    public static class Api
    {
        public static void ConfigureApi(this WebApplication app)
        {
            //All of my API endpoint mapping
            app.MapGet(pattern: "/producers", GetProducers);
            app.MapGet(pattern: "/producers/{id}", GetProducer);
            app.MapGet(pattern: "/producers/production/{id}", GetProducerProductionCategoryArea);
            app.MapGet(pattern: "/Questions", GetQuestions);
            app.MapGet(pattern: "/Checklist/{id}", GetChecklist);
            app.MapGet(pattern: "/GetExtraInformation/{id}", GetExtraInfo);
            app.MapPost(pattern: "/CheckDone", InsertCheck);
            app.MapGet(pattern: "/GetChecks", GetChecks);
        }

        private static async Task<IResult> GetProducers(IUserData data)
        {
            try
            {
                return Results.Ok(await data.GetProducers());
            }
            catch (Exception ex)
            {

                return Results.Problem(ex.Message);
            }
        }
        private static async Task<IResult> GetProducer(int id, IUserData data)
        {
            try
            {
                var results = await data.GetProducer(id);
                if (results == null) return Results.NotFound();
                return Results.Ok(results);

            }
            catch (Exception ex)
            {

                return Results.Problem(ex.Message);
            }
        }
        private static async Task<IResult> GetProducerProductionCategoryArea(int id, IUserData data)
        {
            try
            {
                var results = await data.GetProducerProductionCategoryArea(id);
                if (results == null) return Results.NotFound();
                return Results.Ok(results);

            }
            catch (Exception ex)
            {

                return Results.Problem(ex.Message);
            }
        }
        private static async Task<IResult> GetChecklist(int id, IUserData data)
        {
            try
            {
                var results = await data.GetChecklist(id);
                if (results == null) return Results.NotFound();
                return Results.Ok(results);

            }
            catch (Exception ex)
            {

                return Results.Problem(ex.Message);
            }
        }
        private static async Task<IResult> GetQuestions(IUserData data)
        {
            try
            {
                return Results.Ok(await data.GetQuestions());
            }
            catch (Exception ex)
            {

                return Results.Problem(ex.Message);
            }
        }
        private static async Task<IResult> GetExtraInfo(int id, IUserData data)
        {
            try
            {
                var results = await data.GetExtraInfo(id);
                if (results == null) return Results.NotFound();
                return Results.Ok(results);

            }
            catch (Exception ex)
            {

                return Results.Problem(ex.Message);
            }
        }
        private static async Task<IResult> InsertCheck(CheckDoneModel check, IUserData data)
        {
            try
            {
                await data.InsertCheck(check);
                return Results.Ok();

            }
            catch (Exception ex)
            {

                return Results.Problem(ex.Message);
            }
        }
        private static async Task<IResult> GetChecks(IUserData data)
        {
            try
            {
                return Results.Ok(await data.GetChecks());
            }
            catch (Exception ex)
            {

                return Results.Problem(ex.Message);
            }
        }
    }
}
