# Sprawozdanie Zadanie 1

### Zbudowanie obrazu kontenera

```
docker build -t zadanie1-apka .
```

### Uruchomienie kontenera na podstawie zbudowanego obrazu

```
 docker run -d -p 8081:8080 --name pogodowka-container zadanie1-apka
```

### Sposób uzyskania logów, które wygenerowała aplikacja

```
docker logs pogodowka-container
```

### Sprawdzenie warstw zbudowanego obrazu oraz jego rozmiaru

```
docker images zadanie1-apka
```
