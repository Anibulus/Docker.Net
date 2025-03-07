var builder = WebApplication.CreateBuilder(args);
builder.WebHost.ConfigureKestrel(serverOption =>  {
    serverOption.Listen(System.Net.IPAddress.Any, 8080);
});
var app = builder.Build();

app.MapGet("/", () => "Hello World!");

app.Run();
