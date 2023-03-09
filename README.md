# Docker

### Run

Run Docker:

```bash
docker run <image>
```

Run Docker with additional parameter:

```bash
docker run <image> <command>
```

Example of **Run Docker with additional parameter**:

```bash
docker run busybox ls

# or

docker run busybox echo hi there
```

---

### Containers

List all of running containers:

```bash
docker ps
```

List all of containers that created:

```bash
docker ps --all
```

Create a container:

```bash
docker create <image>
```

Start a container:

```bash
# NOTE: container-id came from 'docker create <image>' command

# ----

# start a container with output
docker start -a <container-id>

# start a container without output (only return the id of the container)
docker start <container-id>
```

⚠️ **Clear all containers:**

```bash
docker system prune
```

Get output logs from a container:

```bash
docker logs <container-id>
```

Stop a container:

```bash
docker stop <container-id>
```

Kill a container:

```bash
docker kill <container-id>
```

Run additional command inside running container:

```bash
docker exec -it <container-id> <command>
```

Run additional command inside running container (common way):

```bash
docker exec -it <container-id> sh
```

---

## Dockerfile

Build a Dockerfile:

```bash
docker build <path-of-Dockerfile>
```

**_Note: every time you change Dockerfile, you need to re-build!_**

Build a Dockerfile with tag:

```bash
docker build -t <your-docker-id>/<repository-name> .
```

Copy local file to the Docker environment / container:

```docker
COPY <your-machine-path> <container-path>
```

---

## Port Forwarding

Port forward a container:

```bash
docker run -p <local-port>:<port-inside-container> <image-name>
```
