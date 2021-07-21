## Start from a golang/alpine base image
FROM golang:1.16.6-alpine3.14

## We create an /app directory within our image that will hold our application source files
RUN mkdir /app

## We copy everything in the root directory into our /app directory
ADD . /app

## We specify that we now wish to execute any further commands inside our /app directory
WORKDIR /app

## We run go build to compile the binary executable of our Go program
RUN go mod init hello-world
RUN go build -o main .

## Expose port 8080
EXPOSE 8080

## Our start command which kicks off our newly created binary executable
CMD ["/app/main"]