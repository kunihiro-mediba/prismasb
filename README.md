## setup project

### install dependencies

```sh
npm init -y
npm install @prisma/client
npm install --save-dev prisma ts-node typescript @types/node
```

### generate prisma/schema.prisma

```sh
npx prisma init --url mysql://user:pass@localhost:3306/dbname
```

generate `prisma/schema.prisma` and `.env`

## move and eidt schema

```sh
mv prisma src/
```

```diff
generator client {
    provider = "prisma-client-js"
+   output   = "."
}
```

## update schema

```sh
# start database
docker compose up -d

# generate model from database
npx prisma db pull --schema src/prisma/schema.prisma
```

## generate code (to ./src/prisma)

```sh
PRISMA_GENERATE_SKIP_AUTOINSTALL=1 npx prisma generate --schema src/prisma/schema.prisma
```

## start

```sh
docker compose up -d

npx ts-node src/main.ts
```
