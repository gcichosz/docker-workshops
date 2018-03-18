docker build .
docker build -f .\Dockerfiles\04\Dockerfile .
docker build -t dotnet-hello-world:0.4 -f .\Dockerfiles\04\Dockerfile .
docker build --rm -t dotnet-hello-world:0.4 -f .\Dockerfiles\04\Dockerfile .
docker build --rm -t dotnet-hello-world:0.4 -f .\dotnet-hello-world-published\Dockerfiles\04\Dockerfile .\dotnet-hello-world-published\

docker run -p 8000:80 dotnet-hello-world:0.4