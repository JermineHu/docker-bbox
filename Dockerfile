FROM scratch
COPY init-bin.sh init-bin.sh
COPY --from=busybox /bin/busybox /bin/busybox
RUN ["busybox" ,"sh","/init-bin.sh"]
CMD ["sh"]
