# Docker.Net


Download sdk and aspnet images

https://learn.microsoft.com/es-es/dotnet/architecture/microservices/net-core-net-framework-containers/official-net-docker-images



https://github.com/dotnet/dotnet-docker

```cs
builder.WebHost.ConfigureKestrel(serverOption =>  {
    serverOption.Listen(System.Net.IPAddress.Any, 8080);
});
```

```bash
docker compose up -d
```