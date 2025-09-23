FROM  oven/bun:1

WORKDIR /app

COPY . .

RUN bun install 

RUN bun run db:generate

EXPOSE 8081

CMD ["bun", "start:ws"]