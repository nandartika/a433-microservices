# Membuat Docker image dari Dockerfile yang telah dibuat, dengan nama image karsajobs-ui, dan tag latest
docker build -t karsajobs-ui:latest .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag karsajobs-ui:latest ghcr.io/nandartika/karsajobs-ui:latest

# Login ke GitHub Packages
echo $PASSWORD_DOCKER_HUB | docker login ghcr.io -u nandartika --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/nandartika/karsajobs-ui:latest
