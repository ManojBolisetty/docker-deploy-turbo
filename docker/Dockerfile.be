FROM  oven/bun:1

RUN apt-get update -y && apt-get install -y openssl

WORKDIR /app

COPY . .

RUN bun install 

RUN bun run db:generate

EXPOSE 8080

CMD ["bun", "start:backend"]
