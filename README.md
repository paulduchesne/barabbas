# Barabbas
Minimal database implementation of EN15907.

![](EN15907.drawio.svg)

**Deploy**

```sh
./build.sh
```

Containers should be visible by running `docker ps`.

**Test dataset**

```sh
cat insert.sql | docker exec -i barabbas-db mysql -u root -ptestpass barabbas
```
