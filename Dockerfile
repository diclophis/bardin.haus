# layer 1 is linux-box stuff
FROM wkndr:latest as wkndr

FROM scratch

COPY --from=wkndr /var/lib/wkndr/release/wkndr.mruby /var/lib/wkndr/release/wkndr.mruby

COPY Wkndrfile /var/lib/wkndr/

COPY public /var/lib/wkndr/public

WORKDIR /var/lib/wkndr
