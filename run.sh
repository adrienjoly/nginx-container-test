docker build -t my-nginx .
docker run --rm --name some-nginx -d -p 8080:80 my-nginx
siege --concurrent=10 --reps=10 --benchmark --no-parser 'http://localhost:8080'
siege --concurrent=10 --reps=10 --benchmark --no-parser 'http://localhost:8080 POST coucou=1'
docker kill some-nginx
