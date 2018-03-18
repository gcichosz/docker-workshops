docker run microsoft/aspnetcore:2.0.5-stretch
docker run -it microsoft/aspnetcore:2.0.5-stretch /bin/bash
docker run --rm -it microsoft/aspnetcore:2.0.5-stretch /bin/bash
docker run --rm -it microsoft/aspnetcore:2.0.5-stretch
docker run --rm -it -v <path_to_published_app>:/published microsoft/aspnetcore:2.0.5-stretch
docker run --rm -it -v <path_to_published_app>:/published --workdir /published microsoft/aspnetcore:2.0.5-stretch
docker run --rm -it -v <path_to_published_app>:/published --workdir /published -p 8000:80 microsoft/aspnetcore:2.0.5-stretch