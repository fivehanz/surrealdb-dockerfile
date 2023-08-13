FROM busybox:stable-uclibc as busybox
FROM surrealdb/surrealdb:latest
COPY --from=busybox /bin/sh /bin/sh

EXPOSE 8000

ENV LOG_LEVEL=debug
ENV ROOT_USERNAME=root
ENV ROOT_PASSWORD=root
ENV DATABASE_PATH=/data/mydb.db

ENTRYPOINT /surreal start --log $LOG_LEVEL --user $ROOT_USERNAME --pass $ROOT_PASSWORD file:$DATABASE_PATH

# docker run --rm -p 8000:8000 -v /Users/hanz/Projects/surrealdb-dockerfile:/data --env "DATABASE_PATH=/data/mydb.db" surrealdb-svc
