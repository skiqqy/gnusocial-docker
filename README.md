# gnusocial-docker
Docker image for hosting a gnu social Instance

## Building
```
$ sudo docker build -t "gnus:latest" .
```

## Once built
// Currently there is an issue with the db init, hence the need for the following
Inside the image run the following (changing "social" to something more secure",
```
$ echo "CREATE DATABASE social;" | mariadb
$ echo "GRANT ALL on social.* TO 'social'@'localhost' IDENTIFIED BY 'social';" | mariadb
```

## Installing

Once the above is done, if you have the container exposed to port 90, then go to
`http://localhost:90/install.php` and follow the instructions.
