# Docker Compose trainning

Looking for better understanding on what docker-compone means for local developement.

Here, it's a basic setup using workpress (i'm noob on this tech) (BUT my goal is learn a bit more of docker)

#### Tech
- [docker](https://www.docker.com/get-started)
- [wordpress:5.7.1](https://hub.docker.com/_/wordpress)
- [mysql:5.7](https://hub.docker.com/_/mysql)
- [phpmyadmin](https://hub.docker.com/_/phpmyadmin)

##### Required install
- [docker](https://www.docker.com/get-started)

#### Init
Create the `.env` by running this command
```bash
  make init
```
This will have the environment variables will use to configure wordpress, mysql and phpmyadmin

#### Run the environment
Now, let up everything 
```bash
  make up
```

Before startm, phpmyadmin needs to set up something on its end, when login

Go to the PhpMyAdmin [http://localhost:8001](http://localhost:8001)
- `Username`: wordpress
- `Password`: wordpress

Then go to webpage [http://localhost:8000](http://localhost:8000)


#### Stop the environment
```bash
make down
```

#### Burn it all
This will remove the containers and the volumns which means delete all data

```bash
make burn-it
```

#### Files

When you start you run the project; the `wp-content` is created and all the files you need to start development in wordpress. 
(If you required all file wordpress provides; adjust the `docker-compone.yaml`; in the wordpress container change the `volumes`)

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

#### Started Docs

- Docker compone [here](https://docs.docker.com/compose/)
- Oficial wordpress docs [here](https://docs.docker.com/compose/wordpress/)
- Set up docker-componse [here](https://pawelgrzybek.com/configure-a-local-wordpress-development-using-docker/)

