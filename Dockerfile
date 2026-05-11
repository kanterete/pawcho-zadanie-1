# ETAP 1: Builder 
FROM golang:1.22-alpine AS builder

# narzędzie UPX do ekstremalnej kompresji plików
RUN apk add --no-cache upx

WORKDIR /app
COPY main.go .
RUN go mod init weather-app

# 1. Standardowa kompilacja z flagami zrzucającymi wagę
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o weather-app .

# 2. Kompresujemy gotowy plik binarny algorytmem LZMA
RUN upx --best --lzma weather-app

# ETAP 2: Obraz produkcyjny 
FROM scratch
LABEL org.opencontainers.image.authors="Kacper Kantarowicz"

# Kopiowanie certyfikatów SSL 
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

# Kopiowanie pliku z buildera
COPY --from=builder /app/weather-app /weather-app

# Nasłuchiwanie
EXPOSE 8080

# Healthcheck
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD ["/weather-app", "-health"]

# Uruchomienie aplikacji
CMD ["/weather-app"]