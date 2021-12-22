# Docker_nodejs-express_webapp
Creating a nodejs application docker container with express.

## About nodejs express
Express is a minimal and flexible Node.js web application framework that provides a robust set of features to develop web and mobile applications. It facilitates the rapid development of Node based Web applications

----

```
$ docker-compose up -d
Creating network "nodejs-express_node-net" with the default driver
Pulling node (jisjo/nodejs_express_webapp:latest)...
v1: Pulling from jisjo/nodejs_express_webapp
97518928ae5f: Pull complete
a2af70dcde7d: Pull complete
80e05fd95fdd: Pull complete
1391c8a04394: Pull complete
60a5a81a269b: Pull complete
70e3f13d3bff: Pull complete
3c3df69befb8: Pull complete
65859b17c0c6: Pull complete
Digest: sha256:11f3636cf58a8b9fc68cb8f5efa80bd45fef23801cc065124ff55c54f61fab1b
Status: Downloaded newer image for jisjo/nodejs_express_webapp:v1
Creating node ... done
```

```
$ docker container ps
CONTAINER ID   IMAGE                            COMMAND            CREATED              STATUS              PORTS                                   NAMES
df4586f96bb8   jisjo/nodejs_express_webapp:v1   "node server.js"   About a minute ago   Up About a minute   0.0.0.0:80->8080/tcp, :::80->8080/tcp   node
```

> Test URL : http://<host_ip_addr>

![SCREENSHOT-NODEJS-EXPRESS](https://github.com/Jisjo/Docker_nodejs-express_webapp/blob/main/Screenshot.png)

```
$ curl -i localhost
HTTP/1.1 200 OK
X-Powered-By: Express
Content-Type: text/html; charset=utf-8
Content-Length: 70
ETag: W/"46-hZ7zYXiNeJG/XJoqKzh9vPTGmYs"
Date: Wed, 22 Dec 2021 05:04:48 GMT
Connection: keep-alive
Keep-Alive: timeout=5

<h1><center>This is a nodejs-express Hello World program</center></h1>
```

```
$ docker-compose down -v
Stopping node ... done
Removing node ... done
Removing network day-7-nodejs-express_node-net
```
