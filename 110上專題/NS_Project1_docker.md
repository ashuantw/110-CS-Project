# Deploy ELK on Ubuntu VM

## Increase Virtual memory limit
ELK stack requires a large amount of virtual memory to work. 
Here we recommend increasing the virtual memory limit to 262144.

```bash
echo "vm.max_map_count=262144" > /etc/sysctl.conf
sysctl -p
```

## Deploy
Make sure you have already installed docker and docker-compose.
Then, execute the following commands to deploy the ELK stack.

```bash
cd elastic
docker-compose up -d
```

The `-d` parameter makes the i/o detached from the terminal.
If you encounter any problems, you can stop those containers and run without `-d` to see the debugging information.

```bash
docker-compose down
docker-compose up
```
