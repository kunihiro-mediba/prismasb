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

## update schema

```sh
# start database
docker compose up -d

# generate model from database
npx prisma db pull
```

## generate code (node_modules/.prisma/client)

```sh
npx prisma generate
```

## start

```sh
docker compose up -d

npx ts-node src/main.ts
```
