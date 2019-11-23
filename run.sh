docker build -t my-nginx .
docker run --rm --name some-nginx -d -p 8080:80 my-nginx
# docker exec -d some-nginx "cat /etc/nginx/nginx.conf"
docker exec -d some-nginx "cat /etc/nginx/conf.d/default.conf"
# docker exec -it some-nginx bash
curl http://localhost:8080
siege --concurrent=10 --reps=10 --benchmark --no-parser 'http://localhost:8080'
docker kill some-nginx

# docker run --rm --name some-nginx -d -p 8080:80 my-nginx && docker exec -it some-nginx bash && docker kill some-nginx