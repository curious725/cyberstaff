# README
To setup rpoject run(inside project dir):
```
bin/setup
```

To start project run:
```
sudo docker-compose up
```


In case of "pids" error, run in project dir this cmd:
```
rm -rf tmp/pids/*
```

In case of errors related to webpacker run these commands:
```
docker-compose run web bundle exec rails webpacker:install
docker-compose run web bundle exec rails webpacker:install:react
docker-compose run web bundle exec rails webpacker:compile
```
