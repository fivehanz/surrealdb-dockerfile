FROM surrealdb/surrealdb:latest

EXPOSE 8000

ENTRYPOINT ["/surreal", "start", "--log", "trace", "--user", "root", "--pass", "root"]
