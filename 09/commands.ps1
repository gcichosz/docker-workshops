docker build --rm -t gcichosz/dotnet-hello-world:0.9 -f .\dotnet-hello-world-code\Dockerfiles\08\Dockerfile .\dotnet-hello-world-code\

docker push gcichosz/dotnet-hello-world:0.9
docker login
docker push gcichosz/dotnet-hello-world:0.9

docker images
docker rmi gcichosz/dotnet-hello-world:0.9
docker images
docker run --rm -it -p 8000:80 gcichosz/dotnet-hello-world:0.9
