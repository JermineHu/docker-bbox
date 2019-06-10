FROM scratch
COPY init-bin.sh init-bin.sh
COPY busybox /bin/busybox
COPY ld-musl-x86_64.so.1 /lib/ld-musl-x86_64.so.1
RUN ["busybox" ,"sh","/init-bin.sh"]
CMD ["sh"]
