# Use official Golang image
FROM golang:1.21-alpine

# Set working directory
WORKDIR /app

# Copy go files
COPY . .

# Build the Go app
RUN go build -o main .

# Expose port
EXPOSE 8080

# Run app
CMD ["./main"]
