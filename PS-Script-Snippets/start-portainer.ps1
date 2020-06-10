# run script .\start-portainer.ps1
# script assumes Windows Docker Desktop is already running
# script will open portainer in chrome, user will need to login

# uncomment command below to pull portainer from dockerhub
# docker pull portainer/portainer

# uncomment command below for persistent docker storage location and to run portainer
# docker run -d -p 9000:9000 -p 8000:8000 --name portainer --restart always -v \\.\pipe\docker_engine:\\.\pipe\docker_engine -v C:\ProgramData\Portainer:C:\data portainer/portainer

# uncomment below to run ssl version of docker https
# docker run -d -p 443:9000 -p 8000:8000 --name portainer --restart always -v ~/local-certs:/certs -v portainer_data:/data portainer/portainer --ssl --sslcert /certs/portainer.crt --sslkey /certs/portainer.key
# openssl genrsa -out portainer.key 2048
# openssl ecparam -genkey -name secp384r1 -out portainer.key
# openssl req -new -x509 -sha256 -key portainer.key -out portainer.crt -days 3650

clear
# list running docker processes
docker ps
sleep 5

clear
# start portainer
docker start portainer
docker ps
sleep 5

# start chrome, localpath port 9000
start-process -FilePath 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' -ArgumentList 'http://localhost:9000'
