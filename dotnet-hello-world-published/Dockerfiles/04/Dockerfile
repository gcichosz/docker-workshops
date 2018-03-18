# Pick a base image
FROM microsoft/aspnetcore:2.0.5-stretch
# Change working directory (creates it if absent)
WORKDIR published
# Copy everything from the context to the current working directory
COPY . .
# Command executed on image run command (format: [command, arguments])
ENTRYPOINT [ "dotnet", "dotnet-hello-world.dll" ]