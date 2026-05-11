# Sprawozdanie Zadanie 1

### Zbudowanie obrazu kontenera

```
docker build -t zadanie1-apka .
```

<img width="1174" height="677" alt="Code_ihDbglEnYM" src="https://github.com/user-attachments/assets/f35903e2-b7a3-4b3b-ac90-e9c1eed0baf3" />

### Uruchomienie kontenera na podstawie zbudowanego obrazu

```
 docker run -d -p 8081:8080 --name pogodowka-container zadanie1-apka
```

<img width="838" height="36" alt="brave_w8Vnfo7zLj" src="https://github.com/user-attachments/assets/43b9efb5-db1a-4c0f-a956-0aead5499322" />


### Sprawdzenie czy kontener się uruchomił

```
docker ps pogodowka-container
```

<img width="1274" height="51" alt="image" src="https://github.com/user-attachments/assets/d8b997c1-28f3-4409-97a5-ec3e37ef2903" />

### Sposób uzyskania logów, które wygenerowała aplikacja

```
docker logs pogodowka-container
```

<img width="588" height="68" alt="brave_G994lIWxMp" src="https://github.com/user-attachments/assets/8a232e58-6ef7-4dc8-aaa0-95dc5aff6056" />

### Sprawdzenie rozmiaru obrazu

```
docker images zadanie1-apka
```

<img width="569" height="73" alt="brave_TkcccQrir4" src="https://github.com/user-attachments/assets/19fde5ad-4403-40ef-a055-a905caf768dc" />

### Sprawdzenie warstw obrazu 

```
docker history zadanie1-apka
```

<img width="796" height="136" alt="image" src="https://github.com/user-attachments/assets/62f50bc7-fd5b-4c51-8c11-e3a40bbe9561" />
