# Pick a base image
FROM microsoft/aspnetcore-build:2.0.5-2.1.4-stretch
# Change working directory (creates it if absent)
WORKDIR /source
# Copy everything from the context to the current working directory
COPY . .
# Run a command during build
RUN dotnet restore
# Run a command during build
RUN dotnet publish --output /app/ --configuration Release
# Command executed on image run command (format: [command, arguments])
ENTRYPOINT [ "/bin/bash" ]