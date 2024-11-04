# Membuat Docker image dari Dockerfile yang telah dibuat, dengan nama image karsajobs, dan tag latest
docker build -t karsajobs:latest .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag karsajobs:latest ghcr.io/nandartika/karsajobs:latest

# Login ke GitHub Packages
echo $PASSWORD_DOCKER_HUB | docker login ghcr.io -u nandartika --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/nandartika/karsajobs:latest
