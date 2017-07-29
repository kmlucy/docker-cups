# docker-cups

To run:
```
docker run \
	--name cups -p 631:631 \
	-v /opt/cups/config:/etc/cups \
	-v /opt/cups/log:/var/log/cups \
	-v /opt/cups/spool:/var/spool/cups \
	-v /opt/cups/cache:/var/cache/cups \
	-e 'CUPS_USER=username' -e 'CUPS_PASS=password' \
	kmlucy/docker-cups
```

First run:
1. Create your config folder: `mkdir -p /opt/cups/{config,log,spool,cache}`
2. Run the container without extra options: `docker run -d --rm --name cups kmlucy/docker-cups`
3. Copy out the files needed: `docker cp -a cups:/etc/cups/. /opt/cups/config/`
4. Repeat this for each volume mount
5. Stop the container: `docker stop cups`
6. Run the container with the full command shown above

Based on: [aadl/docker-cups](https://github.com/aadl/docker-cups/tree/master/2.2.1)
