Build Docker image:
docker build -t spring-mvc-image .

Run the container:
docker run -d -p 8080:8080 --name spring-mvc-container spring-mvc-image

Access in browser:
http://localhost:8080/

