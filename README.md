# WordPress local environment with Docker

Looking for a better understanding of what docker-compone means for local development.

Here, it's a basic setup using WordPress (I'm a noob on this tech) (BUT my goal is to learn a bit more about docker)

#### Tech
- [docker](https://www.docker.com/get-started)
- [wordpress:5.7.1](https://hub.docker.com/_/wordpress)
- [mysql:5.7](https://hub.docker.com/_/mysql)
- [phpmyadmin](https://hub.docker.com/_/phpmyadmin)

#### Docs that helps

- Docker compone [here](https://docs.docker.com/compose/)
- Oficial wordpress docs [here](https://docs.docker.com/compose/wordpress/)
- Set up docker-componse [here](https://pawelgrzybek.com/configure-a-local-wordpress-development-using-docker/)

##### Required install
- [docker](https://www.docker.com/get-started)

### Let's start
####  Fist - run:
```bash
  make init
```
The command will create the `.env` which has the environment variables will use to configure WordPress, MySQL and PHPMyAdmin

#### Raise all containers
```bash
  make up
```

Go to [http://localhost:8000/](http://localhost:8000/)

#### PhpMyAdmin

This will help you to have a closer look at the database

Go to [http://localhost:8001](http://localhost:8001)

- `Username`: wordpress
- `Password`: wordpress

#### Stop the environment
```bash
make stop
```

#### Burn it all
This will remove the containers and the volumes which means delete all data

```bash
make down
```

### Files Structure

Our code folder `wp-content`!!  

_Note_: `wp-content` is ignored by default! Go to `.gitignore` and remove that line to start tracking your changes!

```
.
└── wordpress/
    ├── docs/
    ├── wp-content/
    ├── README.md
    ├── docker-compose.yaml
    ├── init.env.sh
    └── Makefile
```
[Tree.Tool](https://tree.nathanfriend.io/?s=(%27options!(%27fancy!true~fullPath!false~trailingSlash!true)~0(%270%27wordpress4s3wp-content3README.md4ker-compose.yaml*init.env.sh*Makefile2%27)~version!%271%27)*2%20%200source!2%5Cn3%2F*4*doc%014320*)
