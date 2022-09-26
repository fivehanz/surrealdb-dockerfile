FROM surrealdb/surrealdb:latest

EXPOSE 8000

ENV LOG_LEVEL=trace
ENV ROOT_USERNAME=root
ENV ROOT_PASSWORD=root

ENTRYPOINT ["/surreal", "start", "--log", "${LOG_LEVEL}", "--user", "${ROOT_USERNAME}", "--pass", "${ROOT_PASSWORD}"]
