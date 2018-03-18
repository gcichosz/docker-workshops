# Build stage
# Pick a base image and tag it for build process
FROM microsoft/aspnetcore-build:2.0.5-2.1.4-stretch AS builder
# Change working directory (creates it if absent)
WORKDIR /source
# Copy csproj files from the context to the current working directory
COPY *.csproj .
# Run a command during build
RUN dotnet restore
# Copy everything from the context to the current working directory
COPY . .
# Run a command during build
RUN dotnet publish --output /app/ --configuration Release

# Run stage
# Pick a base image
FROM microsoft/aspnetcore
# Change working directory (creates it if absent)
WORKDIR /app
# Copy everything from the /app folder of intermediate image named 'builder' to the current working directory
COPY --from=builder /app .
# Command executed on image run command (format: [command, arguments])
ENTRYPOINT ["dotnet", "dotnet-hello-world.dll"]