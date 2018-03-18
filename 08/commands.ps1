docker build --rm -t dotnet-hello-world:0.8 -f .\dotnet-hello-world-code\Dockerfiles\08\Dockerfile .\dotnet-hello-world-code\

docker run --rm -it -p 8000:80 dotnet-hello-world:0.8