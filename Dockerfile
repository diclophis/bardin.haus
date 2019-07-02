# layer 1 is linux-box stuff
FROM wkndr:latest as wkndr

# layer 2 is minimal
FROM scratch
COPY --from=wkndr /var/lib/wkndr/release/wkndr.mruby /var/lib/wkndr/release/wkndr.mruby
COPY --from=wkndr /lib/* /lib/
COPY --from=wkndr /lib64/* /lib64/
COPY --from=wkndr /usr/lib/* /usr/lib/

COPY Wkndrfile /var/lib/wkndr/

COPY public/* /var/lib/wkndr/public/

WORKDIR /var/lib/wkndr

CMD ["/var/lib/wkndr/release/wkndr.mruby", "server", "/var/lib/wkndr/public"]
