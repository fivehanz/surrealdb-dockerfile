FROM busybox:stable-uclibc as busybox
FROM surrealdb/surrealdb:latest
COPY --from=busybox /bin/sh /bin/sh

EXPOSE 8000

ENV LOG_LEVEL=trace
ENV ROOT_USERNAME=root
ENV ROOT_PASSWORD=root

ENTRYPOINT /surreal start --log $LOG_LEVEL --user $ROOT_USERNAME --pass $ROOT_PASSWORD
