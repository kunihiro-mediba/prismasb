import { PrismaClient } from "./prisma";

async function main() {
    const client = new PrismaClient();

    const users = await client.user.findMany();
    console.log("users", users);

    const user = client.user.findUnique({
        where: { id: 1 },
    });
    const posts = await user.Post({
        orderBy: { id: "desc" },
    });
    console.log("user[id=1] posts", posts);
}

main();
