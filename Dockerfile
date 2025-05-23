FROM golang:1.23.4-alpine

RUN go install github.com/air-verse/air@latest

WORKDIR /app

COPY . .

CMD ["air", "-c", ".air.toml"]
