# Membuat Docker image dari Dockerfile yang telah dibuat, dengan nama image item-app, dan tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/nandartika/item-app:v1

# Login ke GitHub Packages
echo $PASSWORD_DOCKER_HUB | docker login ghcr.io -u nandartika --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/nandartika/item-app:v1
