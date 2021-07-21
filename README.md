# Golang Hello World 

### Build Docker Image
`docker build -t hello-world .`

### Run Docker Image
`docker run -dp 8080:8080 hello-world`
- Needs to be port 8080 since Go application listens on port 8080

### URL
http://localhost:8080/
