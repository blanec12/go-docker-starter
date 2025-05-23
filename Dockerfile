FROM golang:1.21-alpine

RUN go install github.com/cosmtrek/air@v1.40.4

WORKDIR /app

COPY . .

CMD ["air", "-c", ".air.toml"]
