docker build -t my-nginx .
docker run --rm --name some-nginx -d -p 8080:80 my-nginx
docker exec -it some-nginx bash
docker kill some-nginx
