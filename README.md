# Barabbas
Minimal database implementation of EN15907.

**Schema diagram.**

![](EN15907.drawio.svg)

**Deploy system.**

```sh
docker compose up -d
```

Container `barabbas-db` should be visible after running `docker ps`.


**Insert test dataset.**

```sh
cat insert.sql | docker exec -i barabbas-db mysql -u root -ptestpass barabbas
```