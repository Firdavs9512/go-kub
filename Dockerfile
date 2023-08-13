# Use the official Go image as the base image
# FROM golang:1.16
FROM golang:alpine3.18

# Set the working directory inside the container
WORKDIR /app

# Copy the local code into the container
COPY . .

# Build the Go application
RUN go build -o main .

# Expose port 8080
EXPOSE 7070

# Command to run the application
CMD ["./main"]
