test -d file-exchange || mkdir file-exchange
docker build -t rt .
docker rm -vf rt
docker run --name rt -ti -v /sys/fs/cgroup:/sys/fs/cgroup:ro -d --privileged  rt /usr/sbin/init
docker exec -ti rt bash
