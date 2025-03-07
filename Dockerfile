FROM mcr.microsoft.com/dotnet/sdk:8.0 as build
WORKDIR /app

#Docker caché: Cuando se copia el archivo .csproj al contenedor y se ejecuta dotnet restore, Docker solo lo volverá a ejecutar si el archivo .csproj cambia. Si no cambia, Docker reutiliza la capa cacheada que ya contiene las dependencias restauradas.
COPY *.csproj ./
COPY *.sln ./
RUN dotnet restore

COPY . .
RUN dotnet publish -c Release -o ./publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0 as runtime
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "Docker.Net.dll"]