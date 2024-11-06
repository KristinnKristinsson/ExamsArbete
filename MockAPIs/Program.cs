
using DataAccess.DbAccess;
using MockAPIs;
using System.Net;
using System.Net.Http.Headers;
using System.Text;


var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddSingleton<ISQLDataAccess, SQLDataAccess>();
builder.Services.AddSingleton<IUserData, UserData>();



var app = builder.Build();

// Configure the HTTP request pipeline.
//if (app.Environment.IsDevelopment())
//{
//    app.UseSwagger();

//    app.UseSwaggerUI();
//}

app.UseSwaggerAuthorized();
app.UseSwagger();
app.UseSwaggerUI(config =>
{
    config.ConfigObject.AdditionalItems["syntaxHighlight"] = new Dictionary<string, object>
    {
        ["activated"] = false
    };
});
app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "SecureSwagger v1"));

app.UseHttpsRedirection();

app.ConfigureApi();

app.Run();





internal record WeatherForecast(DateTime Date, int TemperatureC, string? Summary)
{
    public int TemperatureF => 32 + (int)(TemperatureC / 0.5556);
}