FROM busybox
ADD https://www.busybox.net/downloads/binaries/1.28.1-defconfig-multiarch/busybox-x86_64 /tmp/busybox
RUN chmod +x /tmp/busybox
FROM scratch
COPY init-bin.sh init-bin.sh
RUN chmod +x init-bin.sh
COPY --from=0 /tmp/busybox /bin/busybox
RUN ["busybox" ,"sh","/init-bin.sh"]
CMD ["sh"]
